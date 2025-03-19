import requests
import mysql.connector
import random

# ✅ Auth Service: Fetch and insert 100 users
# ✅ Database connection settings (Docker)
DB_CONFIG = {
    "host": "127.0.0.1",
    "port": 3307,
    "database": "auth_db",
    "user": "root",
    "password": "",
    "charset": "utf8"
}

def connect_db():
    """Create a new database connection."""
    return mysql.connector.connect(**DB_CONFIG)

# ✅ Insert users into 'users'
try:
    conn = connect_db()
    cursor = conn.cursor()
    print("✅ Connected to MySQL in Docker!")

    # Fetch 100 random users
    response = requests.get("https://randomuser.me/api/?results=100").json()
    users = response.get("results", [])

    for user in users:
        email = user.get("email", "no-email@example.com")
        password_hash = None  # NULL for OAuth users
        oauth_provider = random.choice(["google", "facebook", "github", "local"])  # Random provider
        oauth_id = f"{oauth_provider}_{random.randint(100000, 999999)}" if oauth_provider != "local" else None
        email_verified = True if oauth_provider != "local" else False  # OAuth users have verified emails

        cursor.execute(
            "INSERT INTO users (email, password_hash, oauth_provider, oauth_id, email_verified) VALUES (%s, %s, %s, %s, %s)",
            (email, password_hash, oauth_provider, oauth_id, email_verified)
        )

    conn.commit()
    print("✅ Successfully inserted 100 users into 'users'!")

except mysql.connector.Error as err:
    print(f"❌ Database error: {err}")

except Exception as e:
    print(f"❌ Error: {e}")

finally:
    if cursor: cursor.close()
    if conn: conn.close()

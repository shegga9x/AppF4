import requests
import mysql.connector
import random

# ✅ User Service: Fetch and insert 100 users
# ✅ Database connection settings (Docker)
DB_CONFIG = {
    "host": "127.0.0.1",
    "port": 3307,  # Ensure this is correct for your MySQL server
    "database": "user_db",
    "user": "root",
    "password": "",
    "charset": "utf8"
}

def connect_db():
    """Create a new database connection."""
    return mysql.connector.connect(**DB_CONFIG)

# ✅ Insert users into 'profiles'
try:
    conn = connect_db()
    cursor = conn.cursor()
    print("✅ Connected to MySQL in Docker!")

    # Fetch 100 random users
    response = requests.get("https://randomuser.me/api/?results=100").json()
    users = response.get("results", [])

    for user in users:
        user_id = random.randint(100000, 999999)  # Generate random user_id
        full_name = f"{user['name'].get('first', 'Unknown')} {user['name'].get('last', 'Unknown')}"
        bio = "This is a sample bio."
        profile_picture = user["picture"].get("large", "")
        status = "active"  # Default status

        cursor.execute(
            "INSERT INTO profiles (user_id, full_name, bio, profile_picture, status) VALUES (%s, %s, %s, %s, %s)",
            (user_id, full_name, bio, profile_picture, status)
        )

    conn.commit()
    print("✅ Successfully inserted 100 users into 'profiles'!")

except mysql.connector.Error as err:
    print(f"❌ Database error: {err}")

except Exception as e:
    print(f"❌ Error: {e}")

finally:
    if cursor: cursor.close()
    if conn: conn.close()
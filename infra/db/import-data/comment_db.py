import requests
import mysql.connector

# ✅ Comment Service:
# ✅ Database connection settings (Docker)
DB_CONFIG = {
    "host": "127.0.0.1",
    "port": 3307,
    "database": "comment_db",
    "user": "root",
    "password": "",
    "charset": "utf8"
}

def connect_db():
    """Create a new database connection."""
    return mysql.connector.connect(**DB_CONFIG)

try:
    conn = connect_db()
    cursor = conn.cursor()
    print("✅ Connected to MySQL in Docker!")

    # ✅ Fetch 100 comments
    comments = requests.get("https://jsonplaceholder.typicode.com/comments?_limit=100").json()

    for comment in comments:
        post_id = comment.get("postId", 1)
        user_id = (comment.get("id", 1) % 50) + 1  # Simulate user IDs between 1 and 50
        content = comment.get("body", "No Content")

        cursor.execute(
            "INSERT INTO comments (post_id, user_id, content) VALUES (%s, %s, %s)",
            (post_id, user_id, content)
        )

    conn.commit()
    print("✅ Successfully inserted 100 comments into 'comments'!")

except mysql.connector.Error as err:
    print(f"❌ Database error: {err}")

except Exception as e:
    print(f"❌ Error: {e}")

finally:
    if cursor: cursor.close()
    if conn: conn.close()

import requests
import mysql.connector

# ✅ Post Service
# ✅ Database connection settings (Docker)
DB_CONFIG = {
    "host": "127.0.0.1",
    "port": 3307,
    "database": "post_db",
    "user": "root",
    "password": "",
    "charset": "utf8"
}

def connect_db():
    """Create a new database connection."""
    return mysql.connector.connect(**DB_CONFIG)

# ✅ Fetch and insert 100 posts
try:
    conn = connect_db()
    cursor = conn.cursor()
    print("✅ Connected to MySQL in Docker!")

    # Fetch posts and images
    posts = requests.get("https://jsonplaceholder.typicode.com/posts?_limit=100").json()
    images = requests.get("https://picsum.photos/v2/list?page=1&limit=100").json()

    for i, post in enumerate(posts):
        user_id = post.get("userId", 1)
        content = post.get("body", "No Content")  # ✅ No 'title' column in schema
        media_url = images[i % len(images)].get("download_url", "")

        cursor.execute(
            "INSERT INTO posts (user_id, content, media_url) VALUES (%s, %s, %s)",
            (user_id, content, media_url)
        )

    conn.commit()
    print("✅ Successfully inserted 100 posts into 'posts'!")

except mysql.connector.Error as err:
    print(f"❌ Database error: {err}")

except Exception as e:
    print(f"❌ Error: {e}")

finally:
    if cursor: cursor.close()
    if conn: conn.close()

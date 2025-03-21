#!/bin/sh

# Wait for Keycloak container to be reachable
echo "Waiting for Keycloak to be ready..."
until KEYCLOAK_IP=$(getent hosts keycloak | awk '{ print $1 }') && [ -n "$KEYCLOAK_IP" ]; do
  echo "Keycloak not available yet. Retrying in 5s..."
  sleep 5
done

echo "Keycloak is running at $KEYCLOAK_IP"

# Export environment variables dynamically
export SPRING_SECURITY_OAUTH2_CLIENT_PROVIDER_OIDC_ISSUER_URI="http://$KEYCLOAK_IP:9080/realms/jhipster"
export JHIPSTER_SECURITY_OAUTH2_AUTH_SERVER_URL="http://$KEYCLOAK_IP:9080"

echo "Using Keycloak URL: $JHIPSTER_SECURITY_OAUTH2_AUTH_SERVER_URL"

# Start the JHipster app dynamically
exec java ${JAVA_OPTS} -noverify -XX:+AlwaysPreTouch -Djava.security.egd=file:/dev/./urandom \
     -cp /app/resources/:/app/classes/:/app/libs/* "com.mycompany.myapp.${JHIPSTER_APP_NAME:-ApiGatewayApp}" "$@"

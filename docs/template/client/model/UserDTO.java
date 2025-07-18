/*
 * Ms Commentlike API
 * Ms Commentlike API documentation
 *
 * The version of the OpenAPI document: 0.0.1
 * Contact: 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.f4.reel.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonValue;
import java.time.OffsetDateTime;
import java.util.UUID;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonTypeName;

/**
 * UserDTO
 */
@JsonPropertyOrder({
  UserDTO.JSON_PROPERTY_ID,
  UserDTO.JSON_PROPERTY_USERNAME,
  UserDTO.JSON_PROPERTY_EMAIL,
  UserDTO.JSON_PROPERTY_PASSWORD_HASH,
  UserDTO.JSON_PROPERTY_CREATED_AT,
  UserDTO.JSON_PROPERTY_KEYCLOAK_USER_ID,
  UserDTO.JSON_PROPERTY_USER_AVATAR
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2025-06-28T09:20:35.299334524+07:00[Asia/Ho_Chi_Minh]", comments = "Generator version: 7.13.0")
public class UserDTO {
  public static final String JSON_PROPERTY_ID = "id";
  @javax.annotation.Nonnull
  private UUID id;

  public static final String JSON_PROPERTY_USERNAME = "username";
  @javax.annotation.Nonnull
  private String username;

  public static final String JSON_PROPERTY_EMAIL = "email";
  @javax.annotation.Nonnull
  private String email;

  public static final String JSON_PROPERTY_PASSWORD_HASH = "passwordHash";
  @javax.annotation.Nonnull
  private String passwordHash;

  public static final String JSON_PROPERTY_CREATED_AT = "createdAt";
  @javax.annotation.Nonnull
  private OffsetDateTime createdAt;

  public static final String JSON_PROPERTY_KEYCLOAK_USER_ID = "keycloakUserId";
  @javax.annotation.Nonnull
  private UUID keycloakUserId;

  public static final String JSON_PROPERTY_USER_AVATAR = "userAvatar";
  @javax.annotation.Nullable
  private String userAvatar;

  public UserDTO() {
  }

  public UserDTO id(@javax.annotation.Nonnull UUID id) {
    
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public UUID getId() {
    return id;
  }


  @JsonProperty(JSON_PROPERTY_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setId(@javax.annotation.Nonnull UUID id) {
    this.id = id;
  }


  public UserDTO username(@javax.annotation.Nonnull String username) {
    
    this.username = username;
    return this;
  }

  /**
   * Get username
   * @return username
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_USERNAME)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getUsername() {
    return username;
  }


  @JsonProperty(JSON_PROPERTY_USERNAME)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setUsername(@javax.annotation.Nonnull String username) {
    this.username = username;
  }


  public UserDTO email(@javax.annotation.Nonnull String email) {
    
    this.email = email;
    return this;
  }

  /**
   * Get email
   * @return email
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_EMAIL)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getEmail() {
    return email;
  }


  @JsonProperty(JSON_PROPERTY_EMAIL)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setEmail(@javax.annotation.Nonnull String email) {
    this.email = email;
  }


  public UserDTO passwordHash(@javax.annotation.Nonnull String passwordHash) {
    
    this.passwordHash = passwordHash;
    return this;
  }

  /**
   * Get passwordHash
   * @return passwordHash
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_PASSWORD_HASH)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getPasswordHash() {
    return passwordHash;
  }


  @JsonProperty(JSON_PROPERTY_PASSWORD_HASH)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setPasswordHash(@javax.annotation.Nonnull String passwordHash) {
    this.passwordHash = passwordHash;
  }


  public UserDTO createdAt(@javax.annotation.Nonnull OffsetDateTime createdAt) {
    
    this.createdAt = createdAt;
    return this;
  }

  /**
   * Get createdAt
   * @return createdAt
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_CREATED_AT)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public OffsetDateTime getCreatedAt() {
    return createdAt;
  }


  @JsonProperty(JSON_PROPERTY_CREATED_AT)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setCreatedAt(@javax.annotation.Nonnull OffsetDateTime createdAt) {
    this.createdAt = createdAt;
  }


  public UserDTO keycloakUserId(@javax.annotation.Nonnull UUID keycloakUserId) {
    
    this.keycloakUserId = keycloakUserId;
    return this;
  }

  /**
   * Get keycloakUserId
   * @return keycloakUserId
   */
  @javax.annotation.Nonnull
  @JsonProperty(JSON_PROPERTY_KEYCLOAK_USER_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public UUID getKeycloakUserId() {
    return keycloakUserId;
  }


  @JsonProperty(JSON_PROPERTY_KEYCLOAK_USER_ID)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)
  public void setKeycloakUserId(@javax.annotation.Nonnull UUID keycloakUserId) {
    this.keycloakUserId = keycloakUserId;
  }


  public UserDTO userAvatar(@javax.annotation.Nullable String userAvatar) {
    
    this.userAvatar = userAvatar;
    return this;
  }

  /**
   * Get userAvatar
   * @return userAvatar
   */
  @javax.annotation.Nullable
  @JsonProperty(JSON_PROPERTY_USER_AVATAR)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getUserAvatar() {
    return userAvatar;
  }


  @JsonProperty(JSON_PROPERTY_USER_AVATAR)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
  public void setUserAvatar(@javax.annotation.Nullable String userAvatar) {
    this.userAvatar = userAvatar;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UserDTO userDTO = (UserDTO) o;
    return Objects.equals(this.id, userDTO.id) &&
        Objects.equals(this.username, userDTO.username) &&
        Objects.equals(this.email, userDTO.email) &&
        Objects.equals(this.passwordHash, userDTO.passwordHash) &&
        Objects.equals(this.createdAt, userDTO.createdAt) &&
        Objects.equals(this.keycloakUserId, userDTO.keycloakUserId) &&
        Objects.equals(this.userAvatar, userDTO.userAvatar);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, username, email, passwordHash, createdAt, keycloakUserId, userAvatar);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserDTO {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    username: ").append(toIndentedString(username)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    passwordHash: ").append(toIndentedString(passwordHash)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    keycloakUserId: ").append(toIndentedString(keycloakUserId)).append("\n");
    sb.append("    userAvatar: ").append(toIndentedString(userAvatar)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}


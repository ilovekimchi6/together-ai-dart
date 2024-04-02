/// This is a sealed class that represents an error that can occur when interacting with the Together AI API.
sealed class TogetherAIError {
  /// The HTTP status code associated with the error.
  int get code;

  /// A human-readable message describing the error.
  String get message;
}

/// Represents an authentication error (HTTP 401).
class AuthenticationError implements TogetherAIError {
  @override
  final int code = 401;

  @override
  final String message;

  /// Creates a new instance of [AuthenticationError] with the specified [message].
  AuthenticationError(this.message);
}

/// Represents a bad request error (HTTP 403).
class BadRequest implements TogetherAIError {
  @override
  final int code = 403;

  @override
  final String message;

  /// Creates a new instance of [BadRequest] with the specified [message].
  BadRequest(this.message);
}

/// Represents a not found error (HTTP 404).
class NotFound implements TogetherAIError {
  @override
  final int code = 404;

  @override
  final String message;

  /// Creates a new instance of [NotFound] with the specified [message].
  NotFound(this.message);
}

/// Represents a rate limit exceeded error (HTTP 429).
class RateLimitExceeded implements TogetherAIError {
  @override
  final int code = 429;

  @override
  final String message;

  /// Creates a new instance of [RateLimitExceeded] with the specified [message].
  RateLimitExceeded(this.message);
}

/// Represents an invalid request error (HTTP 500).
class InvalidRequest implements TogetherAIError {
  @override
  final int code = 500;

  @override
  final String message;

  /// Creates a new instance of [InvalidRequest] with the specified [message].
  InvalidRequest(this.message);
}

/// Represents an engine overloaded error (HTTP 503).
class EngineOverloaded implements TogetherAIError {
  @override
  final int code = 503;

  @override
  final String message;

  /// Creates a new instance of [EngineOverloaded] with the specified [message].
  EngineOverloaded(this.message);
}

/// Represents a timeout error (HTTP 504).
class Timeout implements TogetherAIError {
  @override
  final int code = 504;

  @override
  final String message;

  /// Creates a new instance of [Timeout] with the specified [message].
  Timeout(this.message);
}

/// Represents a server error (HTTP 520).
class ServerError implements TogetherAIError {
  @override
  final int code = 520;

  @override
  final String message;

  /// Creates a new instance of [ServerError] with the specified [message].
  ServerError(this.message);
}

/// Represents a connection timeout error (HTTP 524).
class ConnectionTimeout implements TogetherAIError {
  @override
  final int code = 524;

  @override
  final String message;

  /// Creates a new instance of [ConnectionTimeout] with the specified [message].
  ConnectionTimeout(this.message);
}

/// Represents an unknown server error (HTTP 529).
class UnknownServerError implements TogetherAIError {
  @override
  final int code = 529;

  @override
  final String message;

  /// Creates a new instance of [UnknownServerError] with the specified [message].
  UnknownServerError(this.message);
}

/// Returns a [TogetherAIError] instance based on the provided [errorCode] and [errorMessage].
///
/// The [errorCode] is a string representing the specific error code returned by the API, you can find more information here https://docs.together.ai/docs/error-codes
/// The [errorMessage] is a human-readable description of the error.
TogetherAIError getTogetherAIError(String errorCode, String errorMessage) {
  return switch (errorCode) {
    'invalid_api_key' => AuthenticationError(errorMessage),
    'bad_request' => BadRequest(errorMessage),
    'not_found' => NotFound(errorMessage),
    'rate_limit_exceeded' => RateLimitExceeded(errorMessage),
    'invalid_request' => InvalidRequest(errorMessage),
    'engine_overloaded' => EngineOverloaded(errorMessage),
    'timeout' => Timeout(errorMessage),
    'server_error' => ServerError(errorMessage),
    'connection_timeout' => ConnectionTimeout(errorMessage),
    _ => UnknownServerError(errorMessage),
  };
}
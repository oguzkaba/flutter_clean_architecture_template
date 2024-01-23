// ignore_for_file: public_member_api_docs

class ServerException implements Exception {
  ServerException(this.message, this.statusCode);
  final String message;
  final int? statusCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    if (other is ServerException) {
      return other.message == message && other.statusCode == statusCode;
    }

    return false;
  }
}

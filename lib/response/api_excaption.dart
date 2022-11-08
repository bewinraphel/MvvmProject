class AppException implements Exception {
  final prefix;
  final message;

  AppException({this.prefix, this.message});

  //function
  String toString() {
    return '$prefix$message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? messange])
      : super(message: 'Error during communication');
}

class BadRequestException extends AppException {
  BadRequestException([String? messange]) : super(message: 'Invalid request');
}

class UnathorisedException extends AppException {
  UnathorisedException([String? messange])
      : super(message: ' unauthorised requset');
}

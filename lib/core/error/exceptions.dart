


import 'package:movies_app/core/network/error-message_model.dart';

class ServerException implements Exception {
  ErrorMessageModel errorMessageModel ;
  ServerException(
    this.errorMessageModel,
  );
}


class LocalDataBaseException implements Exception { 
  String message ;
  LocalDataBaseException(
    this.message,
  );
}




// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  int statusCode;
  String statusMessage;
  bool success;

  ErrorMessageModel(
      {required this.statusCode,
      required this.statusMessage,
      required this.success});

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        statusCode: json['statusCode'],
        statusMessage: json['statusMessage'],
        success: json['success']);
  }

  @override
  List<Object?> get props => [statusCode, statusMessage, success];
}

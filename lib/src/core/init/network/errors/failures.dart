// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.errorMessage);
  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}

/// General failures
class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage, this.statusCode);
  final int? statusCode;
}

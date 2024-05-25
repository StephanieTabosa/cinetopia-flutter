import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'network_strings.dart';

class CustomError implements Exception {
  const CustomError(this.message);

  final String message;
}

class Failure extends Equatable {
  const Failure({
    required this.exception,
    this.data,
  });

  final dynamic exception;
  final dynamic data;

  @override
  List<Object?> get props => [
        exception,
        data,
      ];

  String getMessage() {
    final error = exception;

    try {
      if (error is DioException) {
        switch (error.type) {
          case DioExceptionType.badResponse:
            final data = error.response?.data;

            if (data is Map && data.isNotEmpty) {
              final keys = ['message', 'msg', 'err', 'error', 'erro'];

              for (final key in keys) {
                final message = data[key];
                if (message is String && message.isNotEmpty) return message;
              }

              final errors = data['errors'];
              if (errors is List && errors.isNotEmpty && errors.first is Map) {
                final message = errors.first['message'];
                if (message is String && message.isNotEmpty) return message;
              }
            }

            return NetworkStrings.unknown;
          case DioExceptionType.unknown:
            return NetworkStrings.withoutConnection;
          case DioExceptionType.connectionTimeout:
          case DioExceptionType.receiveTimeout:
          case DioExceptionType.sendTimeout:
            return NetworkStrings.timeout;
          default:
            return NetworkStrings.unknown;
        }
      }

      if (error is CustomError) return error.message;
    } catch (_) {}

    return NetworkStrings.unknown;
  }
}

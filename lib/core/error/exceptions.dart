import 'dart:developer';

import 'package:flutter/foundation.dart';

class ServerException implements Exception {
  final String message;

  const ServerException({
    required this.message,
  });

  void call() {
    if (kDebugMode) {
      log(message.toString(), name: 'ServerException');
    }
  }
}

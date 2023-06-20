// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:frontend/services/constant_api.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> createUser({Map? body, String? userType}) async {
  try {
    final newBody = {...body ?? {}, 'user-type': userType};
    var url = Uri.http(Api().url, Api().createAccount);
    var response = await http.post(
      url,
      body: json.encode(newBody),
    );
    return response;
  } catch (error) {
    print(error);
    return Response("error", 400);
  }
}

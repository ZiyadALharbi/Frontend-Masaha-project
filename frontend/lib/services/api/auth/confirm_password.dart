// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:frontend/services/constant_api.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> confirmPassword({required Map body}) async {
  try {
    var url = Uri.http(Api().url, Api().confirmPassword);
    var response = await http.post(url, body: json.encode(body));

    return response;
  } catch (error) {
    print(error);
    return Response("error", 400);
  }
}
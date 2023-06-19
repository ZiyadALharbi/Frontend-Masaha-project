// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:frontend/services/constant_api.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> loginUser({required Map body}) async {
  try {
    var url = Uri.http(Api().url, Api().loginAccount);
    var response = await http.post(url, body: json.encode(body));
    log(body.toString());

    return response;
  } catch (error) {
    print(error);
    return Response("error", 400);
  }
}

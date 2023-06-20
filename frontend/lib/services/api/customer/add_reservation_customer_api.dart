import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:supabase/supabase.dart';
import '../../constant_api.dart';

Future<Response> addReservationCustomer({required Map body}) async {
  try {
    log(body.toString());
    final box = GetStorage();
    var url = Uri.http(Api().url, Api().addReservationCustomer);
    var response = await http.post(url,
        body: json.encode(body), headers: {"authorization": box.read("token")});
    log(body.toString());
    if (response.statusCode == 401) {
      box.remove("token");
    }
    return response;
  } on HttpException catch (error) {
    return Response(error.message, 111);
  } on ArgumentError catch (error) {
    return Response(error.message, 111);
  } on ClientException catch (error) {
    return Response(error.message, 111);
  } on FlutterError catch (error) {
    return Response(error.message, 111);
  } on PostgrestException catch (error) {
    return Response(error.message, 111);
  } catch (error) {
    print(error);
    return Response('error', 401);
  }
}

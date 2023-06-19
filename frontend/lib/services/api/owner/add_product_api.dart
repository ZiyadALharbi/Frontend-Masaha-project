import 'dart:convert';
import 'dart:developer';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../constant_api.dart';

Future<Response> addProductOwner({required Map body}) async {
  try {
    final box = GetStorage();
    var url = Uri.http(Api().url, Api().addProduct);
    var response = await http.post(url,
        body: json.encode(body), headers: {"authorization": box.read("token")});
    log(body.toString());
    if (response.statusCode == 401) {
      box.remove("token");
    }
    return response;
  } catch (error) {
    print(error);
    return Response("error", 111);
  }
}

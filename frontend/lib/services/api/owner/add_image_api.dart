import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../constant_api.dart';

Future<Response> addImage({required Map body, required String id}) async {
  try {
    final box = GetStorage();
    var url = Uri.http(Api().url, Api().addProductImage + id);
    var response = await http.post(url,
        body: json.encode(body), headers: {"authorization": box.read("token")});
    if (response.statusCode == 401) {
      box.remove("token");
    }
    return response;
  } catch (error) {
    print(error);
    return Response("error", 111);
  }
}

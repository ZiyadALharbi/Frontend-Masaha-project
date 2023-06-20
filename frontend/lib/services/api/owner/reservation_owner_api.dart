import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../../constant_api.dart';

Future<Response> displayReservationOwner() async {
  try {
    final box = GetStorage();
    var url = Uri.http(Api().url, Api().displayReservationOwner);
    var response =
        await http.get(url, headers: {'authorization': box.read('token')});

    return response;
  } catch (error) {
    print(error);
    return Response('error', 401);
  }
}

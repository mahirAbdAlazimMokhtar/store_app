import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/const.dart';

class GetAllCategories {
  Future<List<dynamic>> getAllCategories() async {
    http.Response response =
        await http.get(Uri.parse(baseUrl + productsUrl + categoriesUrl));
    if (response.statusCode==200) {
  List<dynamic> data = jsonDecode(response.body);
  
  return data;
}else {
  throw Exception('there was an error on your code ${response.statusCode}');
}
  }
}
//products
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/helper/const.dart';

class GetAllCategories {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: baseUrl + productsUrl + categoriesUrl);
    return data;
  }
  //baseUrl + productsUrl + categoriesUrl
}
//products
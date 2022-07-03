import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/const.dart';
import 'package:store_app/models/products_model.dart';

class CategoriesService {
  Future<List<ProductsModel>> getCategoriesServices(
      {required String categoryName}) async {
    http.Response response = await http
        .get(Uri.parse(baseUrl + productsUrl + categoriesUrl + categoryName));

    List<dynamic> data = jsonDecode(response.body);

    List<ProductsModel> productsModelList = [];
    for (int i = 0; i < data.length; i++) {
      productsModelList.add(ProductsModel.fromJson(data[i]));
    }
    return productsModelList;
  }
}

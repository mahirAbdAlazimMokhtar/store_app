import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/helper/const.dart';
import 'package:store_app/models/products_model.dart';

class CategoriesService {
  Future<List<ProductsModel>> getCategoriesServices(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: baseUrl + productsUrl + categoriesUrl + categoryName);
    List<ProductsModel> productsModelList = [];

    for (int i = 0; i < data.length; i++) {
      productsModelList.add(ProductsModel.fromJson(data[i]));
    }
    return productsModelList;
    //baseUrl + productsUrl + categoriesUrl + categoryName
  }
}

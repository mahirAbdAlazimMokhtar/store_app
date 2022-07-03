import 'dart:convert';

import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/helper/const.dart';
import 'package:store_app/models/products_model.dart';
import 'package:http/http.dart' as http;

class GetAllProductsService {
  Future<List<ProductsModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(url: baseUrl + productsUrl);
    List<ProductsModel> productsModelList = [];
    for (int i = 0; i < data.length; i++) {
       productsModelList.add(ProductsModel.fromJson(data[i]));
    }
    return productsModelList;
  }
}

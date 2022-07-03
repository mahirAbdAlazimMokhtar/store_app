import 'dart:convert';

import 'package:store_app/helper/const.dart';
import 'package:store_app/models/products_model.dart';
import 'package:http/http.dart' as http;

class GetAllProductsService {
  //this function to get all data form internet

  //in this step you will recive the data and response
  Future<List<ProductsModel>> getAllPRoducts() async {
    http.Response response = await http.get(
      Uri.parse(baseUrl + productsUrl),
    );
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      List<ProductsModel> productModelList = [];

      for (int i = 0; i < data.length; i++) {
        productModelList.add(
          ProductsModel.fromJson(data[i]),
        );
      }
      return productModelList;
    } else {
      throw Exception('there was an error on your code ${response.statusCode}');
    }
  }
  //in this step you will decode the data and make the list of dynamic

  //create list of model to accept data

  //create for loop to request data

}

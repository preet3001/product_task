import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:guru_tech_practical/modules/home_module/model/product_model.dart';

class ApiProvider{
  final Dio dio = Dio();
  String baseUrl= 'http://fakestoreapi.com';

  Future<List<ProductModel>> getProductsApi()async {
    var url = baseUrl +'/products';
    try {
      Response r = await dio.get(url);
      if(r.statusMessage=="OK"){
        return productModelFromJson(jsonEncode(r.data));
      }
      else{
        return Future.error(r.statusMessage!);
      }
    } on DioError catch (excep) {
      return Future.error(excep.toString());
    }

  }

}
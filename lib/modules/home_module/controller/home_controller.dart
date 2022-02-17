import 'package:get/get.dart';
import 'package:guru_tech_practical/api_provider/api_provider.dart';
import 'package:guru_tech_practical/modules/cart_module/controller/cart_controller.dart';

import 'package:guru_tech_practical/modules/home_module/model/product_model.dart';

class HomeController extends GetxController with StateMixin<List<ProductModel>>{
  ApiProvider _apiProvider =ApiProvider();
  List<ProductModel> productList = [];
  

  callGetProductApi(){
    change(null,status: RxStatus.loading());
    try {
      _apiProvider.getProductsApi().then((value) {
        productList.clear();
        productList.addAll(value);
        intializeQuatity();
        change(productList,status: RxStatus.success());
      },onError: (err){
        change(null,status: RxStatus.error(err.toString()));
      });
    } on Exception catch (excep) {
      change(null,status: RxStatus.error(excep.toString()));
    }
  }
  @override
  void onReady() {
    callGetProductApi();
    super.onReady();
  }
List<RxInt> quantity = <RxInt>[].obs;
  intializeQuatity(){
    for(int i =0;i< productList.length;i++){
      quantity.add(0.obs);
    }
  }

addToCart(int index){
  quantity[index].value += 1;
  CartController _cartController = Get.find(); 
  _cartController.calculateTotalPrice();
}

removeFromCart(int index){
  if(quantity[index].value>0){
    quantity[index].value -= 1;
    CartController _cartController = Get.find(); 
    _cartController.calculateTotalPrice();
  }
}

/* List<CartModel> cartList = Rxn<CartModel>().obs;
  List<RxInt> quantity = [];

  addToCart(ProductModel product) {
    cartList.value.add(product);
  }

   */

}
import 'package:get/get.dart';
import 'package:guru_tech_practical/modules/cart_module/cart_screen.dart';
import 'package:guru_tech_practical/modules/home_module/controller/home_controller.dart';
import 'package:guru_tech_practical/modules/home_module/model/product_model.dart';

class CartController extends GetxController {
  HomeController _homeController = Get.put(HomeController());
  RxDouble totalPrice = 0.0.obs;
  RxInt length = 0.obs;
  calculateCartLength(){
    _homeController.quantity.forEach((element) {if(element.value != 0){length.value +=1;}});
  }
  calculateTotalPrice(){
    totalPrice.value =0;
    _homeController.quantity.forEach((element) {if(element.value != 0){
      totalPrice.value += _homeController.productList[element.value].price;
      }});
  }
  @override
  void onInit() {
    calculateCartLength();
    calculateTotalPrice();
    super.onInit();
  }


}

import 'package:get/get.dart';
import 'package:guru_tech_practical/modules/cart_module/controller/cart_controller.dart';
import 'package:guru_tech_practical/modules/home_module/controller/home_controller.dart';

class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController(),fenix: true);
  Get.lazyPut<CartController>(() => CartController(),fenix:true);
}
}
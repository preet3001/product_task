
import 'package:guru_tech_practical/essentials.dart';
import 'package:guru_tech_practical/modules/cart_module/controller/cart_controller.dart';
import 'package:guru_tech_practical/modules/home_module/controller/home_controller.dart';
import 'package:guru_tech_practical/modules/home_module/model/product_model.dart';
import 'package:guru_tech_practical/modules/home_module/widgets/product_tile.dart';



class CartScreen extends GetView<HomeController> {
  CartScreen({Key? key}) : super(key: key);
  HomeController _homeController =Get.find();
  CartController _cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: _cartController.length.value,
                  itemBuilder: (context, index) => ProductTile(data: _homeController.productList[index],index: index,)),
            ), 
           Obx(()=> Text('Total Price \$${_cartController.totalPrice}')),        
          Container(height: 8.h,width: 100.w,
          color: Colors.grey.shade200,
          child: Center(child: Text('Add To Cart'),),)
        ],
      ),
    );
  }
}


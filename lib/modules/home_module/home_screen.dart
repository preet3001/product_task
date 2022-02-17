
import 'package:guru_tech_practical/essentials.dart';
import 'package:guru_tech_practical/modules/cart_module/cart_screen.dart';
import 'package:guru_tech_practical/modules/cart_module/controller/cart_controller.dart';
import 'package:guru_tech_practical/modules/home_module/controller/home_controller.dart';
import 'package:guru_tech_practical/modules/home_module/model/product_model.dart';

import 'widgets/product_tile.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);
/*   CartController cartController = Get.put(CartController(),permanent: true); 
  HomeController homeController = Get.put(HomeController(),permanent: true); */
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Item'),
      ),
      body: Column(
        children: [
          Expanded(
            child: controller.obx(
              (data) => ListView.builder(
                itemCount: data!.length,
                  itemBuilder: (context, index) => ProductTile(data: data[index],index: index,)),
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(()=>CartScreen());
            },
            child: Container(height: 8.h,width: 100.w,
            color: Colors.grey.shade200,
            child: Center(child: Text('Add To Cart'),),),
          )
        ],
      ),
    );
  }
}


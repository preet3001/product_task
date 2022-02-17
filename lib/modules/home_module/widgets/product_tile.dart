import 'package:guru_tech_practical/essentials.dart';
import 'package:guru_tech_practical/modules/cart_module/controller/cart_controller.dart';
import 'package:guru_tech_practical/modules/home_module/controller/home_controller.dart';

import 'package:guru_tech_practical/modules/home_module/model/product_model.dart';


class ProductTile extends StatelessWidget {
  ProductTile({
    Key? key,
    required this.data,required this.index,
  }) : super(key: key);
  final ProductModel data;
  final int index;
  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(vertical: 4.sp,horizontal: 10.sp),
          child: PhysicalModel(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.sp),
            elevation: 4,
            child: Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.sp),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.sp),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 60.w,
                          child: Text(
                            data.title,
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ),
                        Text(
                          'Price:-\$${data.price}',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                    Spacer(),
                    
                    Obx(
                      ()=>Visibility(
                        visible: homeController.quantity[index].value!=0,
                        child: InkWell(
                          onTap: (){
                            homeController.removeFromCart(index);
                            
                          },
                          child: Icon(
                            Icons.remove,
                            size: 17.sp,
                          ),
                        ),
                      ),
                    ),
                    Obx(()=>Visibility(
                      visible: homeController.quantity[index].value!=0,
                      child: Text(homeController.quantity[index].value.toString()))),
                    InkWell(
                      onTap: (){
                        homeController.addToCart(index);
                      },
                      child: Icon(
                        Icons.add,
                        size: 17.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
  }
}

/* import 'package:guru_tech_practical/essentials.dart';
import 'package:guru_tech_practical/modules/home_module/model/product_model.dart';

class CartTile extends StatelessWidget {
  CartTile({ Key? key ,required this.data}) : super(key: key);
  ProductModel data; 

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 70.w,
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

                    InkWell(
                      child: Icon(
                        Icons.add,
                        size: 17.sp,
                      ),
                    ),
                    Text(),
                    InkWell(
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
} */
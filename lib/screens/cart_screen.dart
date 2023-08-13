
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_app/constants.dart';
import 'package:market_app/widgets/cart_item.dart';
import 'package:market_app/widgets/category_item.dart';
import 'package:market_app/widgets/custome_listTile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  PageController controller = PageController();
  List<String> images = [
    'assets/images/CartScreenImages/ella-olsson-rD3YrnhTmf0-unsplash 1.png',
    'assets/images/CartScreenImages/border-from-fresh-fruits.jpg',
    'assets/images/CartScreenImages/making-homemade-burger-ingredients-cooking-wooden-table-top-view-flat-lay-copy-space.jpg',
    'assets/images/CartScreenImages/healthy-vegetables-full-vitamins-with-copy-space.jpg',
  ];
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController(viewportFraction: 0.7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            //physics: BouncingScrollPhysics(),
            children: [
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffefeff2),
                ),
                child: ListTile(
                  title: Text('Search Keywords...',style: TextStyle(color: Colors.grey),),
                  leading: Icon(Icons.search),
                  trailing: Image.asset('assets/images/CartScreenImages/Group4 - copy.png'),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height:200,
                width: double.infinity,
                child: PageView.builder(
                    itemCount: images.length,
                    controller: controller,
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (page) {
                      setState(() {
                        currentPage = page;
                      });
                    },
                    itemBuilder: (context,i){
                      return Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 350,
                              height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(images[i]),
                              ),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('20% off on your \nfirst purchase',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 10,),
              Center(
                child: SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 4,
                  // set isRTL to true
                  effect: ExpandingDotsEffect(
                    activeDotColor: kTheme,
                    spacing: 5,
                    dotHeight: 10,
                    dotColor: Colors.black12,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              CustomeListTile(title: 'Categories',trailing: Icons.arrow_forward_ios_outlined,),
              SizedBox(height: 10,),
              Container(
                height: 120,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: ((context, index) {
                    return CategoryItem(
                      title: namesOfCategories[index],
                      color: colorOfCategories[index],
                      image: imagesOfCategories[index],
                    );
                  }),
                ),
              ),
              CustomeListTile(title: 'Featured products',
              trailing: Icons.arrow_forward_ios_outlined
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                primary: false,
                shrinkWrap: true,
                childAspectRatio: 0.6,
                children: [
                  CartItem(color: Colors.red[100],
                  title: 'Fresh Peach',
                    image: 'assets/images/CartScreenImages/peach-24 1.png',
                    price: '8.00',
                    weight: 'dozen',
                  ),
                  CartItem(color: Colors.yellow[100],
                    title: 'Avocado',
                    image: 'assets/images/CartScreenImages/aocado-2 1.png',
                    price: '7.00',
                    weight: '2.0 Ibs',
                  ),
                  CartItem(color: Colors.orange[100],
                    title: 'Pineapple',
                    image: 'assets/images/CartScreenImages/pineapple-pieces.png',
                    price: '9.90',
                    weight: '1.50 Ibs',
                  ),
                  CartItem(color: Colors.pink[100],
                    title: 'Black Grapes',
                    image: 'assets/images/CartScreenImages/grapes-31.png',
                    price: '7.05',
                    weight: '5.0 Ibs',
                  ),
                  CartItem(color: Colors.redAccent[100],
                    title: 'Pomegrante',
                    image: 'assets/images/CartScreenImages/pomegranate-11.png',
                    price: '2.09',
                    weight: '1.50 Ibs',
                  ),
                  CartItem(color: Colors.green[100],
                    title: 'Fresh Broccoli',
                    image: 'assets/images/CartScreenImages/green-fresh-broccoli.png',
                    price: '3.00',
                    weight: '1 kg',
                  ),
                ],
              ),
              SizedBox(height: 60,),
            ],
          ),
        ),
    );
  }
}

import 'package:clothes_boutique/components/make_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animator/flutter_animator.dart';

class CategoryPage extends StatefulWidget {
  final String title;
  final String image;
  final String tag;
  // final String price;

  const CategoryPage(
      {super.key, required this.image,
        required this.title,
        required this.tag
        // , required this.price
      });
  /*CategoryPage({
  super.key, this.title, this.image, this.image, this.tag});*/

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(tag: Icons.widgets,
                child: Material(
                  child: Container(
                    height: 360,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.1),
                              ]
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  FadeInUp(
                                    preferences: const AnimationPreferences(
                                      duration: Duration(milliseconds: 1200),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.search, color: Colors.white),
                                      onPressed: () {},
                                    ),),
                                  FadeInUp(
                                    preferences: const AnimationPreferences(
                                      duration: Duration(milliseconds: 1200),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.favorite, color: Colors.white),
                                      onPressed: () {},
                                    ),),
                                  FadeInUp(
                                    preferences: const AnimationPreferences(
                                      duration: Duration(milliseconds: 1200),
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.shopping_cart, color: Colors.white),
                                      onPressed: () {},
                                    ),),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          FadeInUp(
                            preferences: const AnimationPreferences(
                              duration: Duration(milliseconds: 1200),
                            ),
                              child: Text(widget.title,
                                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),))
                        ],
                      ),
                    ),
                  ),
                ),
            ),
            Padding(padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
            FadeInUp(
            preferences: const AnimationPreferences(
                duration: Duration(milliseconds: 1200),
            ), child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("New Product", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                Row(
                  children: <Widget>[
                    Text("View More", style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward_ios, size: 11, color: Colors.grey,)
                  ],
                )
              ],
            ),
            ),
                const SizedBox(height: 20,),
                FadeInUp(
                    preferences: const AnimationPreferences(
                      duration: Duration(milliseconds: 1500),
                    ),
                    child:  const MakeProduct(image: 'assets/images/beauty-1.jpg', title: 'Beauty', price: '100\$')
                ),
                FadeInUp(
                    preferences: const AnimationPreferences(
                      duration: Duration(milliseconds: 1600),
                    ),
                    child:  const MakeProduct(image: 'assets/images/beauty-1.jpg', title: 'Beauty', price: '100\$')
                ),
                FadeInUp(
                    preferences: const AnimationPreferences(
                      duration: Duration(milliseconds: 1700),
                    ),
                    child:  const MakeProduct(image: 'assets/images/beauty-1.jpg', title: 'Beauty', price: '100\$')
                ),
                FadeInUp(
                    preferences: const AnimationPreferences(
                      duration: Duration(milliseconds: 1800),
                    ),
                    child:  const MakeProduct(image: 'assets/images/beauty-1.jpg', title: 'Beauty', price: '100\$')
                ),
                FadeInUp(
                    preferences: const AnimationPreferences(
                      duration: Duration(milliseconds: 1900),
                    ),
                    child:  const MakeProduct(image: 'assets/images/beauty-1.jpg', title: 'Beauty', price: '100\$')
                ),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}

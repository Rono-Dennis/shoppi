import 'package:clothes_boutique/components/make_best_category.dart';
import 'package:clothes_boutique/components/make_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/animation/animation_preferences.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in_up.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeInUp(
                preferences: const AnimationPreferences(
                  duration: Duration(milliseconds: 1500),
                ),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.jpg'),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.2),
                          ]
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeInUp(
                                preferences: const AnimationPreferences(
                                  duration: Duration(milliseconds: 1500),
                                ),
                                child: IconButton(icon: const Icon(Icons.favorite, color: Colors.white,), onPressed: () {},
                                ),
                            ),
                            FadeInUp(
                              preferences: const AnimationPreferences(
                                duration: Duration(milliseconds: 1500),
                              ),
                              child: IconButton(icon: const Icon(Icons.shopping_cart, color: Colors.white,), onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeInUp(
                              preferences: const AnimationPreferences(
                                duration: Duration(milliseconds: 1500),
                              ),
                              child: const Text("Our New Products", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 15,),
                            FadeInUp(
                              preferences: const AnimationPreferences(
                                duration: Duration(milliseconds: 1500),
                              ),
                              child: const Row(children: <Widget>[
                                Text("VIEW MORE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                                SizedBox(width: 5,),
                                Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,)
                              ],),
                            ),
                          ],
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FadeInUp(
              preferences: const AnimationPreferences(
                duration: Duration(milliseconds: 1500),
              ),
              child: Column(
                children: <Widget>[
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Categories", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("All")
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        MakeCategory(image: 'assets/images/beauty.jpg', title: 'Beauty', tag: 'beauty'),
                        MakeCategory(image: 'assets/images/clothes.jpg', title: 'Clothes', tag: 'clothes'),
                        MakeCategory(image: 'assets/images/perfume.jpg', title: 'Perfume', tag: 'perfume'),
                        MakeCategory(image: 'assets/images/glass.jpg', title: 'Glass', tag: 'glass'),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Best Selling by Category", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("All")
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        MakeBestCategory(image: 'assets/images/tech.jpg', title: 'Tech'),
                        MakeBestCategory(image: 'assets/images/watch.jpg', title: 'Watch'),
                        MakeBestCategory(image: 'assets/images/perfume.jpg', title: 'Perfume'),
                        MakeBestCategory(image: 'assets/images/glass.jpg', title: 'Glass'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

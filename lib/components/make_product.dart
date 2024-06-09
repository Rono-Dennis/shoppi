import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/animation/animation_preferences.dart';
import 'package:flutter_animator/widgets/fading_entrances/fade_in_up.dart';

class MakeProduct extends StatelessWidget {
  final String? title;
  final String? price;
  final String? image;
  final String? tag;

  const MakeProduct({super.key, this.title, this.price, this.image, this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FadeInUp(
                  preferences: const AnimationPreferences(
                    duration: Duration(milliseconds: 1400),
                  ),
                child: const Align(alignment: Alignment.topRight,
                child: Icon(Icons.favorite_border, color: Colors.white,),),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                          preferences: const AnimationPreferences(
                            duration: Duration(milliseconds: 1500),
                          ),
                          child: Text(title!, style: const TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                      FadeInUp(
                        preferences: const AnimationPreferences(
                          duration: Duration(milliseconds: 1500),
                        ),
                        child: Text(price!, style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  FadeInUp(preferences: const AnimationPreferences(
                      duration: Duration(milliseconds: 2000),),
                      child: Container(
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: Center(
                        child: Icon(Icons.add_shopping_cart, size: 18, color: Colors.grey[700],),
                      ),
                  ))
                ],
              ),
            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';

class MakeBestCategory extends StatelessWidget {

  final String title;
  final String image;

  const MakeBestCategory(
      {super.key, required this.image,
        required this.title });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image),
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
                    Colors.black.withOpacity(.0),
                  ]
              )
          ),
          child:
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)
          ),
        ),
      ),
    );
  }
}

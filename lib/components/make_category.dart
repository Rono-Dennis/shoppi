import 'package:flutter/material.dart';

import 'category_page.dart';

class MakeCategory extends StatelessWidget {

  final String title;
  final String image;
  final String tag;

  const MakeCategory(
      {super.key, required this.image,
        required this.title,
        required this.tag});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(image: image, title: title, tag: tag)));
          },
          child: Material(
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
          ),
        ),
      ),
    );
  }
}

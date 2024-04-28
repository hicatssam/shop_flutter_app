import 'package:flutter/material.dart';
class CollectionCard extends StatefulWidget {

  final String title;
  final String image;


  const CollectionCard({required this.title, required this.image});

  @override
  State<CollectionCard> createState() => _CollectionCardState();
}

class _CollectionCardState extends State<CollectionCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:  DecorationImage(image: AssetImage(widget.image),fit: BoxFit.fill),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Align(
            alignment : Alignment.bottomLeft,
            child: SizedBox(
              width : 120,
              height : 40,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Center(child: Text(widget.title)),
              ),
            ),
          ),
        ),
      ],

    );
  }
}
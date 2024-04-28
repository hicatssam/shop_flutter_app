import 'package:flutter/material.dart';
class ProductCard extends StatefulWidget {
  final int id;
  final String image;
  final String title;
  final String subTitle;
  final String  price;
  final String type;
  final List<Color> colors;
  final List<Color> sizes;

  const ProductCard({super.key, required this.id,required this.image, required this.title, required this.subTitle, required this.price , required this.sizes ,required this.colors, required this.type});


  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  static bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage(widget.image),fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepOrange),
          width: 200,
          height: 200,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isFavorite
                          ? _isFavorite = false
                          : _isFavorite = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isFavorite
                        ? Colors.deepOrange
                        : Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    minimumSize: const Size(40, 40),
                  ),
                  child: Icon(
                    _isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
         Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
                    ),
                    Text(
                      widget.subTitle,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400,color: Colors.grey),
                    ),
                    Text(
                      widget.price,
                      style: const TextStyle(
                          fontSize: 21, fontWeight: FontWeight.bold,color: Colors.grey),
                    ),

                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
class CartListTileCard extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;
  final String price;

  const CartListTileCard({super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });

  @override
  State<CartListTileCard> createState() => _CartListTileCardState();
}

class _CartListTileCardState extends State<CartListTileCard> {
   int orderNum = 1;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                child: Image.asset(widget.image,fit: BoxFit.fill,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    widget.subTitle,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                     '₪${widget.price}',
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          orderNum++;
                        });
                      }, icon: const Icon(Icons.add)),
                      Text(
                       '$orderNum',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(onPressed: (){
                        setState(() {
                          orderNum--;
                        });
                      }, icon: const Icon(Icons.minimize_outlined)),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.red,
                        size: 35,
                      )),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 10,
                    ),
                    child: const Text('Preview'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
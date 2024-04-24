import 'package:flutter/material.dart';

class MainBnScreen extends StatefulWidget {
  const MainBnScreen({super.key});

  @override
  State<MainBnScreen> createState() => _MainBnScreenState();
}

class _MainBnScreenState extends State<MainBnScreen> {
 static bool _isFavorite = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Most Selling',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'FjallaOne'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'View  All',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'FjallaOne'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 10,
            maxHeight: 320,
            minWidth: double.infinity,
          ),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 212 / 141,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Card(
                  elevation: 5,
                  child: Stack(
                    children: [
                      Image.asset(
                        'images/dress_short2.jpg',
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 130),
                        width: 60,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child:  const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '4.5',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'FjallaOne',
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),

                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [    Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _isFavorite ? _isFavorite = false : _isFavorite = true;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: _isFavorite ? Colors.orange : Colors.grey,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                    minimumSize: const Size(50, 50),
                                  ),
                                  child:  Icon(_isFavorite ? Icons.favorite : Icons.favorite_border,size: 30,),
                                ),
                              ],
                            ),],

                          ),
                        ],
                      )

                    ],
                  ),
                ),],

              );
            },
          ),
        ),


      ],
    );
  }

}



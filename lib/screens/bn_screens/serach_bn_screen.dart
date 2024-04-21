import 'package:flutter/material.dart';

class SearchBnScreen extends StatefulWidget {
  const SearchBnScreen({super.key});

  @override
  State<SearchBnScreen> createState() => _SearchBnScreenState();
}

class _SearchBnScreenState extends State<SearchBnScreen> {
  bool _isFavorite = false;

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
                  fontWeight: FontWeight.w500),
            ),
            TextButton(
              onPressed: (){},
              child: const Text(
                'View  All',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),

          ],
        ),
        const SizedBox(height: 10,),

        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 10,
            maxHeight: 100,
            minWidth: double.infinity,
          ),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 212/141,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Card(
                  elevation: 10,
                  color: Colors.pinkAccent,
                  child: Column(
                  children: [
                  Image.asset('images/dress_9.jpg'),
                ],
              ),);
            },
          ),
        )
      ],
    );
  }
}

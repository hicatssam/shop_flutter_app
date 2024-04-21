import 'package:flutter/material.dart';

class MainBnScreen extends StatefulWidget {
  const MainBnScreen({super.key});

  @override
  State<MainBnScreen> createState() => _MainBnScreenState();
}

class _MainBnScreenState extends State<MainBnScreen> {
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
            maxHeight: 300,
            minWidth: double.infinity,
          ),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 212/141,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return const Card(
                elevation: 5,
                child: Column(
                  children: [
                    Text('Hicats Sam')
                  ],
                ),
                 );
            },
          ),
        ),
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
        ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 10,
            maxHeight: 300,
            minWidth: double.infinity,
          ),
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 212/141,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return const Card(
                elevation: 5,
                child: Column(
                  children: [

                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

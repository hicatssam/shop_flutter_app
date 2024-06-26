import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CircleAvatar(radius: 50,backgroundColor: Colors.red),
            TabBar(
              onTap: (int index){

              },
                controller: _tabController,
                labelColor: Colors.black,
                tabs: const [
              Tab(
                child: Text('About App'),
              ),
              Tab(
                child: Text('Company'),
              ),
            ]),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    const Text('dsfsdfsdf'),
                    const Text('data')
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

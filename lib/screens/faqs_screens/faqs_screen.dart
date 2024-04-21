import 'package:flutter/material.dart';
import 'package:shop_app/screens/faqs_screens/general_questions_Screen.dart';
import 'package:shop_app/screens/faqs_screens/usage_questions_Screen.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({super.key});

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
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
        title: const Text('Info'),
        bottom: TabBar(
          onTap: (int index){
            setState(() {

            });
          },
          indicatorWeight: 2,
          indicatorColor: Colors.black87,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.white,

          indicatorPadding: const EdgeInsets.only(left: 10,right: 10,),
          tabs: const [
            Tab(
                child: Text(
              'General',
              style: TextStyle(fontSize: 20),
            )),
            Tab(
             child: Text(
              'Usage',
              style: TextStyle(fontSize: 20),
            ),),
          ],
          controller: _tabController,
        ),
        backgroundColor: Colors.orange,

      ),
      body:  TabBarView(

        controller: _tabController,
        children: const [
          GeneralQuestionsScreen(),
          UsageQuestionsScreen(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/widget/app_list_tile.dart';

class GeneralQuestionsScreen extends StatelessWidget {
  const GeneralQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
                children: const [

          AppListTile(
            title: 'General Question',
            subTitle: 'Answer',
            iconData: Icons.question_answer_outlined,
            color: Colors.orange,
            iconColor: Colors.white,
          ),
          SizedBox(height: 10,),
          AppListTile(
            title: 'General Question',
            subTitle: 'Answer',
            iconData: Icons.question_answer_outlined,
            color: Colors.orange,
            iconColor: Colors.white,
          ),
                  SizedBox(height: 10,),
          AppListTile(
            title: 'General Question',
            subTitle: 'Answer',
            iconData: Icons.question_answer_outlined,
            color: Colors.orange,
            iconColor: Colors.white,
          ),
                  SizedBox(height: 10,),
        ],
      ),
    );
  }
}

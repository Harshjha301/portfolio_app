import 'package:flutter/material.dart';
import 'package:PortfolioApp/widgets/custom_card.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
        backgroundColor: const Color(0xff66bfbf),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                    photo: 'assets/images/android.png',
                    description: 'Android Development',
                    link: 'https://www.android.com/'),
                CustomCard(
                    photo: 'assets/images/flutter.png',
                    description: 'Cross-Platform Development',
                    link: 'https://flutter.dev/'),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                    photo: 'assets/images/chatGPT.png',
                    description: 'ChatGPT',
                    link: 'https://chat.openai.com/chat'),
                CustomCard(
                    photo: 'assets/images/football.png',
                    description: 'Football',
                    link: 'https://www.goal.com/en-in'),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                    photo: 'assets/images/travelling.png',
                    description: 'Travelling',
                    link: 'https://www.booking.com/'),
                CustomCard(
                    photo: 'assets/images/singing.png',
                    description: 'Singing',
                    link: 'https://www.shankarmahadevanacademy.com/'),
              ],
            )
          ],
        ),
      )
      );
  }
}
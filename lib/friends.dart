import 'package:flutter/material.dart';
import 'package:PortfolioApp/widgets/custom_card_friends.dart';
import 'widgets/custom_card.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends'),
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
                Friend(photo: 'assets/images/akshay.jpg', name: 'Akshay Moon', description: 'React Native Developer',link: 'https://www.linkedin.com/mwlite/in/akshay-moon-a631b1266',),
                Friend(photo: 'assets/images/nilesh.jpg', name: 'Nilesh Powar', description: 'React Native Developer',link: 'https://www.linkedin.com/mwlite/in/nilesh-powar-38679018b',),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Friend(photo: 'assets/images/om.jpg', name: 'Om Shankar Jha',description: 'Cloud Architect', link: '',),
                Friend(photo: 'assets/images/ayush.jpg', name: 'Ayush Kr Singh', description: 'MERN Stack Developer',link: 'https://www.linkedin.com/mwlite/in/ayush-singh-4aa88b165'),
              ],
            ),
          ],
        ),
      )
    );
  }
}

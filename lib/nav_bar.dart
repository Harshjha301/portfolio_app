import 'package:flutter/material.dart';
import 'package:PortfolioApp/friends.dart';
import 'package:share_plus/share_plus.dart';
import 'favourites.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color(0xffeeeeee),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'Harsh Nath Jha',
                style: TextStyle(fontSize: 17),
              ),
              accountEmail: const Text('harshjha301@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                      child: Image.asset(
                'assets/images/Passport_Photo.jpeg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ))),
              decoration: const BoxDecoration(
                color: Color(0xff66bfbf),
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favourites'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Favourites(),
                    ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Friends'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Friends(),
                    ));
              },
            ),
            const Divider(
              height: 80,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Share Link to Website'),
                      content: const SelectableText(
                          'https://harshjha301.github.io/Personal-Website/'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Share.share(
                                  'https://harshjha301.github.io/Personal-Website/');
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey),
                            child: const Center(
                              child: Text('Share link to website'),
                            )),
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Center(
                              child: Text(
                            'Close',
                            style: TextStyle(color: Colors.blueGrey),
                          )),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(Icons.file_open_outlined),
              title: const Text('Show Resume'),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Click the button to display Resume'),
                    actions: [
                      ElevatedButton(
                        onPressed: () async {
                          Uri url = Uri.parse(
                              'https://drive.google.com/file/d/1BozGp1ctVVgYYB9HB99bD0wB-8ZM36Rb/view?usp=sharing');
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey),
                        child: const Center(child: Text('Show')),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Center(
                            child: Text(
                          'Close',
                          style: TextStyle(color: Colors.blueGrey),
                        )),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Divider(
              height: 80,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Exit'),
              onTap: () => Navigator.of(context).pop(true),
            )
          ],
        ));
  }
}

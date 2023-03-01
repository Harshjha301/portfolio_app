import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'nav_bar.dart';

void main() => runApp(const MyApp());

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset('assets/images/Passport_Photo.jpeg'),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PortfolioApp',
      theme: ThemeData(fontFamily: 'Itim', scaffoldBackgroundColor: const Color(0xffeeeeee),),
      home: const MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text('Portfolio App'),
          backgroundColor: const Color(0xff66bfbf),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const ImageScreen();
                        }));
                      },
                      child: Hero(
                        tag: 'imageHero',
                        child: Container(
                          margin: const EdgeInsets.only( top: 10, bottom: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/Passport_Photo.jpeg'),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: const Color(0xff66bfbf) ,width: 2)
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Column(
                            children: const [
                              Text(
                                "Harsh Nath Jha",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 25
                                ),
                              ),
                              SizedBox(height: 10,),
                              Center(
                                child: Text(
                                  '''I am a C/C++ and Flutter Developer.\nI have worked on applications for legacy POS terminals\nand smartphones.''',
                                  style: TextStyle(
                                    color: Color(0xff40514e),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              const Text(
                                "My Skills",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                "Mobile Application Development",
                                style: TextStyle(
                                    color: Color(0xff66bfbf),
                                    fontSize: 15
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: const [
                                  Icon(Icons.phone_android_outlined),
                                  SizedBox(width: 40,),
                                  Center(
                                    child: Text(
                                      '''I started learning to code\nbecause of my curiosity in mobile games.\nI have experience in mobile app development\nfrom requirement gathering to deployment.''',
                                      style: TextStyle(
                                        color: Color(0xff40514e),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                "C/C++ Development",
                                style: TextStyle(
                                    color: Color(0xff66bfbf),
                                    fontSize: 15
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: const [
                                  Center(
                                    child: Text(
                                      '''I have experience in developing\napplications for legacy payment terminals\nusing C and C++.''',
                                      style: TextStyle(
                                        color: Color(0xff40514e),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  Icon(Icons.payment_outlined),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                "Android Development",
                                style: TextStyle(
                                    color: Color(0xff66bfbf),
                                    fontSize: 15
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: const [
                                  Icon(Icons.android_outlined),
                                  SizedBox(width: 40,),
                                  Center(
                                    child: Text(
                                      '''I have worked in mobile application\ndevelopment using Android for smartphones\nand Android POS terminals.''',
                                      style: TextStyle(
                                        color: Color(0xff40514e),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Divider(thickness: 1,),
                    const SizedBox(height: 10,),
                    const Text(
                      "Get In Touch",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w100
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      "If you are interested in hiring me!",
                      style: TextStyle(
                          color: Color(0xff66bfbf),
                          fontSize: 15,
                          fontWeight: FontWeight.w100
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      "Love development as much as I do?\nLet's talk about how awesome it is!",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w100
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            Uri url = Uri.parse('https://harshjha301.github.io/Personal-Website/');
                            await launchUrl(url, mode: LaunchMode.externalApplication);
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.web),
                              SizedBox(width: 10.0),
                              Text("Visit Website"),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final Uri params = Uri(scheme: 'mailto', path: 'harshjh301@gmail.com',);
                            await launchUrl(params);
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.email_outlined),
                              SizedBox(width: 10.0),
                              Text("Contact Me"),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}


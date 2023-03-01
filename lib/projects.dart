import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff66bfbf),
        title: const Text('Projects')
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  const Divider(thickness: 5  ),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            const Text(
                              "Verifone SCA Engage Application",
                              style: TextStyle(
                                  color: Color(0xff66bfbf),
                                  fontSize: 20
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Center(
                                  child: Text(
                                    '''My role in this project was to make changes in the\nconfiguration bundle as well as the solution bundle.\n\nIt is an Application that is used in Verifone\nEngage Devices(Mx and Engage range)\nfor payment transactions.''',
                                    style: TextStyle(
                                      color: Color(0xff40514e),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40,),
                            const Text(
                              "Travelex POS Interface",
                              style: TextStyle(
                                  color: Color(0xff66bfbf),
                                  fontSize: 20
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Center(
                                  child: Text(
                                    '''It is an application used for foreign currency\nexchange or Dynamic currency Conversion.\n\nMy role in this project was to make some UI changes\nsuch as creating new menu for POS\ntransaction like Purchase, Void and Refund.''',
                                    style: TextStyle(
                                      color: Color(0xff40514e),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40,),
                            const Text(
                              "QuickSilver (Ingenico Devices)",
                              style: TextStyle(
                                  color: Color(0xff66bfbf),
                                  fontSize: 20
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Center(
                                  child: Text(
                                    '''This application is similar to SCA application but\nis used only for Ingenico devices.\n\nMy role in this project was to make changes\nto the routants that are being called by the\nOS for particular transaction services.''',
                                    style: TextStyle(
                                      color: Color(0xff40514e),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40,),
                            const Text(
                              "SoftPay",
                              style: TextStyle(
                                  color: Color(0xff66bfbf),
                                  fontSize: 20
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Center(
                                  child: Text(
                                    '''This application is similar to Travelex POS interface\nis used for DCC in various locations.\n\nMy role in this project was to make changes to the UI\nas well as make changes in the Card operations.''',
                                    style: TextStyle(
                                      color: Color(0xff40514e),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Divider(thickness: 5,),
                  const SizedBox(height: 10,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

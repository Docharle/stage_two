import 'package:flutter/material.dart';
import 'package:stage_two/widgets/customButtons.dart';
import 'package:stage_two/widgets/customTextField.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController textController = TextEditingController();

  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset('assets/images/hng.jpg'),
          Image.asset('assets/images/i4g.png'),
          Image.asset('assets/images/zuri.png')
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Container(
          child: Column(
            children: [
              Container(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: CustomTextFormField(
                    controller: textController, labelText: "Enter Your Name"),
              )),
              Container(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: CustomTextFormField(
                    controller: numberController,
                    labelText: "Enter Your Number"),
              )),
              Container(
                  child: CustomButton(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [
                                Text('My name is ' +
                                    textController.text +
                                    ' and my phone number is ' +
                                    numberController.text),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: CustomButton(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      text: 'Go back'),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                text: 'Submit',
              )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  child: CustomButton(
                    onTap: _launcherURL,
                    text: 'Go to Zuri internship',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    numberController.dispose();
    super.dispose();
  }

  void _launcherURL() async {
    const _url = "https://internship.zuri.team";
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }
}

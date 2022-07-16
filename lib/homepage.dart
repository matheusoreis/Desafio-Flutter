import 'package:desafio/color.dart';
import 'package:flutter/material.dart';
import './socialbutton.dart';
import './button.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.copyright,
    required this.imgGoogle,
    required this.imgApple,
    required this.imgFacebook,
    required this.logo,
  }) : super(key: key);

  final String copyright;
  final String imgGoogle;
  final String imgApple;
  final String imgFacebook;
  final String logo;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appFullSize = mediaQuery.size;

    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20),
        height: appFullSize.height,
        width: appFullSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 200.0,
              child: Image.asset(
                './assets/img/logo.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Expanded(
                    flex: 8,
                    child: Text(
                      'Esqueceu a senha?',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ButtonDefault(
                      text: 'Entrar',
                      color: Theme.of(context).colorScheme.primary,
                      height: 70.0,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialButton(
                  img: Image.asset(
                    imgFacebook,
                    color: Colors.white,
                  ),
                  width: 80.0,
                  height: 80.0,
                  color: colorFacebook,
                ),
                SocialButton(
                  img: Image.asset(
                    imgGoogle,
                    color: Colors.white,
                  ),
                  width: 80.0,
                  height: 80.0,
                  color: colorGoogle,
                ),
                SocialButton(
                  img: Image.asset(
                    imgApple,
                    color: Colors.white,
                  ),
                  width: 80.0,
                  height: 80.0,
                  color: colorApple,
                ),
              ],
            ),
            Center(
              child: Text(
                copyright,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

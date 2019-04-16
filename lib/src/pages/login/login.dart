import 'package:flutter/material.dart';
import 'package:unsplash/src/pages/login/widgets/button.dart';
import 'package:unsplash/src/pages/login/widgets/input.dart';
import 'package:unsplash/src/shared/widgets/v-gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  VGap(
                    gap: 100,
                  ),
                  SvgPicture.asset('assets/images/svg/logo.svg'),
                  VGap(
                    gap: 50,
                  ),
                  Button(
                    color: Color(0xff3C5080),
                    borderRadius: 60,
                    label: 'Login with Facebook',
                  ),
                  VGap(),
                  Text('or'),
                  VGap(),
                  Input(
                    placeHolder: 'Username or email',
                  ),
                  VGap(),
                  Input(
                    placeHolder: 'Password',
                    isPassword: true,
                  ),
                  VGap(),
                  Button(
                    color: Colors.black,
                    borderRadius: 60,
                    label: 'Login',
                  ),
                  VGap(),
                  Text('Forgot password?'),
                  VGap(),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.center,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Text('Do not have an account?'),
                      Text(
                        'Join',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

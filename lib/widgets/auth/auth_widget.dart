import 'package:flutter/material.dart';
import 'package:movie_seeker/widgets/main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            _FormWidget(),
            _HeaderWidget()
          ],
        ),
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Colors.black);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const SizedBox(height: 25,),
        const Text('In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. '
            'If you do not have an account, registering for an account is free and simple. Click here to get started.',
        style: textStyle),
        const SizedBox(height: 25,),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
                foregroundColor: MaterialStateProperty.all(Colors.white)
            ),
            onPressed: ()=>{},
            child: const Text('Registartion',style: TextStyle(color: Colors.white, fontSize: 16))),
        const SizedBox(height: 25,),
        const Text('If you signed up but didn"t get your verification email, click here to have it resent.',
        style: textStyle,
        ),
        const SizedBox(height: 25,),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.cyan),
              foregroundColor: MaterialStateProperty.all(Colors.white)
          ),
            onPressed: ()=>{},
            child: const Text('verification',style: TextStyle(color: Colors.white, fontSize: 16))),
      ],
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);


  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText;
  void _auth() {
   var password = _passwordTextController.text;
   var login = _loginTextController.text;

  if (password == 'admin' && login == 'admin') {
    errorText = '';
    Navigator.of(context).pushReplacementNamed('/main_screen');

  } else {
    errorText = 'wrong pass or login';
  }
}
  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Colors.black);
    const textField = InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10)
    );
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Username', style: textStyle,),
        const SizedBox(height: 10,),
        TextField(decoration: textField, controller: _loginTextController,),
        const SizedBox(height: 10,),
        const Text('password',style: textStyle,),
        const SizedBox(height: 10,),
         TextField(
            decoration: textField,
            obscureText: true,
          controller: _passwordTextController,
        ),
        const SizedBox(height: 10,),
        if (errorText != null)  Text(errorText, style: const TextStyle(color: Colors.red),),
        Row(
          children: [
            TextButton(onPressed: _auth,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyan),
                    foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 16),)),
            const SizedBox(width: 20,),
            TextButton(onPressed: _resetPassword,
                child: const Text("Reset password",style: TextStyle(fontSize: 16)))
          ],
        )
      ],
    );
  }
}

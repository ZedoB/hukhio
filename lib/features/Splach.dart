import 'dart:async';

import 'package:chat_app/core/constants/images/asset_images.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/login/presentation/view/login.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});



  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(AssetImages.whatsAppIcon,width: 100,height: 100,),
            const SizedBox(height:60),
            Text('WhatsApp',style: Styles.textStyle24),
            const SizedBox(height:60),
            const Text('The best chat app for this century',style: TextStyle(color: Colors.blue))
          ],
        )
      ),
    );
  }
}

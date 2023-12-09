import 'package:flutter/material.dart';
import 'package:ieee_provider_task/register_provider.dart';
import 'package:ieee_provider_task/register_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterProvider>(
      create: (context)=> RegisterProvider(),
      child: const MaterialApp(
        home: RegisterScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
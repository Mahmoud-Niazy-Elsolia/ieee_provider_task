import 'package:flutter/material.dart';
import 'package:ieee_provider_task/custom_button.dart';
import 'package:ieee_provider_task/register_provider.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var registerProvider = Provider.of<RegisterProvider>(context);
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome${registerProvider.user!.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              registerProvider.user!.email,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              registerProvider.user!.phone,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomMaterialButton(
                  onPressed: () {
                    Provider.of<RegisterProvider>(context,listen: false,).increase();
                  },
                  label: '+',
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:
                      Text('${Provider.of<RegisterProvider>(context).counter}'),
                ),
                CustomMaterialButton(
                  onPressed: () {
                    Provider.of<RegisterProvider>(context,listen: false,).decrease();
                  },
                  label: '-',
                  width: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

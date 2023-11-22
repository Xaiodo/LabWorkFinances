import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/body/body_view.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/header/header_view.dart';

class InputFormView extends StatelessWidget {
  const InputFormView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Вікно для введення даних',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: MediaQuery.of(context).size.height * 0.05,
            ),
            child: const Column(
              children: [
                SizedBox(height: 30),
                HeaderView(),
                SizedBox(height: 20),
                BodyView(),
              ],
            ),
          ),
        ),
      );
}

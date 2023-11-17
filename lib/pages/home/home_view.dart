import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/body/body_view.dart';
import 'package:flutter_labwork_2/pages/header/header_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFF191919),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: MediaQuery.of(context).size.height * 0.1,
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Вікно для введення даних',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(height: 30),
                const HeaderView(),
                const SizedBox(height: 20),
                const BodyView(),
              ],
            ),
          ),
        ),
      );
}

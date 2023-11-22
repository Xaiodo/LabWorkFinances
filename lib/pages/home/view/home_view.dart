import 'package:flutter/material.dart';
import 'package:flutter_labwork_2/pages/home/pages/form_calculations/view/form_calculations_view.dart';
import 'package:flutter_labwork_2/pages/home/pages/input_form/view/input_form_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InputFormView(),
                      ),
                    ),
                    child: const Center(
                      child: Text('Ввід даних', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FormCalculationsView(),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Розрахунки',
                        style: TextStyle(
                          fontSize: 48,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project_1/Views/home.dart';
import '../../Providers/sliderProvider.dart';

class MySlider extends StatelessWidget {
  const MySlider({super.key});

  @override
  Widget build(BuildContext context) {
    print("viewbuild");
    final sliderProvider = Provider.of<SliderProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider App'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Consumer<SliderProvider>(
          builder: (context, sliderProviderModel, child) {
            return Column(
              children: [
                Slider(
                    value: sliderProviderModel.sliderValue,
                    onChanged: (value) {
                      sliderProviderModel.sliderValue = value;
                      print("inside UI : ${sliderProviderModel.sliderValue}");
                      sliderProvider.onChangeSlider();
                    }),

                // spacing
                const SizedBox(
                  height: 20,
                ),

                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.red
                              .withOpacity(sliderProviderModel.sliderValue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Container 2"),
                            Text(
                                "Opacity: ${sliderProviderModel.sliderValue.toStringAsFixed(2)}"),
                          ],
                        )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.green
                              .withOpacity(sliderProviderModel.sliderValue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Container 2"),
                            Text(
                                "Opacity: ${sliderProviderModel.sliderValue.toStringAsFixed(2)}"),
                          ],
                        )),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

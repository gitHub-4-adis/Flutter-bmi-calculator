import 'package:flutter/material.dart';
import 'bars.dart';
import 'input_hm.dart';

class CreateApp extends StatefulWidget {
  const CreateApp({Key? key}) : super(key: key);

  @override
  State<CreateApp> createState() => _CreateAppState();
}

class _CreateAppState extends State<CreateApp> {
  String height = 'Height';
  String weight = 'Weight';
  String result = '0';
  String text = '';

  final TextEditingController _tecw = TextEditingController();
  final TextEditingController _tech = TextEditingController();

  void calculateBmi() {
    double res =
        double.parse(weight) / (double.parse(height) * double.parse(height));
    result = res.toStringAsFixed(3);

    if (res < 18.5) {
      text = 'Underweight';
    } else if (res >= 18.5 && res <= 24.9) {
      text = 'Healthy';
    } else if (res >= 25 && res <= 29.9) {
      text = 'Overweight';
    } else if (res <= 30 && res <= 39.9) {
      text = 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: null,
        backgroundColor: const Color.fromARGB(255, 30, 29, 25),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 25),
                child: const Text(
                  'BMI Calculator',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 18,
                  ),
                ),
              ),
              // padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Input(height, _tech),
                  Input(weight, _tecw),
                ],
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: GestureDetector(
                  onTap: () {
                    height = _tech.text;
                    weight = _tecw.text;
                    calculateBmi();
                    height = 'Height';
                    weight = 'Weight';
                    setState(() {});
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Text(
                result,
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontSize: 60,
                ),
              ),

              Container(
                height: currentHeight / 8,
                margin:  EdgeInsets.fromLTRB(0, 20, 0, currentHeight / 30),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),

              RightBar(30),
              const SizedBox(
                height: 15,
              ),
              RightBar(80),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 55),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftBar(60),
                    RightBar(30),
                  ],
                ),
              ),

              LeftBar(60),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => SliderPageState();
}

class SliderPageState extends State<SliderPage> {
  // Inicializo las variables para manipular el checkbox, slider, switch y la imagen
  double _currentSliderValue =  20;
  double max = 100;
  double min = 0;
  bool checkedValue = false;
  bool isSwitched = false;
  double scale = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Slider(
              value: _currentSliderValue,
              max: max,
              min: min,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                  scale = value;
                });
              },
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: CheckboxListTile(
              title: const Text("Bloquear Slider"),
              value: checkedValue,
              onChanged: (newValue) {
                setState(() {
                  checkedValue = newValue!;
                  _currentSliderValue = 0;
                  if(checkedValue) {
                    max = 0;
                    scale = 0;
                  } else {
                    max = 100;
                  }
                });
              },
            )
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SwitchListTile(
              value: isSwitched,
              title: const Text("Bloquear Slider"),
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  _currentSliderValue = 0;
                  if(isSwitched) {
                    max = 0;
                    scale = 0;
                  } else {
                    max = 100;
                  }
                });
              },
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Center(
              child: Image.asset('image.jpg', height: scale + 250, width: scale + 450),
            ),
          ),
        ],
      ),
    );
  }
}
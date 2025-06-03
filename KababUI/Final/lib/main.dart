import 'package:flutter/material.dart';

void main() => runApp(const ScaleTransitionExampleApp());

class ScaleTransitionExampleApp extends StatelessWidget {
  const ScaleTransitionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: ScaleTransitionExample());
  }
}

class ScaleTransitionExample extends StatefulWidget {
  const ScaleTransitionExample({super.key});

  @override
  State<ScaleTransitionExample> createState() => _ScaleTransitionExampleState();
}

class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceOut,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

//=======================Variables
String presentValue = 'Select Kababas';
var kababasList = [
  'Select Kababas',
  'Regular',
  'Vilnius Kababas',
  'Wrap Style',
  'Burito Style',
  'Open Kababas'
];

List<bool> checked = [false,false,false,false];

int selectedRadio=0;

List<bool> choice =[false,false,false];

double sliderValue = 3;

bool isON = true;


//=======================Variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ScaleTransition(
              scale: _animation,
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200.0,
                  height: 80.0,
                  child: Image.asset("assets/images/logo.jpg")
                ),
              ),
            ),
            //===============================

          Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.pink[200]),
            child: DropdownButton(
            style: TextStyle(color: Colors.black, fontSize: 16),
            dropdownColor: Colors.pink[200],
            focusColor: Colors.pink[100],
            icon: Icon(Icons.arrow_downward),
            value: presentValue,
            items: kababasList.map((String items) {
              return DropdownMenuItem(value: items, child: Text(items));
            }).toList(),
            onChanged: (String? newValue) {
              //how to disallow "Select Kababas" from being selected
                setState(() {
                  presentValue = newValue!;
                  print("You have selected $presentValue");
                });
              
            },
        ),
          ),
        //=============================

        Text("Extras"),
        Row(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Expanded(
              child: CheckboxListTile(
              value: checked[0],
              onChanged: (bool? value) {
                setState(() {
                  checked[0] = value!;
                });
              },
              title: const Text('Fries'),
              controlAffinity: ListTileControlAffinity.leading,
          ),
            ),

          Expanded(
            child: CheckboxListTile(
              value: checked[1],
              onChanged: (bool? value) {
                setState(() {
                  checked[1] = value!;
                });
              },
              title: const Text('Drink'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),

          Expanded(
            child: CheckboxListTile(
              value: checked[2],
              onChanged: (bool? value) {
                setState(() {
                  checked[2] = value!;
                });
              },
              title: const Text('Cookie'),
              controlAffinity: ListTileControlAffinity.leading,

            ),
          ),

          Expanded(
            child: CheckboxListTile(
              value: checked[3],
              onChanged: (bool? value) {
                setState(() {
                  checked[3] = value!;
                });
              },
              title: const Text('KetchUp'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          ],
        ),
        //=============================

        Text("Meat"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          Expanded(child:
            ListTile(
            title: Text("Male"),
            leading: Radio(
              value: 1,
              groupValue: selectedRadio,
              activeColor: Colors.green,
              onChanged: (val) {
              print("RadioButton $val selected");
                selectedRadio = val!;
                setState(() {});
              },
            ),
          ),
        ),
    
          Expanded(child:
            ListTile(
            title: Text("Female"),
            leading: Radio(
              value: 2,
              groupValue: selectedRadio,
              activeColor: Colors.green,
              onChanged: (val) {
                print("RadioButton $val selected");
                selectedRadio = val!;
                setState(() {});
              }
            ),
          ),
        ),
    
          Expanded(child:
            ListTile(
            title: Text("EMail"),
            leading: Radio(
              value: 3,
              groupValue: selectedRadio,
              activeColor: Colors.green,
              onChanged: (val) {
                print("RadioButton $val selected");
                selectedRadio = val!;
                setState(() {});
              },
            ),
          ),
        ),
    ]),
//==============================

      Text("Padazai"),
      Row(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChoiceChip(
                    label: Text('FootBall'),
                    selected: choice[0] == true,
                    onSelected: (bool selected) {
                      setState(() {
                        choice[0] = selected ? true : false;
                      });
                    },
                  ),
            ChoiceChip(
                    label: Text('BasketBall'),
                    selected: choice[1] == true,
                    onSelected: (bool selected) {
                      setState(() {
                        choice[1] = selected ? true : false;
                      });
                    },
                  ),

                  ChoiceChip(
                    label: Text('Tennis'),
                    selected: choice[2] == true,
                    onSelected: (bool selected) {
                      setState(() {
                        choice[2] = selected ? true : false;
                      });
                    },
                  ),
          ],
        ),
//==================================

        Text("Spice"),
        Slider(
          value: sliderValue,
          max: 5,
          divisions: 5,
          label: sliderValue.toString(),
          onChanged: (double value) {
            setState(() {
              sliderValue = value;
              print(sliderValue);
            });
          },
        ),
//====================================

Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('OFF'),
            
            Switch(
            value: isON,
            activeColor: Colors.red,
            onChanged: (bool value) {              
              setState(() {
                isON = value;
                print(isON);
              });

            },
          ),
            
          Text('ON')  //add a bit more UI
            
           
          ],
        ),




          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Place Order',
        child: const Icon(Icons.menu),
      ),
    );
  }
}

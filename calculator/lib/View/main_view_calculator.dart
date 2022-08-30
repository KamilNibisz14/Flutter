import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Calculation.dart';
import 'custome_round_button.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double button_size = width / 5;
    double fontSize = width / 14;
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(flex:1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded( flex:1, child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        child: Text(
                          '${context.watch<Calculate>().operator}',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          )
                        ))),
                      Expanded( flex:1, child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        child: Text(
                            '${context.watch<Calculate>().result}',
                            textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize *1.8,
                          )
                        ))),
                    ],
                  )
              ),
              Expanded(flex:2,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: 'AC',
                              color: Color(0xFFA5A5A5),
                              tapColor: Color(0xededed),
                              textcolor: Colors.black,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().clearAC();
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: 'C',
                              color: Color(0xFFA5A5A5),
                              tapColor: Color(0xededed),
                              textcolor: Colors.black,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().clearC();
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '+/-',
                              color: Color(0xFFA5A5A5),
                              tapColor: Color(0xededed),
                              textcolor: Colors.black,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().opposite_number();
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '/',
                              color: Color(0xFFF09A37),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().operation_button_click('/');
                              },
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '7',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('7');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '8',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('8');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '9',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('9');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '*',
                              color: Color(0xFFF09A37),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().operation_button_click('*');
                              },
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '4',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('4');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '5',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('5');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '6',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('6');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '-',
                              color: Color(0xFFF09A37),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize * 1.5,
                              onPress: (){
                                context.read<Calculate>().operation_button_click('-');
                              },
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '1',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('1');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '2',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('2');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '3',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('3');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '+',
                              color: Color(0xFFF09A37),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().operation_button_click('+');
                              },
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(flex:2, child:Center(
                              child: ElevatedButton(
                                child: Text('0',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: fontSize,
                                    )),
                                onPressed: (){
                                  context.read<Calculate>().number_button_click('0');
                                },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(button_size * 2.2, button_size),
                                  primary: Color(0xFF333333),
                                  onPrimary: Color(0xededed),
                                    shape: StadiumBorder(),
                                ),
                              ),
                            ),),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '.',
                              color: Color(0xFF333333),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().number_button_click('.');
                              },
                            )),
                            Expanded(child:RoundedButton(
                              size: button_size,
                              text: '=',
                              color: Color(0xFFF09A37),
                              tapColor: Color(0xededed),
                              textcolor: Colors.white,
                              fontSize: fontSize,
                              onPress: (){
                                context.read<Calculate>().operation_button_click('=');
                              },
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
    );
  }
}

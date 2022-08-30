import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Calculation.dart';
import 'custome_button_card.dart';

class CalculatorView2 extends StatelessWidget {
  const CalculatorView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize = width / 20;
    double calculator_width = width * 0.8;
    double panel_size = width * 0.9;
    double eual_panel = width *0.75;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 30),
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: calculator_width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade50,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: Offset(25, 25),
                          blurRadius: 2,
                          spreadRadius: -10)
                    ],

                  ),
                  child: Column(
                    children: [
                      Expanded(flex:9, child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded( flex:1, child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                              child: Text(
                                  '${context.watch<Calculate>().operator}',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSize * 0.8,
                                  )
                              ))),
                          Expanded( flex:1, child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                              child: Text(
                                  '${context.watch<Calculate>().result}',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: fontSize *1.8,
                                  )
                              ))),
                          Expanded(flex: 6, child: Container())
                        ],
                      )),
                      Expanded(flex:2,  child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            context.read<Calculate>().operation_button_click('=');
                          },
                          child: Container(
                            width: eual_panel,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.deepOrange.withOpacity(0.8),
                                  Colors.black.withOpacity(0.8),
                                ],
                              ),
                            ),
                            child: Center(child: Text('=', style: TextStyle(fontSize: 30)),
                          ),
                        ),
                      )),
                      )
                    ],
                  ),
                ),
              ),
              Center(child: Container(
                width: panel_size,
                height: panel_size,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.deepPurple.withOpacity(0.75),
                        Colors.black.withOpacity(0.75),
                      ],
                    ),
                ),
                child: Column(
                  children: [
                    Expanded(child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: CustomeCard(
                          content: 'AC',
                          onTap: (){
                            context.read<Calculate>().clearAC();
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: 'C',
                          onTap: (){
                            context.read<Calculate>().clearC();
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '+/-',
                          onTap: (){
                            context.read<Calculate>().opposite_number();
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '/',
                          onTap: (){
                            context.read<Calculate>().operation_button_click('/');
                          },
                          bottomBorder: true,
                        )),
                      ],
                    )),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: CustomeCard(
                          content: '7',
                          onTap: (){
                            context.read<Calculate>().number_button_click('7');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '8',
                          onTap: (){
                            context.read<Calculate>().number_button_click('8');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '9',
                          onTap: (){
                            context.read<Calculate>().number_button_click('9');
                          },
                          rightBorder: true,
                          bottomBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '*',
                          onTap: (){
                            context.read<Calculate>().operation_button_click('*');
                          },
                          bottomBorder: true,
                        )),
                      ],
                    )),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: CustomeCard(
                          content: '4',
                          onTap: (){
                            context.read<Calculate>().number_button_click('4');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '5',
                          onTap: (){
                            context.read<Calculate>().number_button_click('5');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '6',
                          onTap: (){
                            context.read<Calculate>().number_button_click('6');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '-',
                          onTap: (){
                            context.read<Calculate>().operation_button_click('-');
                          },
                          bottomBorder: true,
                        )),
                      ],
                    )),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: CustomeCard(
                          content: '1',
                          onTap: (){
                            context.read<Calculate>().number_button_click('1');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '2',
                          onTap: (){
                            context.read<Calculate>().number_button_click('2');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '3',
                          onTap: (){
                            context.read<Calculate>().number_button_click('3');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: '+',
                          onTap: (){
                            context.read<Calculate>().operation_button_click('+');
                          },
                          bottomBorder: true,
                        )),
                      ],
                    )),
                    Expanded(child: Row(
                      children: [
                        Expanded(flex:3, child: CustomeCard(
                          content: '0',
                          onTap: (){
                            context.read<Calculate>().number_button_click('0');
                          },
                          bottomBorder: true,
                          rightBorder: true,
                        )),
                        Expanded(child: CustomeCard(
                          content: ',',
                          onTap: (){

                          },
                        )),
                      ],
                    )),

                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

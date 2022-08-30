import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Calculation.dart';
import 'custom_widget.dart';

class CalculatorView3 extends StatelessWidget {
  const CalculatorView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double buttonContentFontSize = width / 15;
    double buttonSecondContentFontSize = width / 30;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(flex: 1, child: Container(color: Colors.white,)),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded( child: CudtomWidget(
                      content: '7',
                      secondContent: 'cos',
                      isLeftBorder: false,
                      isTopBorder: false,
                      contentFontSize: buttonContentFontSize,
                      secondContentFontSize: buttonSecondContentFontSize,
                      contentFontColor: Colors.white,
                      secondContentFontColor: Colors.white,
                      tapAction: (){
                        print('aaa');
                      },
                      holdAction: (){
                        print('bbb');
                      },
                    )),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                    Expanded(child:Container()),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/counter_bloc.dart';
import 'package:flutter_with_bloc/counter_page.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var _height=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: _height*0.5,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            height: _height*0.5,
            top: _height*0.5,
            child: Column(
              children: [
                Expanded(
                  //Make stateful widget available to the widget tree
                  child: BlocProvider(
                    create: (BuildContext context)=>CounterBloc(),
                    child: CounterPage(),
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
  
}
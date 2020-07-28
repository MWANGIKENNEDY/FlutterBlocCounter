import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/counter_bloc.dart';

class CounterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterPage();
  }
}
class _CounterPage extends State<CounterPage>{

  @override
  Widget build(BuildContext context) {

    final CounterBloc counterBloc=BlocProvider.of<CounterBloc>(context);

    @override
    void dispose() {
      counterBloc.close();
      super.dispose();
    }

    // TODO: implement build
    return Container(
        color: Colors.cyan,
        child: Material(
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc,int>(
                builder: (context,counter){
                  return Text("Number $counter");
                },
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                  onPressed: ()=>{
                    counterBloc.add(CounterEvents.increment)
                  },
                    child: Text("Increment"),
                  ),
                  RaisedButton(
                    onPressed: ()=>{
                      counterBloc.add(CounterEvents.decrement)
                    },
                    child: Text("Decrement"),
                  )
                ],
              )
            ],
          ),
        ),
      );
  }


}
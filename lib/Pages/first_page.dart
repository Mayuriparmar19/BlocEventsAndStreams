import 'package:bloc_all/Internet%20Bloc/internet_bloc.dart';
import 'package:bloc_all/Internet%20Bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Center(
             child: BlocBuilder<InternetBloc,InternetState>(builder: (BuildContext context, state) {
               if(state is InternetGainedState){
                 return const Text('Connected To Internet');
               }
               else if (state is InternetLostState){
                 return const Text('Internet connection Lost');
               }
               return  const Text('Loading.....');
             },
                ),
           ),
         ],
       ),
    );
  }
}

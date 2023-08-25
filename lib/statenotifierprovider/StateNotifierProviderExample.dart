import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers/statenotifierprovider/StateNotifierExample.dart';

/// [counterprovider] is the object of the StateNotifierProvider
final counterprovider=StateNotifierProvider<StateNotifierExample,int>((ref) => StateNotifierExample());

class StateNotifierProviderExample extends StatelessWidget {
  const StateNotifierProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateNotifierProviderExamplePage(),
    );
  }
}
class StateNotifierProviderExamplePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    /// [counter] will store the changes made to the [counterprovider]
    final counter=ref.watch(counterprovider);

    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff152943),title: Text("StateNotifierProviderExample")),
        floatingActionButton:
        FloatingActionButton(
          onPressed: (){

            /// using [notifier] we can made changes even in the read method
            ref.read(counterprovider.notifier).increment();
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xff152943),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text("You have pushed the button this many times:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 17),),
              ),
              Text('${counter}',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 30))
            ],
          ),
        )
    );
  }
}


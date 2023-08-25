import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers/stateprovider/StateProviderExample.dart';

/// [counterprovider] is the object of the StateProvider
/// here the type of state handled by the Stateprovider is iny
final counterprovider=StateProvider<int>((ref) => 0);

class StateProviderExample extends StatelessWidget {
  const StateProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateProviderExamplePage(),
    );
  }
}
class StateProviderExamplePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    /// the watch method will listen to changes made in the provider and return the int value to [counter]
    final counter=ref.watch(counterprovider);

    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff152943),title: Text("StateProviderExample")),
        floatingActionButton:
        FloatingActionButton(
          onPressed: (){

            /// the [notifier] is used to made changes even in read method which gives access to update() method using which we can update the state
            ref.read(counterprovider.notifier).update((state) => state+1);
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


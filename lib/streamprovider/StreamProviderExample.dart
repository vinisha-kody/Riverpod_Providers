import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers/statenotifierprovider/StateNotifierExample.dart';

int _countervalue=0;

final counterprovider=StreamProvider<int>((ref) {
  return Stream.periodic(Duration(seconds: 1),(_) => _countervalue++);
});

class StreamProviderExample extends StatelessWidget {
  const StreamProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamProviderExamplePage(),
    );
  }
}
class StreamProviderExamplePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final counter=ref.watch(counterprovider);

    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff152943),title: Text("StreamProviderExample")),
        floatingActionButton:
        FloatingActionButton(
          onPressed: (){
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


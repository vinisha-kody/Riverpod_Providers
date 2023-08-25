import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_providers/futureprovider/FutureProviderExample.dart';
import 'package:riverpod_providers/futureprovider/FutureProviderCounter.dart';


// conterprovider is the object of the FutureProvider
// the above line will return 0 after delay of 1 sec
final counterprovider=FutureProvider<int>((ref) async{
  return await Future.delayed(Duration(seconds: 1),() => 0);
});



class FutureProviderExample extends StatelessWidget {
  const FutureProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureProviderExamplePage(),
    );
  }
}
class FutureProviderExamplePage extends ConsumerWidget {

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    // the below line will listen to changes
    final counter=ref.watch(counterprovider);

    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff152943),title: Text("FutureProviderExample")),
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
              Text('${counter.value}',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 30))
            ],
          ),
        )
    );
  }
}


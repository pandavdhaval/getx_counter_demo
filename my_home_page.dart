import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_demo/controllers/my_home_page_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var homePageController=Get.put(MyHomePageController());
  // var homepege = Get.put(MyHomePageController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
              '${homePageController.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ),
            // Obx(() => Text("${homepege.counter}",style:Theme.of(context).textTheme.headline4)),

           Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
                FloatingActionButton(
                 onPressed: homePageController.incrementCounter,
                 tooltip: 'Increment',
                 child: const Icon(Icons.add),
                ), // This trailing comma makes auto-formatting nice

               FloatingActionButton(
                 onPressed: homePageController.decreament,
                 tooltip: 'decrment',
                 child: const Icon(Icons.remove),
               ), //
           ],)
          ],
        ),
      ),


      // floatingActionButton: FloatingActionButton(
      //   onPressed: homePageController.incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      //
      // This trailing comma makes auto-formatting nice
    );
  }
}

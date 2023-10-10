import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "SnackBar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Getx SnackBar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                        "SnackBar Title",
                        "SWT Technologies",
                      snackPosition: SnackPosition.BOTTOM,
                      // titleText: Text("Another Title"),
                      // messageText: Text(
                      //   "Another Message",
                      //   style: TextStyle(color: Colors.white),
                      // ),
                      colorText: Colors.red,
                      backgroundColor: Colors.black,
                      borderRadius: 30,
                      margin: EdgeInsets.all(10),
                      animationDuration: Duration(milliseconds: 3000),
                      backgroundGradient: LinearGradient(colors: [Colors.red, Colors.green]),
                    borderColor: Colors.purple,
                      borderWidth: 4,
                      boxShadows: [
                        BoxShadow(
                          color: Colors.yellow,
                          offset: Offset(30,50),
                          spreadRadius: 20,
                          blurRadius: 8,
                        ),
                      ],
                      isDismissible: true,
                      // dismissDirection:
                      forwardAnimationCurve: Curves.bounceInOut,
                      // duration: Duration(milliseconds: 8000),
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      shouldIconPulse: false,
                      leftBarIndicatorColor: Colors.white,
                      mainButton: TextButton(
                        onPressed: (){},
                        child: Text("Retry Clicked"),
                      ),
                      onTap: (val){
                          print("SnackBar Clicked");
                      },
                      overlayBlur: 5,
                      // overlayColor: Colors.grey,
                      // padding: EdgeInsets.all(50),
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.orange,
                      progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      reverseAnimationCurve: Curves.bounceInOut,
                      snackbarStatus: (val){
                          print(val);
                      },
                      userInputForm: Form(child: Row(
                        children: [
                          Expanded(child: TextField())
                        ],
                      ))
                    );
                  },
                  child: Text("Show SnackBar"))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HUMMING\nBIRD.'),
        actions: [
          TextButton(onPressed: () {}, child: Text('Episodes')),
          TextButton(onPressed: () {}, child: Text('About')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "FLUTTER WEB.\nTHE BASICS",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Text(
                "In this course we will go over the basics of using\n"
                "Flutter Web for development. Topics will include\n"
                "Responsive Layout, Deploying, Font Changes, Hover\n"
                "functionality, Models and more.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(180, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("join course")),
              )
            ],
          ),
        ),
      ),
    );
  }
}

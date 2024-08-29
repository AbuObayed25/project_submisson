import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
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
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FLUTTER WEB.\nTHE BASICS",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "In this course we will go over the basics of using\n"
                      "Flutter Web for development. Topics will include\n"
                      "Responsive Layout, Deploying, Font Changes, Hover\n"
                      "functionality, Models and more.",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35),
                child: Column(
                 // crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(180, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: Text("join course")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:medical_app/Homepage.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/Screenshot 2023-05-09 141043.png')),
              SizedBox(
                height: 20,
              ),
              Text('All Specialists in one app' , style: TextStyle(
                  fontSize: 24 , fontWeight: FontWeight.bold , color: Colors.black
              ),),
              SizedBox(
                height: 20,
              ),
              Text('Find Your doctor and make an app appointment with one tap' , style: TextStyle(
                  fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.grey[500]
              ),),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                    child: Text('Get Started' , style: TextStyle(
                        fontSize: 18 , color: Colors.white
                    ))),
              )
      ],
          ),
        ),
      )
    );
  }
}

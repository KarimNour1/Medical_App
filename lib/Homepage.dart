import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);
  int currentindex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: 'notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_on_sharp), label: 'Services'),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello,' , style: TextStyle(
                            fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.black
                          ),),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Karim Nour',
                              style: TextStyle(
                              fontSize: 24 , fontWeight: FontWeight.bold , color: Colors.black
                          )),
                        ],
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.person , color: Colors.deepPurple,),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/Screenshot 2023-05-09 140954.png')),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('How do you feel ?',
                                  style: TextStyle(
                                      fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Fill out your medical card right now',
                                  style: TextStyle(
                                      fontSize: 18 , color: Colors.black
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: TextButton(onPressed: (){},
                                    child: Text('Get Started' , style: TextStyle(
                                        fontSize: 18 , color: Colors.white
                                    ))),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search , color: Colors.black,),
                            hintText: 'How we can help you ?',
                          border: InputBorder.none,
                            ),
                      ),
                    ),

                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 80,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Service(Icons: 'assets/icons/pngtree-line-black-tooth-dental-icon-vector-png-image_6068291.png', Name: 'Dentist'),
                        Service(Icons: 'assets/icons/image_processing20200712-26190-x9pkg.png', Name: 'Surgeon'),
                        Service(Icons: 'assets/icons/download.png', Name: 'Surgeon'),


                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 20),
                  child: Row(
                    children: [
                      Text('Doctor List',
                          style: TextStyle(
                              fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black
                          )),
                      Spacer(),
                      Text('See All',
                          style: TextStyle(
                              fontSize: 16   , fontWeight: FontWeight.bold , color: Colors.grey[500]
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Doctors(Images: 'assets/images/Doctor-Mask-PNG-Image.png',
                            rate: '4,9',
                            DocName: "Dr.Arlene McCopy",
                            DocPosition: 'Therapist , 7 y.e.'),
                        Doctors(
                            Images: 'assets/images/Doctor-Mask-PNG-Image.png',
                            rate: '3,5',
                            DocName: "Dr.Albert Flores",
                            DocPosition: 'Surgeon , 5 y.e.'
                        ),
                        Doctors(
                            Images: 'assets/images/Doctor-Mask-PNG-Image.png',
                            rate: '3,5',
                            DocName: "Dr.Albert Flores",
                            DocPosition: 'Surgeon , 5 y.e.'
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget Service({
    @required String? Icons,
    @required String? Name,
})=> Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(Icons! , width: 50,height: 50,),
            SizedBox(
              width: 10,
            ),
            Text(Name! , style: TextStyle(
                fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.black
            ))
          ],
        ),
      ),
    ),
  );

  Widget Doctors({
    @required String? Images,
    @required String? rate,
    @required String? DocName,
    @required String? DocPosition,
})=> Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Image.asset(Images!),
            ),
            Container(
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star , color: Colors.yellowAccent,),
                  Text(rate! , style: TextStyle(
                      fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.black
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(DocName!,
                style: TextStyle(
                    fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black
                )),
            SizedBox(
              height: 5,
            ),
            Text(DocPosition!,
                style: TextStyle(
                    fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.grey[600]
                )),

          ],
        ),
      ),
    ),
  );
}

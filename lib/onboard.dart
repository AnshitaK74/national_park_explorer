import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:internship/registration.dart';
class onboard extends StatefulWidget {
  const onboard({super.key});

  @override
  State<onboard> createState() => _onboardState();
}

class _onboardState extends State<onboard> {


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.green.shade100,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // good to add for left align
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'WildLife',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Safari Reservation Portal',
                  style: TextStyle(
                    fontSize: screenWidth * 0.02,
                    color: Colors.black,
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/images2.jpeg'),
              ),
            )
          ],


        ),



        body:
        Column(
            children: [
              CarouselSlider(items: [

                Container(

                  child: Image.asset('assets/images/deer2.jpeg',
                   //30% of screen height
                    fit: BoxFit.cover,

                  ),

                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/elephant.jpeg',
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.5, // 80% of screen width
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 2.0, // 30% of screen height
                      fit: BoxFit.cover,

                    ),
                  ),

                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/fox.jpeg',
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.5, // 80% of screen width
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 2.0, // 30% of screen height
                      fit: BoxFit.cover,
                    ),
                  ),

                ),

                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/swans.jpeg',
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.5, // 80% of screen width
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 2.0, // 30% of screen height
                      fit: BoxFit.cover,
                    ),
                  ),

                ),

              ],
                  options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                    viewportFraction: 0.8

              )),

              Padding(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.08,
              vertical: MediaQuery.of(context).size.height*0.07),
                child: SizedBox(width: MediaQuery.of(context).size.width*0.5,height:MediaQuery.of(context).size.width*0.5 ,),
              ),


              
              ElevatedButton(onPressed: () {
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => registration()),
                );
              },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade100,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )),
                child: Text('Registration'),
                
                )




            ]
        )
    );
  }
}

   
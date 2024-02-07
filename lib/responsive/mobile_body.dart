import 'dart:math';
import 'package:anturus/src/Footer.dart';
import 'package:anturus/src/Header.dart';
import 'package:anturus/src/InfoPalette.dart';
import 'package:anturus/src/ProfileImage.dart';
import 'package:anturus/src/ProfileTile.dart';
import 'package:anturus/src/TestimonialTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

/*What are the problems of software development?
Problem 1: Unclear and Ever-Changing Software Requirements.
Problem 2: Inadequate Communication. Problem 3: Confidentiality Of Information.
Problem 4: Too Many Bugs And A Flawed Final Product.*/

class MyMobileBody extends StatefulWidget {
  @override
  _MyMobileBodyState createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody>  with TickerProviderStateMixin{
  late ScrollController _controller;
  late FlutterGifController controller1;
  late FlutterGifController controller2;
  late FlutterGifController controller3;
  double pixels = 0.0;
  var heading = [
    'User Interface & User experience design',
    'Mobile app design & development',
    'Website Design &\nE-commerce Development',
    'Digital Marketing Services',
    'Artificial Intelligence & Machine Learning',
    'project management',
  ];
  var matter = [
    'We offer end to end UI UX services that include branding, mobile app design, responsive web design, user experience consulting, and advertising designs using the latest tools and technologies.',
    'We develop iOS & Android native & cross platform mobile apps with rich features, excellent usability, rock-solid security, and novel capabilities that bridge the gap between the audience and businesses.',
    'Through our innovative and future-ready web development services, we builds your brand aesthetic and encourages your target audience.',
    'Our high-tech expertise in our digital marketing services helps in delivering a high-quality conversion ratio through winning strategies.',
    'We harness the power of our AI & ML & Our highly futuristic solutions developed on most innovative frameworks helps our customer transform to more productive outputs.',
    'Project management is the practice of planning, executing, and controlling the work of a team in order to achieve specific goals and meet predefined success criteria. It involves coordinating resources, tasks, and timelines to ensure that a project is completed on time, within your budget and you will be managing everything.',
  ];
  var mainImages = [
    'assets/uiuxpng.png',
    'assets/app.png',
    'assets/ux.png',
    'assets/dg.png',
    'assets/ai.png',
    'assets/p.png',
  ];

  @override
  void initState() {
    super.initState();
    controller1 = FlutterGifController(vsync: this);
    controller2 = FlutterGifController(vsync: this);
    controller3 = FlutterGifController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
  /*    controller1.repeat(
        min: 0,
        max: 10,
        period: const Duration(milliseconds: 200),
      );
      controller2.repeat(
        min: 0,
        max: 50,
        period: const Duration(milliseconds: 200),
      );
      controller3.repeat(
        min: 0,
        max: 50,
        period: const Duration(milliseconds: 200),
      );*/
    });

    _controller = ScrollController();
    _controller.addListener(() {

      setState(() {
        pixels = _controller.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, kToolbarHeight),
          child: Header()),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [


              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600.0,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180.0, 170.0),
                              child: Container(
                                height: 350.0,
                                width: 700.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(300.0),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 480.0,
                                  width: 400.0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'A digital agency',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 38.0,
                                          fontWeight: FontWeight.w700,

                                        ),
                                      ),
                                      Text(
                                        'shaping your ideas into Mobile App, Website, Software.',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w700,

                                        ),
                                      ),
                                      Text(
                                        'There are endless possibilities in building'
                                        ' your own business. It all starts with an idea.',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,

                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Container(
                                        width: 300.0,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Describe your idea and we will make your idea in to Mobile Apps, Websites, Software.',
                                              style: GoogleFonts.nunito(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'starts from Rs.199/-',
                                              style: GoogleFonts.nunito(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              'Leave your E-mail.Get free quotation.',
                                              style: GoogleFonts.nunito(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 45.0,
                                            width: 230.0,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Enter your email address',
                                                hintStyle: GoogleFonts.nunito(
                                                  fontSize: 12.0,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.0,
                                          ),
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.black87,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Container(
                                              height: 45.0,
                                              width: 100.0,
                                              child: Center(
                                                child: Text(
                                                  'Get Invite',
                                                  style: GoogleFonts.nunito(
                                                    color: Colors.white,
                                                    fontSize: 13.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            /*  Positioned(
                              top: 200.0,
                              left: 100.0,
                              child:

                            )*/
                          ],
                        ),
                      ),
                      /*   Container(
                          height: 600.0,

                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Lottie.asset(
                            'assets/landing.json',
                            repeat: false,
                          )),*/
                    ],
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 3.7,
                width: double.infinity,
                color: Colors.orange.shade50,
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      bottom: pixels,
                      duration: Duration(seconds: 1),
                      right: 10,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      bottom: pixels - 100,
                      duration: Duration(seconds: 1),
                      left: 0,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      bottom: pixels - 200,
                      duration: Duration(seconds: 1),
                      right: 10,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade100,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      bottom: pixels - 400,
                      duration: Duration(seconds: 1),
                      left: 10,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      top: pixels - 300,
                      duration: Duration(seconds: 1),
                      left: 0,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      bottom: pixels - 1000,
                      duration: Duration(seconds: 1),
                      right: 10,
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      curve: Curves.easeIn,
                      duration: Duration(microseconds: 350),
                      top: 50.0,

                      /*          right:pixels>=500?50: pixels-500,*/
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'What we do',
                              style: GoogleFonts.montserrat(
                                fontSize: 38.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'We combine business domain knowledge,\nbest practices, and technical expertise \nto deliver quality solutions that \nadd value to your businesses.',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                          ),
                              ),
                          TextButton(
                            onPressed: () {},
                            child: TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.all(0.0),
                              ),
                              onPressed: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.0,
                                  vertical: 12.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                                child: Text(
                                  'View all services',
                                  style: GoogleFonts.josefinSans(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 9,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 6,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: (orientation ==
                                                Orientation.portrait)
                                            ? 1
                                            : 3),
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.white60,
                                      child: Material(
                                        borderRadius: BorderRadius.circular(50),
                                        elevation: 40,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1.5,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 30.0,
                                            vertical: 12.0,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                mainImages[index],
                                                scale: 5,
                                              ),
                                              Text(
                                                heading[index],
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                matter[index],
                                                style: GoogleFonts.josefinSans(
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 1.5,
                width: double.infinity,
                color: Colors.brown.shade50,
                child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'How it works',
                            style: GoogleFonts.nunito(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'The Process is Simple !',
                            style: GoogleFonts.nunito(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              SizedBox(
                                height: 200.0,
                                child:Image.asset("assets/proto.gif"),

                              ),
                              Text(
                                'Design & Prototype',
                                style: GoogleFonts.nunito(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_downward_sharp,size: 50,),
                              ),

                              SizedBox(
                                height: 200.0,
                                child:Image.asset("assets/test.gif"),

                             ),

                              Text(
                                'Build & test',
                                style: GoogleFonts.nunito(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_downward_sharp,size: 50,),
                              ),

                              SizedBox(
                                height: 100.0,
                              child:Image.asset("assets/launch.gif"),

                              ),
                              Text(
                                'Launch',
                                style: GoogleFonts.nunito(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              primary: Colors.black87,
                              padding: EdgeInsets.all(0.0),
                            ),
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.0,
                                vertical: 8.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                border: Border.all(
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              child: Text(
                                'Explore More',
                                style: GoogleFonts.nunito(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 600.0,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                              top: 140.0,
                              left: 90.0,
                              diameter: 200.0,
                              image:
                              'https://images.unsplash.com/photo-1565623006066-82f23c79210b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
                            ),
                            ProfileImage(
                              top: 160.0,
                              left: 310.0,
                              diameter: 100.0,
                              image:
                              'https://images.unsplash.com/photo-1612282131293-37332d3cea00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1995&q=80',
                            ),
                            ProfileImage(
                              top: 275.0,
                              left: 280.0,
                              diameter: 280.0,
                              image:
                              'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',
                            ),
                            ProfileImage(
                              top: 360.0,
                              left: 90.0,
                              diameter: 170.0,
                              image:
                              'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1900&q=80',
                            ),
                            ProfileTile(
                              top: 380.0,
                              left: 50.0,
                              title: 'I am Gonna give u Color theory',
                              subTitle: 'Scarlett, Designer',
                              factor: 0.5,
                            ),
                            ProfileTile(
                              top: 140.0,
                              left: -10.0,
                              title: 'Photography is an Art, Lets do it ryt!',
                              subTitle: 'Harshell, Photographer',
                              factor: 0.9,
                            ),
                            ProfileTile(
                              top: 160.0,
                              left: 380.0,
                              title: 'I am Gonna give u Color theory',
                              subTitle: 'Scarlett, Designer',
                              factor: 0.4,
                            ),
                            ProfileTile(
                              top: 270.0,
                              left: 440.0,
                              title: 'I am Gonna give u Color theory',
                              subTitle: 'Scarlett, Designer',
                              factor: 1.1,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 600.0,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180.0, 170.0),
                              child: Container(
                                height: 350.0,
                                width: 700.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 200.0,
                              left: -100.0,
                              child: Container(
                                height: 500.0,
                                width: 400.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Manage all your',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 38.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'projects in one place.',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      width: 300.0,
                                      child: Text(
                                        'Describe your project and find a top talent team around the world or near you. Leave your E-mail to get invite for 30 days free trail',
                                        style: GoogleFonts.nunito(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 45.0,
                                          width: 230.0,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Enter your email address',
                                              hintStyle: GoogleFonts.nunito(
                                                fontSize: 12.0,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.black87,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Container(
                                            height: 45.0,
                                            width: 100.0,
                                            child: Center(
                                              child: Text(
                                                'Get Invite',
                                                style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              Container(
                height: 500.0,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -250.0,
                      child: Container(
                        height: 450.0,
                        width: 650.0,
                        decoration: BoxDecoration(
                          color: Colors.amber[400],
                          borderRadius: BorderRadius.circular(400.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      top: 20.0,
                      right:10,
                      left: pixels >= 500 ? 100.0 : 100.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        elevation:10,
                        child: Container(
                          height: 200.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                              color:Color(0xff373e98).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset('assets/projectmanagement.gif',),
                         /* Image.network(
                            'https://apploye.com/blog/content/images/2022/06/virtual-project-management.png',
                            fit: BoxFit.cover,
                          ),*/
                        ),
                      ),
                    ),
                    ProfileTile(
                      left: 80.0,
                      top: -10.0,
                      title: 'Send a final design to the team',
                      subTitle: 'Sara, Client',
                      factor: 1.0,
                    ),
                    ProfileTile(
                      left: 620.0,
                      top: 400.0,
                      title: 'Publish Your project whenever you want',
                      subTitle: 'Micheal',
                      factor: 1.0,
                    ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      right: pixels >= 600 ? 100.0 : 0.0,
                      top: 250.0,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: pixels >= 600 ? 1.0 : 0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Easy Project Management',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 25.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              width: 280.0,
                              child: Text(
                                'Manage your project, Organize your own workspace, keep statistics and collaborate with your teammates in one place',
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                backgroundColor: Colors.grey[900],
                                padding: EdgeInsets.symmetric(
                                  horizontal: 50.0,
                                  vertical: 20.0,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Try for free',
                                style: GoogleFonts.nunito(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 600.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  children: [
                    Align(
                      child: Column(
                        children: [
                          Text(
                            'Be in the community',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w800,
                              fontSize: 25.0,
                            ),
                          ),
                          Text(
                            'Meet New people and leave testimonials about your teammates',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedAlign(
                      duration: Duration(milliseconds: 500),
                      alignment: pixels >= 1200
                          ? Alignment(0.0, 0.0)
                          : Alignment(-0.2, 0.0),
                      child: AnimatedOpacity(
                        opacity: pixels >= 1200 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    left: -70.0,
                                    top: -60.0,
                                    child: Icon(
                                      Icons.format_quote,
                                      color: Colors.grey[300],
                                      size: 150.0,
                                    ),
                                  ),
                                  Text(
                                    'Excellent',
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                width: 360.0,
                                child: Text(
                                  'To the Freelancer, I found a team for a project during one i met new cool specialist, and project management has become much faster and simpler',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Comment detail',
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14.0,
                                ),
                              ),
                              Container(
                                height: 1.5,
                                width: 100.0,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TestimonialTile(
                      image:
                          'https://images.unsplash.com/photo-1565623006066-82f23c79210b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
                      left: 780.0,
                      top: pixels >= 1000 ? 100.0 : 130.0,
                      leftalign: false,
                    ),
                    TestimonialTile(
                      image:
                          'https://images.unsplash.com/photo-1612282131293-37332d3cea00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1995&q=80',
                      left: 840.0,
                      top: pixels >= 1200 ? 400.0 : 430.0,
                      leftalign: false,
                    ),
                    TestimonialTile(
                      image:
                          'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',
                      left: 440.0,
                      top: pixels >= 1300 ? 450.0 : 480.0,
                      leftalign: true,
                    ),
                    Positioned(
                      right: 350.0,
                      top: 200.0,
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.red[600],
                          borderRadius: BorderRadius.circular(60.0),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20.0,
                              offset: Offset(0.0, 10.0),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ),

                    //rest two also same only positions and size and color changes....
                    Positioned(
                      right: 200.0,
                      top: 250.0,
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(60.0),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20.0,
                              offset: Offset(0.0, 10.0),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 250.0,
                      top: 450.0,
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: Color(0xff373e98),
                          borderRadius: BorderRadius.circular(60.0),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20.0,
                              offset: Offset(0.0, 10.0),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 600.0,
                color: Color(0xff373e98),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedAlign(
                      duration: Duration(milliseconds: 500),
                      alignment: pixels >= 1600
                          ? Alignment(0.0, 1.0)
                          : Alignment(-0.2, 1.0),
                      child: AnimatedOpacity(
                        opacity: pixels >= 1600 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Container(
                          height: 600.0,
                          width: 400.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 80.0,
                              ),
                              Text(
                                'Get Started Today',
                                style: GoogleFonts.josefinSans(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.0,
                                  fontSize: 35.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Freelancer - Community of people who values their time',
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        backgroundColor: Colors.white,
                                        padding: EdgeInsets.all(0.0),
                                      ),
                                      onPressed: () {},
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 30.0,
                                          vertical: 12.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Text(
                                          'Get My Price',
                                          style: GoogleFonts.josefinSans(
                                            color: Color(0xff373e98),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      //color: Colors.white,
                                      padding: EdgeInsets.all(0.0),
                                    ),
                                    onPressed: () {},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30.0,
                                        vertical: 12.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Text(
                                        'Try for free',
                                        style: GoogleFonts.josefinSans(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Footer(),
                    ),
                    Align(
                      alignment: Alignment(1.18, 0.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.amber[400],
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1.18, 1.18),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                         color: Color(0xff373e98),
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                    ),
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

import 'package:flutter/material.dart';
import 'package:profile/view/collage_screen.dart';
import 'package:profile/view/profile_screen.dart';
import 'package:profile/view/Cv_screen.dart';
import 'package:profile/view/constants.dart';
import 'package:profile/view/container.dart';
import 'package:profile/view/whatsapp_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ContainState extends State<Contain> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: Constants().green,
      end: Constants().black,
    ).animate(_controller);

    _sizeAnimation = Tween<double>(
      begin: 50,
      end: 60,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _launchFacebook() async {
    final url = Uri.parse(
      'https://www.facebook.com/profile.php?id=100058693436561',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;

    // Responsive values
    double containerWidth = screenWidth < 500 ? screenWidth * 0.95 : screenWidth * 0.50;
    double profileImageWidth = screenWidth < 500 ? screenWidth * 0.80 : screenWidth * 0.25;
    double profileImageHeight = screenWidth < 500 ? size.height * 0.30 : size.height * 0.50;
    double cardWidth = screenWidth < 500 ? screenWidth * 0.90 : screenWidth * 0.20;
    double cardHeight = screenWidth < 500 ? size.height * 0.20 : size.height * 0.35;
    double fontSizeTitle = screenWidth < 500 ? 22 : 30;
    double fontSizeSection = screenWidth < 500 ? 28 : 35;
    double fontSizeSubtitle = screenWidth < 500 ? 12 : 15;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Constants().white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main Info Column
                  Container(
                    width: containerWidth,
                    color: Constants().white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.08),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.05),
                            Text(
                              "Hello_____",
                              style: TextStyle(
                                fontSize: fontSizeTitle,
                                fontWeight: FontWeight.w600,
                                color: Constants().black,
                                fontFamily: 'bold',
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "My name is",
                              style: TextStyle(
                                fontSize: fontSizeSubtitle,
                                fontWeight: FontWeight.w600,
                                color: Constants().green,
                                fontFamily: 'ubuntu-bold',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          children: [
                            SizedBox(width: screenWidth * 0.05),
                            AnimatedBuilder(
                              animation: _controller,
                              builder: (context, child) {
                                return Text(
                                  "M.Faizan ",
                                  style: TextStyle(
                                    fontSize: _sizeAnimation.value,
                                    fontWeight: FontWeight.w700,
                                    color: _colorAnimation.value,
                                    fontFamily: 'bold',
                                  ),
                                );
                              },
                            ),
                            AnimatedBuilder(
                              animation: _controller,
                              builder: (context, child) {
                                return Text(
                                  "Nafees",
                                  style: TextStyle(
                                    fontSize: _sizeAnimation.value,
                                    fontWeight: FontWeight.w700,
                                    color: _colorAnimation.value,
                                    fontFamily: 'bold',
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.02),

                        Row(
                          children: [
                            SizedBox(width: size.width * 0.07),
                              Icon(Icons.radio_button_checked,size: 10,color: Constants().black,),
                            SizedBox(width: size.width * 0.01),
                            Text(
                              "I am a flutter developer",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Constants().black,
                                fontFamily: 'ubuntu-bold',
                  decoration: TextDecoration.underline,

                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: size.width * 0.07),
                         
                          Icon(Icons.radio_button_checked,size: 10,color: Constants().black,),
                            SizedBox(width: size.width * 0.01),

                            Text(
                              "I am from Lahore",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Constants().black,
                                fontFamily: 'ubuntu-bold',
                  decoration: TextDecoration.underline,

                              ),
                            ),
                          ],
                        ),
                          SizedBox(height:  size.height * 0.02),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child:
                         
                            Card(
                              elevation: 4,color: Constants().green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: BorderSide(color: Constants().green, width: 2),
                              ),

                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 12.0,
                                    ),
                                    child: Text(
                                      "   As a Flutter developer with a strong focus on UI/UX design, I specialize in creating intuitive, responsive, and visually engaging mobile application. I ensure pixel-perfect execution across both Android and iOS platforms. My workflow emphasizes clean code, design consistency, and cross-platform performance optimization, allowing me to deliver apps that are both beautiful and functional.",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Constants().white1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          // ),
                        ),

                        SizedBox(height: size.height * 0.05),

                        Row(
                          
                          children: [
                            SizedBox(width: size.width * 0.07),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CvScreen(),
                                  ),
                                );
                              },
                            

                              child: Container(
                                height: 40,
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Constants().white1,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Center(child: Text("Download Cv",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Constants().black,
                                fontFamily: 'ubuntu-bold',
                      

                              ),)),
                              ),
                            ),
                            Text("_______My skills"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Profile Image Column
                  Column(
                    children: [
                      SizedBox(width: screenWidth < 500 ? 0 : screenWidth * 0.05),
                      Container(
                        height: profileImageHeight,
                        width: profileImageWidth,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Constants().black, blurRadius: 30),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(300)),
                          border: Border.all(
                            width: 3,
                            color: Constants().white1,
                          ),
                          color: Constants().green,
                        ),
                        child: Center(
                          child: Container(
                            height: profileImageHeight,
                            width: profileImageWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(300)),
                              image: DecorationImage(
                                image: AssetImage("assets/fazi2.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // What I Do Section
              Column(
                children: [
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Text(
                        "What I Do",
                        style: TextStyle(
                          fontSize: _sizeAnimation.value,
                          fontWeight: FontWeight.w700,
                          color: _colorAnimation.value,
                          fontFamily: 'bold',
                          decoration: TextDecoration.underline,
                        ),
                      );
                    },
                  ),
                  Text(
                    "My services",
                    style: TextStyle(
                      fontSize: fontSizeSubtitle,
                      fontWeight: FontWeight.w700,
                      color: Constants().black,
                      fontFamily: 'bold',
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  // Responsive Cards
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Container(
                        height: cardHeight,
                        width: cardWidth,
                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: screenWidth * 0.003,
                            color: Constants().green,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(color: Constants().black, blurRadius: 30),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.01),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontSize: fontSizeSubtitle,
                                fontWeight: FontWeight.w700,
                                color: Constants().black,
                                fontFamily: 'bold',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "I build responsive and engaging mobile applications using Flutter, ensuring seamless performance across both Android and iOS",
                                style: TextStyle(
                                  fontSize: fontSizeSubtitle,
                                  fontWeight: FontWeight.w700,
                                  color: Constants().black,
                                  fontFamily: 'ubuntu-bold',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: cardHeight,
                        width: cardWidth,
                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: screenWidth * 0.003,
                            color: Constants().green,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(color: Constants().black, blurRadius: 30),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.01),
                            Text(
                              "Designer",
                              style: TextStyle(
                                fontSize: fontSizeSubtitle,
                                fontWeight: FontWeight.w700,
                                color: Constants().black,
                                fontFamily: 'bold',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "As a Flutter designer, I craft visually stunning and user-friendly interfaces for mobile applications. ",
                                style: TextStyle(
                                  fontSize: fontSizeSubtitle,
                                  fontWeight: FontWeight.w700,
                                  color: Constants().black,
                                  fontFamily: 'ubuntu-bold',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: cardHeight,
                        width: cardWidth,
                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: screenWidth * 0.003,
                            color: Constants().green,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(color: Constants().black, blurRadius: 30),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.01),
                            Text(
                              "Ios & Mobile",
                              style: TextStyle(
                                fontSize: fontSizeSubtitle,
                                fontWeight: FontWeight.w700,
                                color: Constants().black,
                                fontFamily: 'bold',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Design Software application to run on mobile devices. Modern and mobile _ready applications that will help you all you marketing ",
                                style: TextStyle(
                                  fontSize: fontSizeSubtitle,
                                  fontWeight: FontWeight.w700,
                                  color: Constants().black,
                                  fontFamily: 'ubuntu-bold',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.10),
              Column(
                children: [
                  SizedBox(height: size.height * 0.05),
                  AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Text(
          "My Protfolio",
          style: TextStyle(
            fontSize: _sizeAnimation.value, // animated size
            fontWeight: FontWeight.w700,
            color: _colorAnimation.value,   // animated color
            fontFamily: 'bold',
            decoration: TextDecoration.underline,
          ),
        );
      },
    ),
                  Text(
                    "My servies",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Constants().black,
                      fontFamily: 'bold',
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: size.height * 0.15,
                        width: size.width * 0.12,

                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: size.width * 0.003,
                            color: Constants().green,
                      
                          ),
                          boxShadow: [
                            BoxShadow(color: Constants().black, blurRadius: 30),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),

                            Text(
                              "    My First Profile",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Constants().black,
                                fontFamily: 'bold',
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "=>",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Constants().black,
                                  fontFamily: 'ubuntu-bold',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.15,
                        width: size.width * 0.12,

                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: size.width * 0.003,
                            color: Constants().green,
                          ),boxShadow: [
                            BoxShadow(color: Constants().black, blurRadius: 30),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),

                            Text(
                              "Collage Screen",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Constants().black,
                                fontFamily: 'bold',
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CollageScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "=>",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Constants().black,
                                  fontFamily: 'ubuntu-bold',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.15,
                        width: size.width * 0.12,

                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: size.width * 0.003,
                            color: Constants().green,
                          ),boxShadow: [
                            BoxShadow(color: Constants().black, blurRadius: 30),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),

                            Text(
                              "   Whatsapp Screen",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Constants().black,
                                fontFamily: 'bold',
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WhatsappScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "=>",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Constants().black,
                                  fontFamily: 'ubuntu-bold',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.10),

              Column(
                children: [
                  Text(
                    "About ",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Constants().green,
                      fontFamily: 'bold',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: size.height * 0.10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Constants().white1,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 3,
                                color: Constants().green,
                              ),
                            ),
                            child: Text(
                              " Education ",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                                color: Constants().green,
                                fontFamily: 'bold',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Container(
                            height: size.height * 0.30,
                            width: size.width * 0.40,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "I passed my Intermediate in ICS. I am passionate about technology and programming, and currently focused on Flutter development. My journey in software started with a strong foundation in computer science, and I enjoy building modern, responsive mobile applications. ",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Constants().grey1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Constants().white1,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 3,
                                color: Constants().green,
                              ),
                            ),
                            child: Text(
                              " Linked ",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                                color: Constants().green,
                                fontFamily: 'bold',
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.07,
                                height: size.height * 0.15,
                              ),
                              InkWell(
                                onTap: _launchFacebook,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  color: Constants().green,
                                  child: Center(
                                    child: Image.asset(
                                      "assets/instragram.jpeg",
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * 0.05),
                              InkWell(
                                onTap: _launchFacebook,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  color: Constants().green,
                                  child: Center(
                                    child: Image.asset("assets/facebook.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  
                  Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Constants().green,
                      fontFamily: 'bold',
                      decoration: TextDecoration.underline,

                    ),
                  ),
                  SizedBox(height: size.height * 0.02),

                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 252, 247),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Name",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                        
                            color: Constants().black
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Constants().green, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),

                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 252, 247),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Number",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Constants().black,
                            fontFamily: "fonts",
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Constants().green, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),

                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 252, 247),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "gmail",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "fonts",
                            color: Constants().black

                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Constants().green, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    height: size.height * 0.08,
                    width: size.width * 0.11,
                    decoration: BoxDecoration(
                      color: Constants().white1,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "  Submit",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: Constants().green,
                        fontFamily: 'bold',
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

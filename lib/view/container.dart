import 'package:flutter/material.dart';
import 'package:profile/profile_screen.dart';
import 'package:profile/view/Cv_screen.dart';
import 'package:profile/view/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Contain extends StatelessWidget {
  const Contain({super.key});

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
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Constants().white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.85,
                        width: size.width * 0.50,
                        color: Constants().white,
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.10),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.05),
                                Text(
                                  "Hello_____",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Constants().black,
                                    fontFamily: 'bold',
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "My name is",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Constants().green,
                                    fontFamily: 'ubuntu-bold',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: size.width * 0.05),
                                Text(
                                  "M.Faizan ",
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    color: Constants().green,
                                    fontFamily: 'bold',
                                  ),
                                ),
                                Text(
                                  "Nafees",
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    color: Constants().green,
                                    fontFamily: 'bold',
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                SizedBox(width: size.width * 0.07),
                                Text(
                                  "i am a flutter developer",
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
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "As a Flutter developer with a strong focus on UI/UX design, I specialize in creating intuitive, responsive, and visually engaging mobile applications. I ensure pixel-perfect execution across both Android and iOS platforms. My workflow emphasizes clean code, design consistency, and cross-platform performance optimization, allowing me to deliver apps that are both beautiful and functional.",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Constants().grey,
                                ),
                              ),
                            ),

                            SizedBox(height: size.height * 0.05),

                            Row(
                              children: [
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
                                    child: Center(child: Text("Download Cv")),
                                  ),
                                ),
                                Text("_______My skills"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(width: size.width * 0.50),
                      Container(
                        height: size.height * 0.50,
                        width: size.width * 0.25,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Constants().black, blurRadius: 20),
                          ],
                          border: Border.all(
                            width: 3,
                            color: Constants().white1,
                          ),
                          color: Constants().green,
                        ),
                        child: Center(
                          child: Container(
                            height: size.height * 0.50,
                            width: size.width * 0.25,
                            decoration: BoxDecoration(
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
              Column(
                children: [
                  Text(
                    "What I Do",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Constants().green,
                      fontFamily: 'bold',
                      decoration: TextDecoration.underline,

                    ),
                  ),
                  Text(
                    "My services",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Constants().black,
                      fontFamily: 'bold',
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: size.height * 0.35,
                        width: size.width * 0.20,

                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: size.width * 0.003,
                            color: Constants().green,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),

                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Constants().black,
                                fontFamily: 'bold',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "I build responsive and engaging mobile applications using Flutter, ensuring seamless performance across both Android and iOS platforms.",
                                style: TextStyle(
                                  fontSize: 15,
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
                        height: size.height * 0.35,
                        width: size.width * 0.20,

                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: size.width * 0.003,
                            color: Constants().green,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),

                            Text(
                              "Ios & Mobile",
                              style: TextStyle(
                                fontSize: 15,
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
                                  fontSize: 15,
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
                        height: size.height * 0.35,
                        width: size.width * 0.20,

                        decoration: BoxDecoration(
                          color: Constants().white1,
                          border: Border.all(
                            width: size.width * 0.003,
                            color: Constants().green,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),

                            Text(
                              "Ios & Mobile",
                              style: TextStyle(
                                fontSize: 15,
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
                                  fontSize: 15,
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
                  Text(
                    "My Protfolio",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Constants().green,
                      fontFamily: 'bold',
                      decoration: TextDecoration.underline,

                    ),
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
                          ),
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
                          ),
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

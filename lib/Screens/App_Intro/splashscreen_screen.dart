import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udbtravel_app/Screens/Login_App/sign_in_screnn.dart';

class IntroScreenDefault extends StatefulWidget {
  const IntroScreenDefault({Key? key}) : super(key: key);

  @override
  IntroScreenDefaultState createState() => IntroScreenDefaultState();
}

class IntroScreenDefaultState extends State<IntroScreenDefault> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      ContentConfig(
        title: "UDB Travel",
        styleTitle: GoogleFonts.pacifico(color: Colors.black, fontSize: 25),
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        styleDescription: const TextStyle(color: Colors.black, fontSize: 16),
        pathImage: "assets/images/Travelers-rafiki.png",
        heightImage: 250,
        widthImage: 250,
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        title: "UDB Travel",
        styleTitle: GoogleFonts.pacifico(color: Colors.black, fontSize: 25),
        description:
            "Ye indulgence unreserved connection alteration appearance",
        styleDescription: const TextStyle(color: Colors.black, fontSize: 16),
        pathImage: "assets/images/Traveling-rafiki.png",
        heightImage: 250,
        widthImage: 250,
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      ContentConfig(
        title: "UDB Travel",
        styleTitle: GoogleFonts.pacifico(color: Colors.black, fontSize: 25),
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription: const TextStyle(color: Colors.black, fontSize: 16),
        pathImage: "assets/images/Destination-pana.png",
        heightImage: 250,
        widthImage: 250,
        backgroundColor: Colors.white,
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}

import 'package:appdio/service/num_incrementer.dart';
import 'package:appdio/shared/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var numberCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("Berserk App", 
        // style: GoogleFonts.acme(),
        ), 
        backgroundColor: Colors.red,),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    numberCounter.toString(),
                    style: GoogleFonts.acme(fontSize: 50, color: Colors.white),
                  ),
                  Text(
                    "Behelits coletados",
                    style: GoogleFonts.acme(fontSize: 50, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        numberCounter = NumIncrementer.incrementNumber(numberCounter);
                      });
                    },
                    child: Image.asset(
                      'lib/assets/images/Behelito.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
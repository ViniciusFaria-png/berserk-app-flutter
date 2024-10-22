import 'package:appdio/pages/upgrades.dart';
import 'package:appdio/service/num_incrementer.dart';
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
      drawer: Drawer(
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: const Text("Menu")),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(height: 30,),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: const Text("Melhorias")),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  const Upgrades(text: 'Melhorias',)));
                },
              ),
              const Divider(),
              const SizedBox(height: 30,),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: const Text("Configurações")),
                onTap: () {},
              ),
              const Divider(),
              ],
            ),
        ),
        ),
      appBar: AppBar(
        title: const Text("Berserk App", 
        // style: GoogleFonts.acme(),
        ), 
        backgroundColor: Colors.red,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(numberCounter.toString(), 
                style: GoogleFonts.acme(fontSize: 50),
                ),
                Text("Behelits coletados", 
                style: GoogleFonts.acme(fontSize: 50),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      numberCounter = NumIncrementer.incrementNumber(numberCounter);
                    });
                  },
                  child: Image.asset('lib/assets/images/Behelito.png', width: 300, height: 300,),
                )
                
              ],
            )
            // child:  Text(number.toString()),
            // child: Image.asset('lib/assets/images/Behelito.png', width: 300, height: 300,),
          ),
        ],
      ),
    );
  }
}
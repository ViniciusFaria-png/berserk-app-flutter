import 'package:appdio/pages/login_page.dart';
import 'package:appdio/pages/upgrades.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  context: context, 
                  builder: (BuildContext bc) {
                  return Wrap(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: const Text("Camera"),
                        leading: const Icon(Icons.camera),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: const Text("Galeria"),
                        leading: const Icon(Icons.all_inbox_rounded),
                      )
                    ],
                  );
                });
              },
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.red),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Image.network(
                      "https://w7.pngwing.com/pngs/65/314/png-transparent-guts-griffith-berserk-manga-fan-art-berserk-thumbnail.png")
                      ),
                  accountName: const Text("Viga"), 
                  accountEmail: const Text("email")),
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 5,),
                    Text("Menu"),
                  ],
                )),
              onTap: () {},
            ),
            const Divider(),
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.emoji_events_outlined),
                    SizedBox(width: 5,),
                    Text("Melhorias"),
                  ],
                )),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const Upgrades(text: 'Melhorias',)));
              },
            ),
            const Divider(),
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(width: 5,),
                    Text("Configurações"),
                  ],
                )),
              onTap: () {
                showModalBottomSheet(context: context, builder: (BuildContext bc){
                  return Container(child: Text(""),);
                });
              },
            ),
            const Divider(),
            InkWell(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.exit_to_app),
                    SizedBox(width: 5,),
                    Text("Sair"),
                  ],
                )),
              onTap: () {
                showDialog(context: context, builder: (BuildContext bc){
                  return AlertDialog(
                    alignment: Alignment.centerLeft,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    title: const Text("Berserk App", style: TextStyle(fontWeight: FontWeight.bold),),
                    content: const Wrap(
                      children: [
                        Text("Você sairá do aplicativo!"),
                        Text("Deseja realmente sair do aplicativo?"),
                      ],
                    ),
                    actions: [
                      TextButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: const Text("Não")),
                      TextButton(onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                      }, child: const Text("Sim")),
                    ],
                  );
                });
              },
            ),
            const Divider(),
            ],
          ),
      );
  }
}
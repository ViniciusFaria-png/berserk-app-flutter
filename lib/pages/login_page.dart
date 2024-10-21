import 'package:appdio/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email = TextEditingController(text: "");
  var senha = TextEditingController(text: "");
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 5,
                      child: 
                    Image.network("https://upload.wikimedia.org/wikipedia/commons/f/f1/Berserk_anime_logo.png")
                    ,),
                    Expanded(child: Container())
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Ja tem cadastro?", 
                style: 
                TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Faça seu login e abrace o eclipse", 
                style: 
                TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: email,
                    onChanged: (value){
                      
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 30),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red
                        )
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red
                        )
                      ),
                      hintText: "E-mail",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.person, color: Colors.red,)
                    ),
                  )
                ),
                const SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: senha,
                    obscureText: isObscureText,
                    onChanged: (value){
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 30),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red
                        )
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red
                        )
                      ),
                      hintText: "Senha",
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(Icons.lock, color: Colors.red,),
                      suffixIcon: InkWell(
                        onTap: (){
                          setState(() {
                            isObscureText = !isObscureText;
                          });        
                        },
                        child: Icon(
                          isObscureText ? Icons.visibility_off: Icons.visibility, color: Colors.red,),
                      ),
                    ),
                  )
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: 
                      TextButton(
                        onPressed: () {
                          if(email.text.trim() == "email" && senha.text.trim() == "123456") {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login efetuado com sucesso")));
                            
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Erro ao efetuar login")));
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: 
                            WidgetStateProperty.all(const Color.fromARGB(255, 192, 34, 23))
                    ), 
                    child: const Text("ENTRAR", 
                        style: 
                          TextStyle(
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                      ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  child: const Text("Esqueci Minha senha", 
                    style: 
                      TextStyle(fontSize: 20,
                       fontWeight: FontWeight.w400,
                        color: Colors.red
                      ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  height: 30,
                  child: const Text("Criar conta", 
                    style: 
                      TextStyle(fontSize: 20,
                       fontWeight: FontWeight.w400,
                        color: Colors.red
                      ),
                  ),
                ),
          
                const SizedBox(
                  height: 50,
                ),
          
              ],
            ),
        ),
      ),
      );
  }
}
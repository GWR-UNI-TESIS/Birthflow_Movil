
import 'package:birthflow_movil/src/ui/home/view/home.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});
  static String id= 'login_view';

  
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Scaffold(
      body: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
               const Positioned.fill(
                child: Align(
                child: Text(
                'BirthFlow',
                style: TextStyle(color: Color.fromARGB(255, 59, 20, 104),
                    fontWeight: FontWeight.bold,
                    fontSize: 35,),
        ),
      ),
    ),
              const Positioned(
                child: Align(
                child: Text(
                'Iniciar sesion',
                style: TextStyle(color:Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,),
        ),
      ),
    ),
            // email
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1,
                vertical: size.height * 0.05,
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 59, 20, 104),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            // password
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .1,
                  right: size.width * 0.1,
                  bottom: size.height * 0.05,),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
               obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 59, 20, 104),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            // button
            ElevatedButton(
                style: const ButtonStyle(
              backgroundColor:WidgetStatePropertyAll<Color>(Color.fromARGB(255, 59, 20, 108),),),
              onPressed: () => {HomeScreen()},
              child: const Text(
                       'Continuar',
                style: TextStyle(color:Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}



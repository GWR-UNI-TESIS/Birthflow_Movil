import 'package:flutter/material.dart';

class AyudaSoportScreen extends StatefulWidget {
  @override
  _AyudaSoportState createState() => _AyudaSoportState();


}
class _AyudaSoportState extends State<AyudaSoportScreen> {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuda y Soporte'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Preguntas Frecuentes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            FAQItem(question: '¿Cómo puedo restablecer mi contraseña?'),
            FAQItem(question: '¿Dónde puedo encontrar más información sobre la aplicación?'),
            FAQItem(question: '¿Qué hago si encuentro un error?'),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Acción para enviar un mensaje de soporte
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Enviar Mensaje de Soporte'),
                    content: TextField(
                      decoration: InputDecoration(hintText: 'Escribe tu mensaje aquí...'),
                      maxLines: 5,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Enviar'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Contactar Soporte'),
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;

  FAQItem({required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        question,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

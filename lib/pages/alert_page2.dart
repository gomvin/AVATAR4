import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage2 extends StatelessWidget {
  const AlertPage2({Key? key}) : super(key: key);

  void showMyAlert(BuildContext context, String alertTitle, String alertMessage, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            alertTitle,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 50.0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                height: 120.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                alertMessage,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Presione en confirmar para registrar su pedido",
                style: GoogleFonts.poppins(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          actions: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.check),
              label: const Text("Confirmar"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.green,
              ),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.cancel),
              label: const Text("Cancelar"),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text("Alertas"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                showMyAlert(
                  context,
                  "Opción 1",
                  "Usted está escogiendo el país de Taiwán",
                  "assets/images/taiwan.jpeg",
                );
              },
              icon: const Icon(Icons.flag),
              label: const Text("Mostrar Opción 1"),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                showMyAlert(
                  context,
                  "Opción 2",
                  "Usted está escogiendo el país de Corea",
                  "assets/images/corea.jpeg",
                );
              },
              icon: const Icon(Icons.flag),
              label: const Text("Mostrar Opción 2"),
            ),
          ],
        ),
      ),
    );
  }
}

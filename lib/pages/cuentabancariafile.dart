import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuentaBancariaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta Bancaria', style: GoogleFonts.roboto()),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kevin',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Perfil',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
            ),
            _createDrawerItem(
              icon: Icons.settings,
              text: 'Configuración',
              textStyle: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            _createDrawerItem(
              icon: Icons.lock,
              text: 'Seguridad y privacidad',
              textStyle: TextStyle(
                fontFamily: 'Arial',
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            _createDrawerItem(
              icon: Icons.security,
              text: 'Token Digital',
              textStyle: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            _createDrawerItem(
              icon: Icons.qr_code,
              text: 'Operar con QR/Plin',
              textStyle: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            _createDrawerItem(
              icon: Icons.location_on,
              text: 'Puntos de atención',
              textStyle: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            _createDrawerItem(
              icon: Icons.phone,
              text: 'Comunícate con nosotros',
              textStyle: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            _createDrawerItem(
              icon: Icons.apps,
              text: 'Aplicaciones',
              textStyle: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            _createDrawerItem(
              icon: Icons.info,
              text: 'Acerca de BBVA',
              textStyle: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Texto de ejemplo',
          style: GoogleFonts.roboto(fontSize: 24),
        ),
      ),
    );
  }

  Widget _createDrawerItem({IconData? icon, required String text, TextStyle? textStyle}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: textStyle),
      onTap: () {
        // Handle menu item tap
      },
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MiContainer());

class MiContainer extends StatelessWidget {
  const MiContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BD decoration"),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(color: Color(0xffffffff), fontSize: 25),
          backgroundColor: const Color(0xff000000),
        ),
        body: Column(
          children: [
            // Texto debajo de la AppBar
            Padding(
              padding:
                  const EdgeInsets.all(16.0), // Espaciado alrededor del texto
              child: Text(
                "Ever Daniel Pereyra Castillo 223080512812820",
                style: TextStyle(
                  color: Colors.black, // Color del texto
                  fontSize: 18, // Tamaño del texto
                  fontWeight: FontWeight.bold, // Negrita
                ),
                textAlign: TextAlign.center, // Centrar el texto
              ),
            ),
            // Contenedores
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(
                          color: Colors.grey, // Color del borde
                          width: 2, // Ancho del borde
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Contenedor 1",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), // Espacio entre contenedores
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: const Color(0xffffffff).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xff292929), // Color del borde
                          width: 2, // Ancho del borde
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Contenedor 2",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), // Espacio entre contenedores
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10), // Esquinas redondas
                        border: Border.all(
                          color: Colors.black, // Borde negro
                          width: 2, // Ancho del borde
                        ),
                      ),
                      child: Stack(
                        clipBehavior: Clip
                            .none, // Permite que el fondo gris se vea por fuera
                        children: [
                          // Fondo gris desplazado
                          Positioned(
                            left: 10, // Desplazamiento a la derecha
                            top: 10, // Desplazamiento hacia abajo
                            child: Container(
                              width: 200, // Ancho del contenedor
                              height: 100, // Alto del contenedor
                              decoration: BoxDecoration(
                                color: const Color(0xff7e7e7e), // Fondo gris
                                borderRadius: BorderRadius.circular(
                                    10), // Esquinas redondas
                              ),
                            ),
                          ),
                          // Borde negro (dibujado por encima del fondo gris)
                          Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  10), // Esquinas redondas
                              border: Border.all(
                                color: Colors.black, // Borde negro
                                width: 2, // Ancho del borde
                              ),
                            ),
                          ),
                          // Texto centrado
                          const Center(
                            child: Text(
                              "Contenedor 3",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20), // Espacio entre contenedores
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white, // Color blanco
                            Color(0xff757575), // Color gris
                          ],
                          begin: Alignment.topLeft, // Inicio del degradado
                          end: Alignment.topRight, // Fin del degradado
                        ),
                        borderRadius: BorderRadius.circular(
                            0), // Sin esquinas redondeadas
                        border: Border.all(
                          color: Color(0xff000000), // Color del borde
                          width: 4, // Ancho del borde
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Contenedor 4",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), // Scaffold
    );
  }
}

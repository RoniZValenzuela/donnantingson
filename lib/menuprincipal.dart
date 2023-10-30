import 'package:flutter/material.dart';

class menuprincipal extends StatefulWidget {
  const menuprincipal({super.key});

  @override
  State<menuprincipal> createState() => _menuprincipalState();
}

class _menuprincipalState extends State<menuprincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.withOpacity(0.5),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Fila 1

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Regresar a la Página de Inicio de Sesión'),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 60.0),
                      child: Container(
                          width: 109,
                          height: 147,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Container(
                                  width: 109,
                                  height: 113,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40)),
                                  child: FilledButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        side: BorderSide(
                                            color: Colors.red, width: 1.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                      ),
                                      child: Center(
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/img/boton1.png')))),
                                ),
                              ),
                              Text(
                                'Solicitar',
                                style: TextStyle(
                                    color: Color.fromRGBO(240, 36, 36, 1),
                                    fontSize: 20),
                              )
                            ],
                          ))),
                  Container(
                      width: 109,
                      height: 147,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Container(
                              width: 109,
                              height: 113,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40)),
                              child: FilledButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        color: Colors.red, width: 1.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          40.0), // Define las esquinas redondeadas
                                    ), // Define el color de fondo
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/img/boton2.png')))),
                            ),
                          ),
                          Text(
                            'Donar',
                            style: TextStyle(
                                color: Color.fromRGBO(240, 36, 36, 1),
                                fontSize: 20),
                          )
                        ],
                      ))
                ],
              ),

              //Fila 2

              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 60.0),
                        child: Container(
                            width: 109,
                            height: 147,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5.0),
                                  child: Container(
                                    width: 109,
                                    height: 113,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: FilledButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          side: BorderSide(
                                              color: Colors.red, width: 1.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                40.0), // Define las esquinas redondeadas
                                          ), // Define el color de fondo
                                        ),
                                        child: Center(
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/img/boton3.png')))),
                                  ),
                                ),
                                Text(
                                  'Donadores',
                                  style: TextStyle(
                                      color: Color.fromRGBO(240, 36, 36, 1),
                                      fontSize: 20),
                                )
                              ],
                            ))),
                    Container(
                        width: 109,
                        height: 147,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Container(
                                width: 109,
                                height: 113,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40)),
                                child: FilledButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.red, width: 1.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40.0), // Define las esquinas redondeadas
                                      ), // Define el color de fondo
                                    ),
                                    child: Center(
                                        child: Image(
                                            image: AssetImage(
                                                'assets/img/boton4.png')))),
                              ),
                            ),
                            Text(
                              'Perfil',
                              style: TextStyle(
                                  color: Color.fromRGBO(240, 36, 36, 1),
                                  fontSize: 20),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Container(
                          width: 135,
                          height: 176,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Container(
                                  width: 109,
                                  height: 113,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40)),
                                  child: FilledButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        side: BorderSide(
                                            color: Colors.red, width: 1.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              40.0), // Define las esquinas redondeadas
                                        ), // Define el color de fondo
                                      ),
                                      child: Center(
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/img/boton5.png')))),
                                ),
                              ),
                              Text(
                                'Convocatorias',
                                style: TextStyle(
                                    color: Color.fromRGBO(240, 36, 36, 1),
                                    fontSize: 20),
                              )
                            ],
                          ))),
                  Container(
                      width: 160,
                      height: 176,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Container(
                              width: 109,
                              height: 113,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40)),
                              child: FilledButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: BorderSide(
                                        color: Colors.red, width: 1.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          40.0), // Define las esquinas redondeadas
                                    ), // Define el color de fondo
                                  ),
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/img/boton6.png')))),
                            ),
                          ),
                          Text(
                            'Centro de salud',
                            style: TextStyle(
                                color: Color.fromRGBO(240, 36, 36, 1),
                                fontSize: 20),
                          )
                        ],
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}

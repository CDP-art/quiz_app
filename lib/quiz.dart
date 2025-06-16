import 'package:flutter/material.dart';
import 'starting_screen.dart';
import 'questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  // override è un metodo che permette di modificare il comportamento di una classe
  // State<Quiz> è una classe che rappresenta lo stato del widget Quiz
  // createState() è un metodo che viene chiamato quando il widget viene creato
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// _QuizState è una classe privata che estende State<Quiz>
class _QuizState extends State<Quiz> {
  // activeScreen è una variabile che tiene traccia dello schermo attivo
  // Inizialmente, lo schermo attivo è 'starting-screen'
  // 'starting-screen' è una stringa che rappresenta lo schermo iniziale del quiz
  var activeScreen = 'starting-screen';

  // switchScreen è un metodo che cambia lo schermo attivo
  // Quando viene chiamato, cambia lo schermo attivo in 'questions-screen'
  void switchScreen() {
    // setState è un metodo che notifica Flutter che lo stato del widget è cambiato
    // e che deve ricostruire il widget con il nuovo stato
    // In questo caso, cambiamo lo schermo attivo in 'questions-screen'
    setState(() {
      // 'questions-screen' è una stringa che rappresenta lo schermo delle domande del quiz
      activeScreen = 'questions-screen';
    });
  }

  /*

  // Abbiamo creato una variabile per tenere traccia dello schermo attivo
  //Widget è una variabile che può contenere qualsiasi widget di Flutter
  // Inizialmente, lo schermo attivo è lo StartingScreen
  // Widget? è un tipo di variabile che può essere null o contenere un widget
  Widget? activeScreen;

  @override
  // Questo metodo viene chiamato quando il widget viene creato per la prima volta
  // Inizializziamo lo schermo attivo con StartingScreen
  // StartingScreen è un widget che mostra il logo del quiz e un pulsante "Iniziamo"
  void initState() {
    activeScreen = StartingScreen(switchScreen);
    super.initState();
  }

  // Questo metodo viene chiamato quando l'utente preme il pulsante "Iniziamo"
  void switchScreen() {
    //setState è un metodo che notifica Flutter che lo stato del widget è cambiato
    // e che deve ricostruire il widget con il nuovo stato
    // In questo caso, cambiamo lo schermo attivo in QuestionsScreen
    setState(() {
      // Cambiamo lo schermo attivo in QuestionsScreen
      // Questo farà sì che il widget venga ricostruito e mostri il nuovo schermo
      // In questo modo, quando l'utente preme il pulsante "Iniziamo",
      // vedrà lo schermo delle domande del quiz
      activeScreen = const QuestionsScreen();
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0D47A1), Color(0xFF00BCD4)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:
              activeScreen ==
                      'starting-screen' // Se lo schermo attivo è 'starting-screen'
                  ? StartingScreen(
                    switchScreen,
                  ) // se la condizione è vera, mostra StartingScreen
                  : const QuestionsScreen(
                    // altrimenti, mostra QuestionsScreen
                  ),
        ),
      ),
    );
  }
}

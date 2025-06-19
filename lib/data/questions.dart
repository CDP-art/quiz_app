import "package:quiz_app/models/quiz_question.dart";

const questions = [
  QuizQuestion(
    'Quali sono i principali elementi costitutivi delle interfacce utente in Flutter?',
    ['Widget', 'Componenti', 'Blocchi', 'Funzioni'],
  ),
  QuizQuestion('Come vengono costruite le interfacce utente in Flutter?', [
    'Combinando widget nel codice',
    'Combinando widget in un editor visuale',
    'Definendo i widget in file di configurazione',
    'Utilizzando XCode per iOS e Android Studio per Android',
  ]),
  QuizQuestion('Qual è lo scopo di uno StatefulWidget?', [
    'Aggiornare l\'interfaccia utente quando i dati cambiano',
    'Aggiornare i dati quando l\'interfaccia utente cambia',
    'Ignorare i cambiamenti dei dati',
    'Visualizzare un\'interfaccia utente che non dipende dai dati',
  ]),
  QuizQuestion(
    'Quale widget dovresti cercare di usare più spesso: StatelessWidget o StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Entrambi sono ugualmente validi',
      'Nessuno dei due',
    ],
  ),
  QuizQuestion('Cosa succede se cambi i dati in uno StatelessWidget?', [
    'L\'interfaccia utente non viene aggiornata',
    'L\'interfaccia utente viene aggiornata',
    'Viene aggiornato il StatefulWidget più vicino',
    'Vengono aggiornati eventuali StatefulWidget annidati',
  ]),
  QuizQuestion(
    'Come dovresti aggiornare i dati all\'interno di uno StatefulWidget?',
    [
      'Chiamando setState()',
      'Chiamando updateData()',
      'Chiamando updateUI()',
      'Chiamando updateState()',
    ],
  ),
];

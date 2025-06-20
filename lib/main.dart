import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  
  
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
   backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.O7C6zj74BSyiIP3YjfsVRAHaHa&pid=Api&P=0&h=180'),
  radius: 150,
  );
  final nome = const Text(
    'jardesson dos santos',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
  final botaotelefone = IconButton(
    color: const Color.fromARGB(255, 255, 3, 3),
    icon: const Icon(Icons.phone),
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '9999-9999'));
    },
  );

   final botaoemail = IconButton(
    color: const Color.fromARGB(255, 255, 3, 3),
    icon: const Icon(Icons.email),
    onPressed: () {
      launchUrl(Uri(scheme: 'email', path: 'jardesson@gamail.com'));
    },
  );

 final botaosms= IconButton(
    color:  const Color.fromARGB(255, 255, 3, 3),
    icon: const Icon(Icons.sms),
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '9999-9999'));
    },
  );

  
 Widget build(BuildContext contexto){
  return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botaoemail, botaosms, botaotelefone
            ],
          )
        ],
    )
  );
 }
 
  static void launchUrl(Uri uri) {}

}

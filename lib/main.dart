import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 167, 81, 28)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                // color: Colors.pink[200], // Cor rosa claro
                child: const Text('Layout Superior'),
              ),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      //color: Colors.orange[200], // Cor salmão
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orange[200], // Cor salmão
                        borderRadius: BorderRadius.circular(
                          20,
                        ), // Bordas arredondadas
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26, // Cor da sombra
                            blurRadius: 20, // Raio de desfoque
                            offset: Offset(0, 6), // Deslocamento da sombra
                          ),
                        ],
                      ),

                      child: const Text('Meu App'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      //color: Colors.orange[200], // Cor salmão
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,

                ///color: const Color.fromARGB(255, 126, 115, 210),
                child: const Text('Layout inferior'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcdacf3),
        elevation: 20,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Seja bem vindo a sua meta de hoje:",
                  style: GoogleFonts.gabarito(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                   Icon(Icons.water_drop_outlined),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              bottom: 5,
            ),
            child: BotaoRefeicao(
              title: 'CAFÉ DA MANHA',
              onPressed: () {}, temComida: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            child: BotaoRefeicao(
              title: "ALMOÇO",
              onPressed: () {}, temComida: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            child: BotaoRefeicao(
              title: "LANCHE DA TARDE",
              onPressed: () {}, temComida: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: BotaoRefeicao(
              title: "JANTAR",
              onPressed: () {}, temComida: false,
            ),
          )
        ],
      ),
    );
  }
}

class BotaoRefeicao extends StatelessWidget {
  const BotaoRefeicao({
    super.key,
    required this.title,
    required this.onPressed,
    required this.temComida,
  });

  final String title;
  final void Function() onPressed;
  final bool temComida;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.acme(
              textStyle: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: temComida
                ? Icon(Icons.chevron_right)
                : Icon(Icons.add_circle_outline),
          ),
        ],
      ),
    );
  }
}

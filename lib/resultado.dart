import 'package:flutter/material.dart';

class ResultadoApp extends StatelessWidget {
  final int pontuacao;
  final void Function () quandoReiniciarQuestionario;

  const ResultadoApp(this.pontuacao,this.quandoReiniciarQuestionario, {super.key});

  String get fraseResultado{
    if(pontuacao < 8){
      return 'Parabens!!';
    } else if(pontuacao < 12){
      return 'Você é bom!!';
    } else if(pontuacao < 16){
      return 'Impressionante!!';
    } else{
      return 'Nível Jedi!!!!!!';
    }

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
              child: Text(
                fraseResultado,
              style: TextStyle(fontSize: 28),
               ),
            ),
            TextButton(
              onPressed: quandoReiniciarQuestionario,
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue
              ),
              child: Text('Reiniciar?',
              style: TextStyle(
                fontSize: 18
              ),)
              
            )
      ],
    );
  }
}
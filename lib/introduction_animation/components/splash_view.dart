import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  final AnimationController animationController;

  const SplashView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

final String someText =
    " Recebo a notificação de que a reunião irá começar em breve, sinto a ansiedade batendo de ter que apresentar meu status anterior, é algo bobo, dura em média 15 minutos, mas tenho a impressão de que não fui tão produtiva como os demais colegas. \n\n"
    "Essa voz do impostor, é um bagulho que mexe, ta ligado? Porque eu sei que fucei tudo que é documentação, vi vídeos para tentar resolver, mas não deu certo!\n\n"
    "Respiro fundo, conto até 3 e abro o word!\n\n"
    "Começo digitar:\n\n"
    "“Bom dia, pessoal! Ontem eu passei a tela de análise de cliente, consegui desenrolar o html e css, mas estou com alguns problemas na validação de um campo, vou seguir hoje tentando resolver, porém se alguém tiver algumas experiências com o erro de validações, e puder me dar um help, agradeço! eu mostro certinho como fiz e o porquê!”\n\n"
    "A daily começa e meu nome é o último a ser chamado, ninguém teve impedimentos, mas eu tenho e o time precisa estar ciente! Abro o word, leio com pausas meu texto e em seguida, escuto alguém comentando: chama ai depois da daily, a gente resolve isso ai!\n\n"
    "Após o término da reunião, eu mando uma mensagem para a minha colega perguntando se podemos falar, ela diz que irá tomar um café e em seguida, me ligaria.\n\n"
    "A guria me liga e em poucos minutos de apresentação, ela já identifica o problema. “I M P R E S S I O N A N T E”, penso.\n\n"
    "Gastei um dia inteiro e minha colega resolve tão rápido assim!\n\n"
    "Boquiaberta com isso, pergunto: Cara, como você consegue? Ela ri e diz: já aconteceu comigo antes!\n\n";

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final _introductionanimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: _introductionanimation,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/introduction_animation/Errei-e-agora.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 8.0),
              child: Text(
                "Deu erro, o que eu faço?",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                someText,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom + 16),
              child: InkWell(
                onTap: () {
                  widget.animationController.animateTo(0.2);
                },
                child: Container(
                  height: 58,
                  padding: EdgeInsets.only(
                    left: 56.0,
                    right: 56.0,
                    top: 16,
                    bottom: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.0),
                    color: Color.fromRGBO(249, 190, 84, 1),
                  ),
                  child: Text(
                    "Bora entender",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppTheme.darkText,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

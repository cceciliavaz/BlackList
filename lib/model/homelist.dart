import 'package:best_flutter_ui_templates/introduction_animation/introduction_animation_screen.dart';
import 'package:best_flutter_ui_templates/model/story.dart';
import 'package:flutter/widgets.dart';

import 'learned-lessons.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/introduction_animation/Errei-e-agora.png',
      navigateScreen: IntroductionAnimationScreen(
          story: Story(
              title: 'Deu erro, o que eu faço?',
              image: 'assets/introduction_animation/Errei-e-agora.png',
              message:
                  " Recebo a notificação de que a reunião irá começar em breve, sinto a ansiedade batendo de ter que apresentar meu status anterior, é algo bobo, dura em média 15 minutos, mas tenho a impressão de que não fui tão produtiva como os demais colegas. \n\n"
                  "Essa voz do impostor, é um bagulho que mexe, ta ligado? Porque eu sei que fucei tudo que é documentação, vi vídeos para tentar resolver, mas não deu certo!\n\n"
                  "Respiro fundo, conto até 3 e abro o word!\n\n"
                  "Começo digitar:\n\n"
                  "“Bom dia, pessoal! Ontem eu passei a tela de análise de cliente, consegui desenrolar o html e css, mas estou com alguns problemas na validação de um campo, vou seguir hoje tentando resolver, porém se alguém tiver algumas experiências com o erro de validações, e puder me dar um help, agradeço! eu mostro certinho como fiz e o porquê!”\n\n"
                  "A daily começa e meu nome é o último a ser chamado, ninguém teve impedimentos, mas eu tenho e o time precisa estar ciente! Abro o word, leio com pausas meu texto e em seguida, escuto alguém comentando: chama ai depois da daily, a gente resolve isso ai!\n\n"
                  "Após o término da reunião, eu mando uma mensagem para a minha colega perguntando se podemos falar, ela diz que irá tomar um café e em seguida, me ligaria.\n\n"
                  "A guria me liga e em poucos minutos de apresentação, ela já identifica o problema. “I M P R E S S I O N A N T E”, penso.\n\n"
                  "Gastei um dia inteiro e minha colega resolve tão rápido assim!\n\n"
                  "Boquiaberta com isso, pergunto: Cara, como você consegue? Ela ri e diz: já aconteceu comigo antes!\n\n"),
          learnedLessons_: [
            LearnedLessons(
                title: 'Titulo 1',
                image: 'assets/introduction_animation/relax_image.png',
                message: "",
                quote: "..........."),
            LearnedLessons(
                title: 'Titulo 2',
                image: 'assets/introduction_animation/care_image.png',
                message: "",
                quote: "..........."),
            LearnedLessons(
                title: 'Titulo 3',
                image: 'assets/introduction_animation/mood_dairy_image.png',
                message: "",
                quote: "..........."),
          ]),
    ),
    HomeList(
      imagePath: 'assets/introduction_animation/PRIMEIRO_DEPLOY.png',
      navigateScreen: IntroductionAnimationScreen(
          story: Story(
              title: 'Primeiro deploy a gente não esquece?',
              image: 'assets/introduction_animation/PRIMEIRO_DEPLOY.png',
              message:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et varius enim, ac pharetra enim. Maecenas mollis sed augue quis sodales. Mauris porttitor quam eros, id pulvinar lacus blandit vel. Proin feugiat nulla faucibus arcu semper, ac blandit dui tincidunt. Curabitur vel lorem venenatis, placerat ex non, tincidunt arcu. Mauris euismod sem a ipsum accumsan posuere. Cras maximus neque nisl. Fusce nunc lectus, finibus quis vulputate ac, pulvinar quis justo. Vestibulum eget rhoncus lacus. Ut id."),
          learnedLessons_: [
            LearnedLessons(
                title: 'Titulo Deploy 1',
                image: 'assets/introduction_animation/relax_image.png',
                message: "",
                quote: "..........."),
            LearnedLessons(
                title: 'Titulo Deploy 2',
                image: 'assets/introduction_animation/care_image.png',
                message: "",
                quote: "..........."),
            LearnedLessons(
                title: 'Titulo Deploy 3',
                image: 'assets/introduction_animation/mood_dairy_image.png',
                message: "",
                quote: "..........."),
          ]),
    ),
    HomeList(
      imagePath: 'assets/introduction_animation/introduction_animation.png',
      navigateScreen: IntroductionAnimationScreen(
          story: Story(
              title: 'Inteligência social',
              image: 'assets/introduction_animation/introduction_animation.png',
              message:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et varius enim, ac pharetra enim. Maecenas mollis sed augue quis sodales. Mauris porttitor quam eros, id pulvinar lacus blandit vel. Proin feugiat nulla faucibus arcu semper, ac blandit dui tincidunt. Curabitur vel lorem venenatis, placerat ex non, tincidunt arcu. Mauris euismod sem a ipsum accumsan posuere. Cras maximus neque nisl. Fusce nunc lectus, finibus quis vulputate ac, pulvinar quis justo. Vestibulum eget rhoncus lacus. Ut id."),
          learnedLessons_: [
            LearnedLessons(
                title: 'Titulo Inteligência 1',
                image: 'assets/introduction_animation/relax_image.png',
                message: "",
                quote: "..........."),
            LearnedLessons(
                title: 'Titulo Inteligência 2',
                image: 'assets/introduction_animation/care_image.png',
                message: "",
                quote: "..........."),
            LearnedLessons(
                title: 'Titulo Inteligência 3',
                image: 'assets/introduction_animation/mood_dairy_image.png',
                message: "",
                quote: "..........."),
          ]),
    ),
    HomeList(
      imagePath: 'assets/introduction_animation/SCRUM-MEU-DE-TODO-DIA.png',
      navigateScreen: IntroductionAnimationScreen(
          story: Story(
              title: 'Scrum nosso de todo dia',
              image: 'assets/introduction_animation/SCRUM-MEU-DE-TODO-DIA.png',
              message:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et varius enim, ac pharetra enim. Maecenas mollis sed augue quis sodales. Mauris porttitor quam eros, id pulvinar lacus blandit vel. Proin feugiat nulla faucibus arcu semper, ac blandit dui tincidunt. Curabitur vel lorem venenatis, placerat ex non, tincidunt arcu. Mauris euismod sem a ipsum accumsan posuere. Cras maximus neque nisl. Fusce nunc lectus, finibus quis vulputate ac, pulvinar quis justo. Vestibulum eget rhoncus lacus. Ut id."),
          learnedLessons_: [
            LearnedLessons(
                title: 'Titulo Scrum 1',
                image: 'assets/introduction_animation/relax_image.png',
                message: "",
                quote: "..........."),
            LearnedLessons(
                title: 'Titulo Scrum 2',
                image: 'assets/introduction_animation/care_image.png',
                message: "",
                quote: "..........."),
            LearnedLessons(
                title: 'Titulo Scrum 3',
                image: 'assets/introduction_animation/mood_dairy_image.png',
                message: "",
                quote: "..........."),
          ]),
    ),
  ];
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:radio_christ_song/domain/api_clients/request_parameters.dart';
import 'package:radio_christ_song/redux/app_middlewares.dart';
import 'package:radio_christ_song/redux/app_state.dart';
import 'package:radio_christ_song/theme/app_colors.dart';
import 'package:radio_christ_song/widgets/common_widgets/app_buttons.dart';
import 'package:radio_christ_song/widgets/common_widgets/app_text_fields.dart';
import 'package:radio_christ_song/widgets/main_menu_screens/main_menu_radio_screen/main_menu_radio_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainMenuCloudtipsScreenWidget extends StatefulWidget {
  const MainMenuCloudtipsScreenWidget({super.key});

  @override
  State<MainMenuCloudtipsScreenWidget> createState() =>
      _MainMenuCloudtipsScreenWidgetState();
}

class _MainMenuCloudtipsScreenWidgetState
    extends State<MainMenuCloudtipsScreenWidget> {
  final TextEditingController _textEditingEmailController =
      TextEditingController();
  final TextEditingController _textEditingSubjectController =
      TextEditingController();
  final TextEditingController _textEditingMessageController =
      TextEditingController();

  @override
  
Widget build(BuildContext context) {
  return SafeArea(
    child: GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Поддержать нас'),
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset(
                          "assets/images/LOGO.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: const Text(
                          'ПОДДЕРЖИТЕ НАШЕ СЛУЖЕНИЕ\n'
                          'БЛАГОДАРЯ ВАШИМ ПОЖЕРТВОВАНИЯМ МЫ\n'
                          'МОЖЕМ ЕЖЕДНЕВНО НАПОЛНЯТЬ ЭФИР ДОБРОЙ\n'
                          'ХРИСТИАНСКОЙ МУЗЫКОЙ И СЛОВОМ БОЖЬИМ.\n'
                          'КАЖДОЕ ВАШЕ УЧАСТИЕ — ЭТО ВКЛАД\n'
                          'В РАСПРОСТРАНЕНИЕ ЕВАНГЕЛИЯ ЧЕРЕЗ ПЕСНЮ.\n'
                          'СПАСИБО ЗА ВАШЕ ОТКРЫТОЕ СЕРДЦЕ!\n\n'
                          '"КАЖДЫЙ ПУСТЬ ДАЕТ, КАК РЕШИЛ В СЕРДЦЕ,\n'
                          'НЕ С ОГОРОЧЕНИЕМ И НЕ С ПРИНУЖДЕНИЕМ;\n'
                          'ИБО ДОБРОХОТНО ДАЮЩЕГО ЛЮБИТ БОГ."\n'
                          '— 2 КОРИНФЯНАМ 9:7',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse('https://pay.cloudtips.ru/p/e8304678');
                    await launchUrl(url);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 68, 170),
                        width: 2,
                      ),
                      color: const Color.fromARGB(255, 0, 68, 170),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "ПОЖЕРТВОВАТЬ",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}
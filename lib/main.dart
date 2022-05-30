import 'package:curriculum/global.dart';
import 'package:curriculum/widgets/h2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fabio Ramalho',
      theme: ThemeData(fontFamily: 'Browallia'),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const animationsLength = 5;
final royalblue =
    Color.lerp(const Color(0xFF191970), Colors.orange.shade50, .1);

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final List<Animation> animations0 = [];
  late final List<AnimationController> _anmControllers0 = [];
  late final List<Animation> animations1 = [];
  late final List<AnimationController> _anmControllers1 = [];

  @override
  void initState() {
    for (int i = 0; i < animationsLength; i++) {
      var _controller = AnimationController(
        duration: const Duration(seconds: 1),
        vsync: this,
      )..addListener(() {
          setState(() {});
        });
      var _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInToLinear,
      );
      if (i > 0) {
        _anmControllers0[i - 1].addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            _controller.forward();
          }
        });
      }
      animations0.add(_animation);
      _anmControllers0.add(_controller);
    }

    // ANIMAÇÃO VERTICAL

    super.initState();
    _anmControllers0[0].forward();
  }

  Widget header() {
    return Material(
      color: Color.lerp(
        Colors.orange.shade50,
        royalblue,
        animations0[0].value,
      ),
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(16),
      ),
      elevation: 18,
      child: Padding(
        padding:
            EdgeInsets.only(top: (200 * (1 - animations0[0].value)).toDouble()),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: animations0[1].value,
              child: const SizedBox(
                height: 164,
                width: 164,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/perfil.jpeg'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Opacity(
                opacity: animations0[1].value,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 26.0,
                    bottom: 12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Fabio A. Ramalho',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      h2('subtitle', padding: 10),
                      h2('locale', padding: 7),
                      h2('email', padding: 0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SizedBox(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'EN-US',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Switch(
                            value: lang == 'br',
                            activeColor: Colors.orange.shade300,
                            inactiveThumbColor: Colors.orange.shade300,
                            onChanged: (value) {
                              setState(() {
                                lang = lang == 'br' ? 'us' : 'br';
                              });
                            }),
                        const Text(
                          'PT-BR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          html.window.open(
                              'https://www.linkedin.com/in/fabio-ramalho-46a90b174',
                              '');
                        },
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                'assets/linkedin.png',
                                height: 32,
                                width: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          html.window.open('https://github.com/fabiorx1', '');
                        },
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                'assets/git.png',
                                height: 32,
                                width: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infRow(
    String asset,
    String hlabel,
    List<String> labels,
  ) =>
      Row(
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(asset),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: RichText(
                text: TextSpan(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    TextSpan(
                      text: strings[hlabel]![lang]!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: !strings[hlabel]!.containsKey('link')
                          ? null
                          : (TapGestureRecognizer()
                            ..onTap = () {
                              html.window.open(strings[hlabel]!['link']!, '');
                            }),
                    ),
                    for (var label in labels) ...[
                      const TextSpan(
                        text: '\n',
                        style: TextStyle(
                          fontSize: 8,
                        ),
                      ),
                      TextSpan(
                        text: strings[label]![lang]!,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        recognizer: !strings[label]!.containsKey('link')
                            ? null
                            : (TapGestureRecognizer()
                              ..onTap = () {
                                html.window.open(strings[label]!['link']!, '');
                              }),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.orange.shade50,
        ),
        child: Column(
          children: [
            header(),
            Flexible(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: ExpansionTile(
                      textColor: royalblue,
                      iconColor: royalblue,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      childrenPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      title: Text(
                        strings['skills']![lang]!,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: royalblue, shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Icon(
                                      Icons.star_border_rounded,
                                      color: Colors.orange.shade200,
                                    )),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  strings['skills3']![lang]!,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.orange.shade200,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Icon(
                                      Icons.star_border_rounded,
                                      color: royalblue,
                                    )),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  strings['skills1']![lang]!,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.orange.shade200,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Icon(
                                      Icons.star_border_rounded,
                                      color: royalblue,
                                    )),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  strings['skills2']![lang]!,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: ExpansionTile(
                      textColor: royalblue,
                      iconColor: royalblue,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      childrenPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      title: Text(
                        strings['schooling']![lang]!,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //     vertical: 6,
                        //   ),
                        //   child: infRow('assets/munhoz.jpeg', 'schooling1h', [
                        //     'schooling1b',
                        //     'schooling1c',
                        //     'schooling1f',
                        //   ]),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: infRow('assets/unifei.png', 'schooling2h', [
                            'schooling2b',
                            'schooling2c',
                            'schooling2f',
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: ExpansionTile(
                      textColor: royalblue,
                      iconColor: royalblue,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      childrenPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      title: Text(
                        strings['general']![lang]!,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //     vertical: 6,
                        //   ),
                        //   child: infRow('assets/bvrbunny.jpg', 'general3h', [
                        //     'general3b',
                        //     'general3c',
                        //     'general3f',
                        //   ]),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: infRow('assets/aqualab.jpg', 'general5h', [
                            'general5b',
                            'general5c',
                            'general5f',
                            'general5d',
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child:
                              infRow('assets/deeplearning.png', 'general4h', [
                            'general4b',
                            'general4c',
                            'general4f',
                            'general4d',
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: infRow('assets/aiesec.jpg', 'general1h', [
                            'general1b',
                            'general1c',
                            'general1f',
                          ]),
                        ),

                        // Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //     vertical: 6,
                        //   ),
                        //   child: infRow('assets/volun.jpg', 'general2h', [
                        //     'general2b',
                        //     'general2c',
                        //     'general2f',
                        //   ]),
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: ExpansionTile(
                      textColor: royalblue,
                      iconColor: royalblue,
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      childrenPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      title: Text(
                        strings['professional']![lang]!,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      ),
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //     vertical: 6,
                        //   ),
                        //   child: infRow('assets/food.jpeg', 'professional3h', [
                        //     'professional3b',
                        //     'professional3c',
                        //     'professional3f',
                        //     'professional3d',
                        //   ]),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child: infRow(
                              'assets/autoponia.jpeg', 'professional1h', [
                            'professional1b',
                            'professional1c',
                            'professional1f',
                            'professional1d',
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          child:
                              infRow('assets/wattio.jpeg', 'professional2h', [
                            'professional2b',
                            'professional2c',
                            'professional2f',
                            'professional2d',
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: !_liked ? royalblue : Colors.orange,
                      shape: const CircleBorder(),
                      elevation: 32,
                      child: Center(
                        child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () {
                            setState(() {
                              _liked = !_liked;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite,
                              color: !_liked ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _liked = false;
}

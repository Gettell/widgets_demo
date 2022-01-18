import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_demo/utils/global_theme.dart';
import 'utils/strings.dart';

class ThemesDemoApp extends StatelessWidget {
  const ThemesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: ThemesDemoScreen(),
    );
  }
}

class ThemesDemoScreen extends StatefulWidget {
  const ThemesDemoScreen({Key? key}) : super(key: key);

  @override
  _ThemesDemoScreenState createState() => _ThemesDemoScreenState();
}

class _ThemesDemoScreenState extends State<ThemesDemoScreen> {
  double _currentSliderValue = 20;
  bool _isDarkTheme = false;

  Widget _navigationDraw(context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100.00,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1920px-Google-flutter-logo.svg.png'),
                    ),
                    const Text('Навигация в Pages'),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Главная'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Настройки'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            Divider(),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Контакты'),
              onTap: () {
                Navigator.pushNamed(context, '/contacts');
              },
            )
          ],
        ),
      );

  PreferredSizeWidget _appBar() => AppBar(
        title: Text(
          'Демо темы',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Уведомления',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Уведомления',
            onPressed: () {},
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        drawer: _navigationDraw(context),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Text(
                'Заголовок',
                style: Theme.of(context).textTheme.headline6,
              ),
              Container(
                height: 100,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Row(
                children: const [
                  Text('Логин: '),
                  Expanded(child: TextField()),
                ],
              ),
              Row(
                children: const [
                  Text('Пароль: '),
                  Expanded(child: TextField()),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text ('Войти')),
              Text (Strings.longBodyText),
              Slider(
                value: _currentSliderValue,
                max: 100,
                  divisions: 5,
                label: _currentSliderValue.round.toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue=value;
                  });
                },
              ),
              SwitchListTile(
                  title: Text('Тёмная тема', style: Theme.of(context).textTheme.subtitle1,),
                  value: _isDarkTheme,
                  onChanged: (val){setState(() {
                    _isDarkTheme=!_isDarkTheme;
                    if (_isDarkTheme) {

                    }
                  });})
            ]),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),

      ),
    );
  }
}

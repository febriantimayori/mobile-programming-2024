import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* Soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* Soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Coban Talun',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /* Soal 3 */
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
            const Text("41"),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Coban Talun adalah salah satu destinasi wisata alam yang populer di Malang, Jawa Timur. '
        'Tempat ini menawarkan suasana alam yang asri dan menenangkan. Air terjun, hutan pinus, dan area glamping '
        'menjadikannya destinasi favorit untuk keluarga dan pecinta alam. Banyak kegiatan menarik yang dapat dilakukan, '
        'seperti trekking, camping, dan outbound. Destinasi ini cocok untuk berlibur dan melepas penat dari hiruk-pikuk kota. \n\n'
        'Febrianti Mayori | 2241720248',
        softWrap: true,
      ),
    );
    
    return MaterialApp(
    title: 'Flutter Layout: Febrianti Mayori | 2241720248',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Demo: Febrianti M | 2241720248'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/coban_talun.png',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    ));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
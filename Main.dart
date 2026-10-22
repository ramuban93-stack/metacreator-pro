
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookCreatorsApp());
}

class FacebookCreatorsApp extends StatelessWidget {
  const FacebookCreatorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Creators',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> lessons = const [
    'Facebook परिचय',
    'Facebook Profile Settings',
    'Professional Mode',
    'Facebook Page बनाउने',
    'Reels बनाउने तरिका',
    'Reels Upload गर्ने तरिका',
    'Audience बढाउने उपाय',
    'Copyright र Community Standards',
    'Monetization Eligibility',
    'Payout र कमाइसम्बन्धी जानकारी',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebook Creators'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Learn Facebook & Grow Your Audience',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text('Created by Ramu Ban'),
          const SizedBox(height: 20),
          for (int i = 0; i < lessons.length; i++)
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  child: Text('${i + 1}'),
                ),
                title: Text(lessons[i]),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LessonPage(
                        number: i + 1,
                        title: lessons[i],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

class LessonPage extends StatelessWidget {
  final int number;
  final String title;

  const LessonPage({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson $number'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'यो पाठमा $title सम्बन्धी '
              'महत्त्वपूर्ण जानकारी सिक्नुहोस्। '
              'Facebook का सेटिङ, नियम र सुविधाहरू '
              'समयअनुसार परिवर्तन हुन सक्छन्। '
              'आधिकारिक Facebook Help Center मा '
              'पछिल्लो जानकारी जाँच गर्नुहोस्।',
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

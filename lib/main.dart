import 'package:flutter/material.dart';

void main() => runApp(const MetaCreatorProApp());

class MetaCreatorProApp extends StatelessWidget {
  const MetaCreatorProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MetaCreator Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6750A4)),
        useMaterial3: true,
      ),
      home: const CreatorHome(),
    );
  }
}

class Lesson {
  final String title;
  final String summary;
  final String detail;
  const Lesson(this.title, this.summary, this.detail);
}

const lessons = <Lesson>[
  Lesson('Lesson 1: Creator को सुरुवात', 'Creator journey र लक्ष्य तय गर्ने',
      'MetaCreator Pro मा स्वागत छ। पहिले आफ्नो मुख्य विषय छान्नुहोस्—जस्तै comedy, education, cooking, gaming वा lifestyle। कसका लागि सामग्री बनाउँदै हुनुहुन्छ र दर्शकले के पाउनेछन् भन्ने स्पष्ट गर्नुहोस्। सुरुमा एउटा यथार्थपरक लक्ष्य राख्नुहोस्, उदाहरणका लागि हप्तामा तीनवटा मौलिक भिडियो।'),
  Lesson('Lesson 2: Profile र Page सेटअप', 'पहिचान, bio र सार्वजनिक उपस्थिति',
      'पहिचान गर्न सजिलो नाम, स्पष्ट profile photo र छोटो bio प्रयोग गर्नुहोस्। Facebook मा आफ्नो आवश्यकताअनुसार Professional mode भएको profile वा Page छान्न सकिन्छ। Instagram वा अन्य प्लेटफर्ममा पनि bio र link अद्यावधिक राख्नुहोस्। अनावश्यक व्यक्तिगत जानकारी सार्वजनिक नगर्नुहोस्।'),
  Lesson('Lesson 3: Account Security', 'पासवर्ड र पहुँच सुरक्षित राख्ने',
      'हरेक सेवामा फरक, बलियो password प्रयोग गर्नुहोस् र उपलब्ध भए two-factor authentication खोल्नुहोस्। Login alerts जाँच्नुहोस्, अपरिचित app access हटाउनुहोस् र verification code कसैलाई नदिनुहोस्। “Monetization खोलिदिन्छु” भन्दै पैसा वा password माग्ने व्यक्तिबाट सावधान रहनुहोस्।'),
  Lesson('Lesson 4: Content Plan', 'विषय, तालिका र निरन्तरता',
      '३–४ वटा content pillars तय गर्नुहोस्। उदाहरण: comedy skits, behind-the-scenes, tips र audience questions। हप्ताको content calendar बनाउनुहोस्। हरेक पोस्टको उद्देश्य तय गर्नुहोस्—मनोरञ्जन, जानकारी वा समुदायसँग संवाद। निरन्तरता राख्नुहोस् तर गुणस्तरका लागि समय पनि दिनुहोस्।'),
  Lesson('Lesson 5: Reels र Short Video', 'Hook, दृश्य र स्पष्ट आवाज',
      'भिडियोको सुरुमा विषय वा रोचक क्षण देखाउनुहोस्। मोबाइललाई स्थिर राख्नुहोस्, प्रकाश राम्रो बनाउनुहोस् र आवाज स्पष्ट रेकर्ड गर्नुहोस्। अनावश्यक लामो सुरुवात काट्नुहोस्। दर्शकलाई आवश्यक भए caption राख्नुहोस् र अन्त्यमा स्वाभाविक प्रश्न वा अर्को उपयोगी कदम दिनुहोस्।'),
  Lesson('Lesson 6: Editing र Publishing', 'भिडियो सम्पादन र पोस्ट गर्ने',
      'पोस्ट गर्नुअघि spelling, आवाज, framing र caption जाँच्नुहोस्। भिडियोको format प्लेटफर्मअनुसार मिलाउनुहोस्। शीर्षक र caption ले सामग्रीको वास्तविक कुरा बताउनुपर्छ। अरूको watermark भएको भिडियो पुनःअपलोड गर्नु वा भ्रामक thumbnail राख्नु राम्रो अभ्यास होइन।'),
  Lesson('Lesson 7: Audience र Insights', 'Reach, retention र प्रतिक्रिया बुझ्ने',
      'प्लेटफर्ममा उपलब्ध analytics हेर्नुहोस्। Reach, watch time, retention र engagement जस्ता मेट्रिकले कुन सामग्रीले दर्शकलाई उपयोगी भयो भन्ने बुझ्न मद्दत गर्छ। एउटा पोस्टको नतिजामात्र हेरेर निष्कर्ष ननिकाल्नुहोस्; केही हप्ताको trend तुलना गरेर अर्को सामग्री सुधार्नुहोस्।'),
  Lesson('Lesson 8: Community र Copyright', 'सुरक्षित समुदाय र मौलिक सामग्री',
      'दर्शकलाई सम्मानपूर्वक जवाफ दिनुहोस् र spam वा harassment का लागि उपलब्ध moderation tools प्रयोग गर्नुहोस्। आफ्नै footage, voice र अनुमति भएको संगीत प्रयोग गर्नुहोस्। अरूको काम प्रयोग गर्नुअघि अनुमति र license बुझ्नुहोस्। प्लेटफर्मका Community Standards र copyright नियम पालना गर्नुहोस्।'),
  Lesson('Lesson 9: Growth Strategy', 'सुधार, प्रयोग र वास्तविक वृद्धि',
      'एकैचोटि धेरै कुरा परिवर्तन नगरी hook, video length वा caption मध्ये एक–एक कुरा परीक्षण गर्नुहोस्। दर्शकका उपयोगी प्रश्नबाट नयाँ विषय बनाउनुहोस्। नक्कली followers, likes वा views नकिन्नुहोस्; त्यस्ता उपायले विश्वास र खाताको अवस्थालाई हानि पुर्‍याउन सक्छ।'),
  Lesson('Lesson 10: Monetization र Payout', 'योग्यता, नीति र भुक्तानी',
      'कमाइका कार्यक्रम प्लेटफर्म, देश, उमेर, खाताको अवस्था र समयअनुसार फरक हुन्छन्। सम्बन्धित प्लेटफर्मको आधिकारिक dashboard मा Monetization वा Earnings भाग हेरेर eligibility र policy issues जाँच्नुहोस्। सुविधा उपलब्ध भए payout मा सही कानुनी र आवश्यक कर विवरण मात्र राख्नुहोस्। यो एपले कुनै कमाइ वा स्वीकृति ग्यारेन्टी गर्दैन।'),
];

class CreatorHome extends StatefulWidget {
  const CreatorHome({super.key});

  @override
  State<CreatorHome> createState() => _CreatorHomeState();
}

class _CreatorHomeState extends State<CreatorHome> {
  String language = 'नेपाली';
  final Set<int> completed = <int>{};

  String tr(String ne, String hi, String en) {
    if (language == 'हिन्दी') return hi;
    if (language == 'English') return en;
    return ne;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MetaCreator Pro'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          PopupMenuButton<String>(
            tooltip: 'Language',
            onSelected: (value) => setState(() => language = value),
            itemBuilder: (_) => const [
              PopupMenuItem(value: 'नेपाली', child: Text('नेपाली')),
              PopupMenuItem(value: 'हिन्दी', child: Text('हिन्दी')),
              PopupMenuItem(value: 'English', child: Text('English')),
            ],
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Icon(Icons.language),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr('आफ्नो Creator यात्रा सुरु गर्नुहोस्',
                       'अपनी Creator यात्रा शुरू करें',
                       'Start your creator journey'),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(tr(
                    'सामग्री योजना, Reels, सुरक्षा, audience insights र monetization का आधार सिक्नुहोस्।',
                    'कंटेंट योजना, Reels, सुरक्षा, audience insights और monetization की बुनियादी बातें सीखें।',
                    'Learn the basics of content planning, Reels, security, audience insights, and monetization.',
                  )),
                  const SizedBox(height: 14),
                  LinearProgressIndicator(value: completed.length / lessons.length),
                  const SizedBox(height: 6),
                  Text('${completed.length} / ${lessons.length} lessons completed'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          for (var i = 0; i < lessons.length; i++)
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: completed.contains(i)
                      ? const Icon(Icons.check)
                      : Text('${i + 1}'),
                ),
                title: Text(lessons[i].title),
                subtitle: Text(lessons[i].summary),
                trailing: const Icon(Icons.chevron_right),
                onTap: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => LessonPage(
                      lesson: lessons[i],
                      isCompleted: completed.contains(i),
                      onToggle: (value) => setState(() {
                        if (value) {
                          completed.add(i);
                        } else {
                          completed.remove(i);
                        }
                      }),
                    ),
                  ));
                  setState(() {});
                },
              ),
            ),
          const SizedBox(height: 12),
          const Text(
            'MetaCreator Pro एक स्वतन्त्र शैक्षिक एप हो; Meta वा Facebook को आधिकारिक एप होइन। प्लेटफर्मका सुविधा र monetization नियम बदलिन सक्छन्, त्यसैले आधिकारिक dashboard मा पुष्टि गर्नुहोस्।',
          ),
        ],
      ),
    );
  }
}

class LessonPage extends StatefulWidget {
  final Lesson lesson;
  final bool isCompleted;
  final ValueChanged<bool> onToggle;

  const LessonPage({
    super.key,
    required this.lesson,
    required this.isCompleted,
    required this.onToggle,
  });

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  late bool done = widget.isCompleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson details')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(widget.lesson.title,
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 12),
          Text(widget.lesson.summary,
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 20),
          Text(widget.lesson.detail,
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 24),
          SwitchListTile(
            title: const Text('Mark lesson as completed'),
            value: done,
            onChanged: (value) {
              setState(() => done = value);
              widget.onToggle(value);
            },
          ),
        ],
      ),
    );
  }
}

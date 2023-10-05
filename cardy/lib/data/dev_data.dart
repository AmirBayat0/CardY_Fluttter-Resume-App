import 'package:cardy/models/dev_model.dart';

/// Custom Class for storing Developer Data locally
class DevData {
  DevData._();

  static DevModel devData = DevModel(
    name: "FlexZ",
    bio: devBio,
    skillsAndProgress: <SkillsData>[
      SkillsData(
        name: 'Software Engineer',
        progress: 0.7,
      ),
      SkillsData(
        name: 'Mobile App Developer',
        progress: 0.9,
      ),
      SkillsData(
        name: 'Flutter Developer',
        progress: 1,
      ),
    ],
    hobbies: <String>[
      "Learning about Development",
      "Create YouTube Content",
      "Plying COD",
    ],
    number: '+31 970 105 25 790',
    mail: 'amirbayat.dev@gmail.com',
  );

  static const String devBio = """
I'm FlexZ, a motivated software engineering student with a passion for mobile development using Dart and Flutter 📱. I enjoy sharing programming knowledge on social media 🌐. Check out my portfolio on Instagram and YouTube 📷🎥. Let's explore mobile development together! 🚀"
""";
}

/// Developer model class
class DevModel {
  final String name;
  final String number;
  final String mail;
  final String bio;
  final List<SkillsData> skillsAndProgress;
  final List<String> hobbies;

  DevModel({
    required this.number,
    required this.mail,
    required this.name,
    required this.bio,
    required this.skillsAndProgress,
    required this.hobbies,
  });
}

/// Skills model class
class SkillsData {
  final String name;
  final double progress;
  SkillsData({
    required this.name,
    required this.progress,
  });
}

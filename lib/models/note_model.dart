class Note {
  String title;
  String content;
  DateTime date;

  Note({this.title, this.content, this.date});
}

final Map<String, int> categories = {
  'Notes': 26,
  'Work': 5,
  'Home': 2,
  'Complete': 3,
};

final List<Note> notes = [
  Note(
    title: 'Test Note for App',
    content: '''Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. 
  The use him without greatly can private. 
  Increasing it unpleasant no of contrasted no continuing. 
  Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.''',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
  Note(
    title: 'Second test note',
    content: '''Affronting discretion as do is announcing. Now months esteem oppose nearer enable too six. 
    She numerous unlocked you perceive speedily. 
    Affixed offence spirits or ye of offices between. 
    Real on shot it were four an as. Absolute bachelor rendered six nay you juvenile. 
    Vanity entire an chatty to. ''',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
];

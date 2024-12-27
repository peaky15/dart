void main() {
  Map<String, int> names = {
    'John': 78,
    'Emma': 95,
    'Sophia': 95,
    'Lucas': 85,
    'Olivia': 90,
    'Liam': 70
  };

  final mapList = names.entries.toList();

  mapList.sort((a, b) => b.value.compareTo(a.value));

  final List<String> res = mapList.map((e) => e.key).toList();

  print(res);

  var high = names.values.toList();

  high.sort((a, b) => b.compareTo(a));

  int h = high[0];

  final List<Map<String, String>> scoreMap = [];

  names.forEach((key, value) {
    if (value == h) {
      scoreMap.add({'name': key, 'score': value.toString()});
    }
  });

  print(scoreMap);

  // Map<String, int> nm = names;
  // nm.removeWhere((key, value) => value != h);

  // print(nm);
  // print(names);
}

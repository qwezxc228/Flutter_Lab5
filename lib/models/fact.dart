class Fact {
  final String text;
  final String category;
  final String imagePath;

  const Fact({
    required this.text,
    required this.category,
    required this.imagePath,
  });
}

const List<Fact> facts = [
  Fact(
    text: 'Меркурий — самая близкая к Солнцу планета. Год на ней длится всего 88 земных суток, а вот сутки — целых 59 земных дней!',
    category: 'Космос',
    imagePath: 'assets/images/space.jpg',
  ),
  Fact(
    text: 'Если выбрить тигру шерсть, то полоски останутся на его коже. А ещё тигры не любят воду, но отлично плавают.',
    category: 'Животные',
    imagePath: 'assets/images/animals.png',
  ),
  Fact(
    text: 'Царь Алексей Михайлович был очень верующим человеком. В пять лет его начали учить грамоте, а в девять — церковному пению.',
    category: 'История',
    imagePath: 'assets/images/history.jpg',
  ),
  Fact(
    text: 'У Венеры нет спутников, а её атмосфера состоит из ядовитых газов. Температура на поверхности достигает 475 °C.',
    category: 'Космос',
    imagePath: 'assets/images/space.jpg',
  ),
  Fact(
    text: 'Красный волк — исчезающий вид. В отличие от серых сородичей, он охотится не стаей, а поодиночке или парами.',
    category: 'Животные',
    imagePath: 'assets/images/animals.png',
  ),
  Fact(
    text: 'В городе Саратов есть памятник саратовской гармошке. А ещё в России есть город, который называется Никель.',
    category: 'История',
    imagePath: 'assets/images/history.jpg',
  ),
  Fact(
    text: 'Сатурн известен своими кольцами, состоящими из льда и камней. При этом плотность планеты настолько мала, что она могла бы плавать в воде.',
    category: 'Космос',
    imagePath: 'assets/images/space.jpg',
  ),
  Fact(
    text: 'У жирафов самое большое сердце среди всех наземных животных. Оно весит около 11 килограммов и качает кровь на высоту 2 метров!',
    category: 'Животные',
    imagePath: 'assets/images/animals.png',
  ),
];
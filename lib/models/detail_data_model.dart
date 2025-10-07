class Detail {
  final String name;
  final String title;
  final String text;
  final String img;
  final String time;
  final String prize;

  Detail({
    required this.name,
    required this.title,
    required this.text,
    required this.img,
    required this.time,
    required this.prize,
  });

  factory Detail.fromJson(Map<String, dynamic> json) {
    return Detail(
      name: json['name'] ?? '',
      title: json['title'] ?? '',
      text: json['text'] ?? '',
      img: json['img'] ?? '',
      time: json['time'] ?? '',
      prize: json['prize'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'title': title,
      'text': text,
      'img': img,
      'time': time,
      'prize': prize,
    };
  }
}

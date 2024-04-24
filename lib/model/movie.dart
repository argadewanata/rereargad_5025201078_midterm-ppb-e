final String tableMovies = 'movies';

class MovieFields {
  static final List<String> values = [
    id, title,number, image, description, time
  ];

  static final String id = '_id';
  static final String image = 'image';
  static final String number = 'number';
  static final String title = 'title';
  static final String description = 'description';
  static final String time = 'time';
}

class Movie {
  final int? id;
  final String title;
  final int number;
  final String image;
  final String description;
  final DateTime createdTime;

  const Movie({
    this.id,
    required this.image,
    required this.number,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  Movie copy({
    int? id,
    String? image,
    String? title,
    int? number,
    String? description,
    DateTime? createdTime,
  }) =>
      Movie(
        id: id ?? this.id,
        title: title ?? this.title,
        image: image ?? this.image,
        number: number ?? this.number,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );

  static Movie fromJson(Map<String, Object?> json) => Movie(
    id: json[MovieFields.id] as int?,
    title: json[MovieFields.title] as String,
    image:json[MovieFields.image] as String,
    number: json[MovieFields.number] as int,
    description: json[MovieFields.description] as String,
    createdTime: DateTime.parse(json[MovieFields.time] as String),
  );

  Map<String, Object?> toJson() => {
    MovieFields.id: id,
    MovieFields.title: title,
    MovieFields.number: number,
    MovieFields.image: image,
    MovieFields.description: description,
    MovieFields.time: createdTime.toIso8601String(),
  };
}

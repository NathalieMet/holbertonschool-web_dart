class User {
	String name;
	int age;
  double height;

	 User({this.name = 'Unknown', this.age = 0, this.height = 0.0});

	 Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}

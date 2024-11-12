import '6-password.dart';

class User extends Password{
  int id;
	String name;
	int age;
  double height;
  String user_password;

	 User({
	 this.id = 0,
	this.name = 'Unknown',
	 this.age = 0,
	 this.height = 0.0,
	 this.user_password = '',
}) : super(password: user_password);

  @override
  bool isValid() {
    password = user_password;
    return super.isValid();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? 'Unknown',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
	  user_password: userJson['user_password'] ?? '',
	);
  }

 @override
  String toString() {
	return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}

void main(List<String> args) {
  int number = int.parse(args[0]);

  String result;
  result = (number > 0) ? '$number is positive' : (number < 0) ? '$number is negative' : '$number is zero';

  print(result);
}

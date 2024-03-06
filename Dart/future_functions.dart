// void main() async {
//   print('Future Functions');
//   try {
//     final result = await Future.delayed(
//       Duration(seconds: 2),
//       () => 3,
//     ).then((value) {
//       print("doubled value : ${value * 2}");
//       // throw Exception("NO VALUE FOUND");
//       return value;
//     }).whenComplete(() {
//       print("completed");
//     });
//     print("og future value : $result");
//   } catch (error) {
//     print("error : $error");
//   }

//   print("the future returned");
// }

import 'dart:math';

void main() async {
  print("future ");
  try {
    final result = await Future.delayed(
      Duration(seconds: 1),
      () => 3,
    ).then((value) {
      print("the doubled value : ${2 * value}");
      return value;
    }).whenComplete(() {
      print("completed");
    });
    print("the og value  :$result");
  } catch (e) {
    print("error : $e");
  }
}

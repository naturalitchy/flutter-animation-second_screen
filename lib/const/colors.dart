import 'package:flutter/material.dart';

const backgroundColor = Color(0xFF0E0E0E);
const primaryColor = Colors.white;
// Colors.grey[600]은 상수가 아니므로(런타임에 600값이 들어가 계산된다) const로 선언이 불가능하다.
// Therefore if you want declaration to const, initialize to Color(0xFF757575).
// here, Color(0xFF757575) = Colors.grey[600].
final secondaryColor = Colors.grey[600];





import 'package:flutter/material.dart';

MaterialColor getThemeColor({required String weatherCondition}) {
  switch (weatherCondition) {
    case "Clouds":
      return Colors.grey; // لون يعبر عن الغيوم والسماء الملبدة
    case "Clear":
      return Colors.blue; // لون أزرق نقي يعبر عن السماء الصافية
    case "Snow":
      return Colors.orange; // لون أزرق فاتح يعكس الشعور بالبرد والثلج
    case "Rain":
      return Colors.indigo; // لون غامق يعبر عن الأمطار والجو الرطب
    case "Thunderstorm":
      return Colors.deepPurple; // لون بنفسجي غامق يعبر عن العواصف الرعدية
    case "error":
      return Colors.red;
    default:
      return Colors
          .blue; // اللون الافتراضي، يمكن أن يكون لون يعبر عن الجو المعتدل
  }
}



class TimeSlot{
  final String? id;
  final String? start;
  final String? end;

  TimeSlot({
    required this.id,
    required this.start,
    required this.end,
  });

  factory TimeSlot.fromjson(Map<String, dynamic> json){
    return TimeSlot(
      id: json["64f8211509ae4f72d6c427d8"],
      start:json["Wed Sep 06 2023 12:45:25 GMT+0530 (India Standard Time)"],
      end: json["Wed Sep 06 2023 2:45:25 GMT+0530 (India Standard Time)"],
    );
  }
  }
class Soldier {
  final String name;
  final int id;
  final String unit;
  final int policeNumber;
  final String rating;
  final String holidayGroup;
  final String enrollment;
  final String education;
  final String photo;
  final String notes;
  final String mobile;
  final String ratingNotes;

  Soldier(
    this.id,
    this.name,
    this.policeNumber,
    this.mobile,
    this.unit,
    this.enrollment,
    this.education,
    this.notes,
    this.rating,
    this.holidayGroup,
    this.photo,
    this.ratingNotes,
  );

  Soldier.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        unit = json['unit'],
        policeNumber = json['policeNumber'],
        rating = json['behavioralEvaluation'],
        holidayGroup = json['daf3'],
        enrollment = json['tagneed'],
        education = json['mo2hel'],
        photo = json['image'],
        notes = json['notes'],
        mobile = json['mobile'],
        ratingNotes = json['benote'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'unit': unit,
        'policeNumber': policeNumber,
        'rating': rating,
        'holidayGroup': holidayGroup,
        'enrollment': enrollment,
        'education': education,
        'photo': photo,
        'notes': notes,
        'mobile': mobile,
        'ratingNotes': ratingNotes
      };
}

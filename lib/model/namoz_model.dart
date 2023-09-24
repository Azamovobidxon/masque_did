class NamozModel {
  final String? region;
  final String? date;
  final String? weekday;
  final Times? times;

  const NamozModel({
    required this.region,
    required this.date,
    required this.weekday,
    required this.times,
  });

  factory NamozModel.fromJson(Map<String, Object?> json) => NamozModel(
        region: json["region"] != null ? json["region"] as String? : null,
        date: json["date"] != null ? json["date"] as String? : null,
        weekday: json["weekday"] != null ? json["weekday"] as String? : null,
        times: json["times"] != null
            ? Times.fromJson(json["times"] as Map<String, Object?>)
            : null,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamozModel &&
          runtimeType == other.runtimeType &&
          region == other.region &&
          date == other.date &&
          weekday == other.weekday;

  @override
  int get hashCode => region.hashCode ^ date.hashCode ^ weekday.hashCode;

  @override
  String toString() => 'NamozModel(region: $region, '
      'date: $date, weekday:'
      ' $weekday,Times: $times)';
}

class Times {
  const Times({
    required this.tong_saharlik,
    required this.quyosh,
    required this.peshin,
    required this.asr,
    required this.shom_iftor,
    required this.hufton,
  });

  final String? tong_saharlik;
  final String? quyosh;
  final String? peshin;
  final String? asr;
  final String? shom_iftor;
  final String? hufton;

  factory Times.fromJson(Map<String, Object?> json) => Times(
        tong_saharlik: json["tong_saharlik"] != null
            ? json["tong_saharlik"] as String?
            : null,
        quyosh: json["quyosh"] != null ? json["quyosh"] as String? : null,
        peshin: json["peshin"] != null ? json["peshin"] as String? : null,
        asr: json["asr"] != null ? json["asr"] as String? : null,
        shom_iftor:
            json["shom_iftor"] != null ? json["shom_iftor"] as String? : null,
        hufton: json["hufton"] != null ? json["hufton"] as String? : null,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Times &&
          runtimeType == other.runtimeType &&
          tong_saharlik == other.tong_saharlik &&
          quyosh == other.quyosh &&
          peshin == other.peshin &&
          asr == other.asr &&
          shom_iftor == other.shom_iftor &&
          hufton == other.hufton;

  @override
  int get hashCode =>
      tong_saharlik.hashCode ^
      quyosh.hashCode ^
      peshin.hashCode ^
      asr.hashCode ^
      shom_iftor.hashCode ^
      hufton.hashCode;

  @override
  String toString() => 'Times(tong_saharlik: $tong_saharlik,'
      ' quyosh: $quyosh, peshin:'
      ' $peshin, asr: $asr, shom_iftor: '
      '$shom_iftor, hufton: $hufton)';
}

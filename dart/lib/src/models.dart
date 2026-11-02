/// Response models for the Historical Events API.

/// API Response wrapper.
class HistoricaleventsResponse {
  final String status;
  final dynamic error;
  final HistoricaleventsData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HistoricaleventsResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HistoricaleventsResponse.fromJson(Map<String, dynamic> json) => HistoricaleventsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HistoricaleventsData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Historical Events API.

class HistoricaleventsData {
  num? count;
  List<String>? filteredOn;
  List<HistoricaleventsDataEventsItem>? events;

  HistoricaleventsData({
    this.count,
    this.filteredOn,
    this.events,
  });

  factory HistoricaleventsData.fromJson(Map<String, dynamic> json) => HistoricaleventsData(
      count: json['count'],
      filteredOn: (json['filteredOn'] as List?)?.cast<String>(),
      events: (json['events'] as List?)?.map((e) => HistoricaleventsDataEventsItem.fromJson(e)).toList(),
    );
}

class HistoricaleventsDataEventsItem {
  String? year;
  String? month;
  String? day;
  String? date;
  String? event;
  String? range;
  String? granularity;

  HistoricaleventsDataEventsItem({
    this.year,
    this.month,
    this.day,
    this.date,
    this.event,
    this.range,
    this.granularity,
  });

  factory HistoricaleventsDataEventsItem.fromJson(Map<String, dynamic> json) => HistoricaleventsDataEventsItem(
      year: json['year'],
      month: json['month'],
      day: json['day'],
      date: json['date'],
      event: json['event'],
      range: json['range'],
      granularity: json['granularity'],
    );
}

class HistoricaleventsRequest {
  String text;

  HistoricaleventsRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}

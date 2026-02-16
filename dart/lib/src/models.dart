/// Response models for the Historical Events API.

/// API Response wrapper.
class HistoricaleventsResponse {
  final String status;
  final dynamic error;
  final HistoricaleventsData? data;

  HistoricaleventsResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HistoricaleventsResponse.fromJson(Map<String, dynamic> json) => HistoricaleventsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HistoricaleventsData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Historical Events API.

class HistoricaleventsData {
  int? count;
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

# Historical Events API - Dart/Flutter Client

Historical Events is a simple tool for getting historical events. It returns a list of historical events between 300BC and 2012

[![pub package](https://img.shields.io/pub/v/apiverve_historicalevents.svg)](https://pub.dev/packages/apiverve_historicalevents)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Historical Events API](https://apiverve.com/marketplace/historicalevents?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_historicalevents: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_historicalevents/apiverve_historicalevents.dart';

void main() async {
  final client = HistoricaleventsClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'moon landing'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 6,
    "filteredOn": [
      "text"
    ],
    "events": [
      {
        "year": "1969",
        "month": "05",
        "day": "18",
        "date": "1969/05/18",
        "event": " Apollo program: ''Apollo 10'' (Tom Stafford, Gene Cernan, John Young) is launched, on the full dress-rehearsal for the Moon landing.",
        "range": "May",
        "granularity": "year"
      },
      {
        "year": "1969",
        "month": "05",
        "day": "25",
        "date": "1969/05/25",
        "event": "Apollo program: ''Apollo 10'' returns to Earth, after a successful 8-day test of all the components needed for the upcoming first manned Moon landing.",
        "range": "May",
        "granularity": "year"
      },
      {
        "year": "1969",
        "month": "07",
        "day": "20",
        "date": "1969/07/20",
        "event": " Apollo program: The lunar module ''Eagle'' lands on the lunar surface. An estimated 500 million people worldwide watch in awe as Neil Armstrong takes his historic first steps on the Moon at 02:56 UTC, the largest television audience for a live broadcast at that time.cite web|title=Manned Space Chronology: Apollo_11|url=<a href=\"http://www.spaceline.org/flightchron/apollo11.html|publisher=spaceline.org|accessdate=2008-02-06|\">http://www.spaceline.org/flightchron/apollo11.html|publisher=spaceline.org|accessdate=2008-02-06|</a> archiveurl= <a href=\"http://web.archive.org/web/20080214213826/http://www.spaceline.org/flightchron/apollo11.html|\">http://web.archive.org/web/20080214213826/http://www.spaceline.org/flightchron/apollo11.html|</a> archivedate= 14 February 2008 !--DASHBot--| deadurl= no}}cite web|title= Apollo Anniversary: Moon Landing quotInspired Worldquot|url=<a href=\"http://news.nationalgeographic.com/news/2004/07/0714_040714_moonlanding.html|publisher=nationalgeographic.com|accessdate=2008-02-06|\">http://news.nationalgeographic.com/news/2004/07/0714_040714_moonlanding.html|publisher=nationalgeographic.com|accessdate=2008-02-06|</a> archiveurl= <a href=\"http://web.archive.org/web/20080209140059/http://news.nationalgeographic.com/news/2004/07/0714_040714_moonlanding.html|\">http://web.archive.org/web/20080209140059/http://news.nationalgeographic.com/news/2004/07/0714_040714_moonlanding.html|</a> archivedate= 9 February 2008 !--DASHBot--| deadurl= no}}",
        "range": "July",
        "granularity": "year"
      },
      {
        "year": "1969",
        "month": "07",
        "day": "20",
        "date": "1969/07/20",
        "event": "The ''Apollo 11'' astronauts return from the first successful Moon landing, and are placed in biological isolation for several days, on the chance they may have brought back lunar germs. The airless lunar environment is later determined to preclude microscopic life.",
        "range": "July",
        "granularity": "year"
      },
      {
        "year": "1971",
        "month": "02",
        "day": "08",
        "date": "1971/02/08",
        "event": "Apollo program: ''Apollo 14'' returns to Earth after the third manned Moon landing.",
        "range": "February",
        "granularity": "year"
      },
      {
        "year": "1973",
        "month": "01",
        "day": "07",
        "date": "1973/01/07",
        "event": "Elvis Presley's concert in Hawaii. The first worldwide telecast by an entertainer watched by more people than watched the Apollo moon landings.",
        "range": "January",
        "granularity": "year"
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Historical Events API](https://apiverve.com/marketplace/historicalevents?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/historicalevents](https://docs.apiverve.com/ref/historicalevents?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)

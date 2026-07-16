# [Historical Events API](https://apiverve.com/marketplace/historicalevents?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Historical Events is a simple tool for getting historical events. It returns a list of historical events between 300BC and 2012

The Historical Events API provides a simple, reliable way to integrate historical events functionality into your applications. Built for developers who need production-ready historical events capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/historicalevents?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/historicalevents?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/historicalevents)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.HistoricalEvents)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-historicalevents/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_historicalevents)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/historicalevents)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_historicalevents)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callHistoricalEventsAPI() {
    try {
        const params = new URLSearchParams({
            text: 'moon landing'
        });

        const response = await fetch(`https://api.apiverve.com/v1/historicalevents?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callHistoricalEventsAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/historicalevents?text=moon%20landing" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/historicalevents
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/historicalevents) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.HistoricalEvents
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.HistoricalEvents) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-historicalevents
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-historicalevents/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_historicalevents
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_historicalevents) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/historicalevents
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/historicalevents) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_historicalevents
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_historicalevents) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:historicalevents-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/historicalevents-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Historical Events API](https://apiverve.com/marketplace/historicalevents?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/historicalevents](https://docs.apiverve.com/ref/historicalevents)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Historical Events API is commonly used for:

- **Web Applications** - Add historical events features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with historical events capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Historical Events API:

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

---

## Support & Community

- 🏠 **API Home**: [Historical Events API](https://apiverve.com/marketplace/historicalevents?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.

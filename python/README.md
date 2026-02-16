Historical Events API
============

Historical Events is a simple tool for getting historical events. It returns a list of historical events between 300BC and 2012

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Historical Events API](https://apiverve.com/marketplace/historicalevents?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-historicalevents
```

Using `pip3`:

```bash
pip3 install apiverve-historicalevents
```

---

## Configuration

Before using the historicalevents API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_historicalevents.apiClient import HistoricaleventsAPIClient

# Initialize the client with your APIVerve API key
api = HistoricaleventsAPIClient("[YOUR_API_KEY]")

query = { "text": "moon landing" }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Historical Events API documentation is found here: [https://docs.apiverve.com/ref/historicalevents](https://docs.apiverve.com/ref/historicalevents?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_historicalevents.apiClient import HistoricaleventsAPIClient

# Initialize the client with your APIVerve API key
api = HistoricaleventsAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "text": "moon landing" }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `HistoricaleventsAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_historicalevents.apiClient import HistoricaleventsAPIClient, HistoricaleventsAPIClientError

api = HistoricaleventsAPIClient("[YOUR_API_KEY]")

query = { "text": "moon landing" }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except HistoricaleventsAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_historicalevents.apiClient import HistoricaleventsAPIClient, HistoricaleventsAPIClientError

api = HistoricaleventsAPIClient("[YOUR_API_KEY]")

query = { "text": "moon landing" }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except HistoricaleventsAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_historicalevents.apiClient import HistoricaleventsAPIClient, HistoricaleventsAPIClientError

query = { "text": "moon landing" }

# Using context manager ensures proper cleanup
with HistoricaleventsAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except HistoricaleventsAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_historicalevents.apiClient import HistoricaleventsAPIClient

# Enable debug mode
api = HistoricaleventsAPIClient("[YOUR_API_KEY]", debug=True)

query = { "text": "moon landing" }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_historicalevents.apiClient import HistoricaleventsAPIClient

api = HistoricaleventsAPIClient("[YOUR_API_KEY]")

query = { "text": "moon landing" }

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

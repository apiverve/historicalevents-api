APIVerve.API.HistoricalEvents API
============

Historical Events is a simple tool for getting historical events. It returns a list of historical events between 300BC and 2012

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a .NET Wrapper for the [APIVerve.API.HistoricalEvents API](https://apiverve.com/marketplace/historicalevents)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.HistoricalEvents
```

Using the Package Manager:
```
nuget install APIVerve.API.HistoricalEvents
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.HistoricalEvents
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.HistoricalEvents"
5. Click on the APIVerve.API.HistoricalEvents package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the historicalevents API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The APIVerve.API.HistoricalEvents API documentation is found here: [https://docs.apiverve.com/ref/historicalevents](https://docs.apiverve.com/ref/historicalevents).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
APIVerve.API.HistoricalEvents API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
using (var apiClient = new HistoricalEventsAPIClient("[YOUR_API_KEY]"))
{
    var queryOptions = new HistoricalEventsQueryOptions {
  text = "moon landing"
};
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

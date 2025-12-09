using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.HistoricalEvents
{
    /// <summary>
    /// Query options for the Historical Events API
    /// </summary>
    public class HistoricalEventsQueryOptions
    {
        /// <summary>
        /// The keyword for which you want to get the historical events (e.g., moon landing)
        /// Example: moon landing
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }
    }
}

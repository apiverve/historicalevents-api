declare module '@apiverve/historicalevents' {
  export interface historicaleventsOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface historicaleventsResponse {
    status: string;
    error: string | null;
    data: HistoricalEventsData;
    code?: number;
  }


  interface HistoricalEventsData {
      count:      number;
      filteredOn: string[];
      events:     Event[];
  }
  
  interface Event {
      year:        string;
      month:       string;
      day:         string;
      date:        string;
      event:       string;
      range:       string;
      granularity: string;
  }

  export default class historicaleventsWrapper {
    constructor(options: historicaleventsOptions);

    execute(callback: (error: any, data: historicaleventsResponse | null) => void): Promise<historicaleventsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: historicaleventsResponse | null) => void): Promise<historicaleventsResponse>;
    execute(query?: Record<string, any>): Promise<historicaleventsResponse>;
  }
}

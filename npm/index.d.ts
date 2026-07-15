declare module '@apiverve/historicalevents' {
  export interface historicaleventsOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface historicaleventsResponse {
    status: string;
    error: string | null;
    data: HistoricalEventsData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface HistoricalEventsData {
      count:      number | null;
      filteredOn: (null | string)[];
      events:     Event[];
  }
  
  interface Event {
      year:        null | string;
      month:       null | string;
      day:         null | string;
      date:        null | string;
      event:       null | string;
      range:       null | string;
      granularity: null | string;
  }

  export default class historicaleventsWrapper {
    constructor(options: historicaleventsOptions);

    execute(callback: (error: any, data: historicaleventsResponse | null) => void): Promise<historicaleventsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: historicaleventsResponse | null) => void): Promise<historicaleventsResponse>;
    execute(query?: Record<string, any>): Promise<historicaleventsResponse>;
  }
}

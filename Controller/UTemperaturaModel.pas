unit UTemperaturaModel;

interface

uses
System.Generics.Collections, REST.Json.Types;

type
  TForecast = class
  private
    FCondition   : string;
    FDate        : string;
    FDescription : string;
    FMax         : Integer;
    FMin         : Integer;
    FWeekday     : string;
  published
    property Condition    : string read FCondition   write FCondition;
    property Date         : string read FDate        write FDate;
    property Description  : string read FDescription write FDescription;
    property Max          : Integer read FMax        write FMax;
    property Min          : Integer read FMin        write FMin;
    property Weekday      : string read FWeekday     write FWeekday;
  public
    Constructor Create;
    destructor Destroy; override;
  end;

  type
  TResults = class
  private
    FCId            : string;
    FCity           : string;
    FCityName       : string;
    FConditionCode  : string;
    FConditionSlug  : string;
    FCurrently      : string;
    FDate           : string;
    FDescription    : string;
    FForecast       : TArray<TForecast>;
    FHumidity       : Integer;
    FImgId          : string;
    FSunrise        : string;
    FSunset         : string;
    FTemp           : Integer;
    FTime           : string;
    FWindSpeedy     : string;

  published
    function countItems      : integer;
    property CId           : string read FCId write FCId;
    property City          : string read FCity write FCity;
    property CityName      : string read FCityName write FCityName;
    property ConditionCode : string read FConditionCode write FConditionCode;
    property ConditionSlug : string read FConditionSlug write FConditionSlug;
    property Currently     : string read FCurrently write FCurrently;
    property Date          : string read FDate write FDate;
    property Description   : string read FDescription write FDescription;
    property forecast      : TArray<TForecast> read FForecast   write FForecast;
    property Humidity      : Integer read FHumidity write FHumidity;
    property ImgId         : string read FImgId write FImgId;
    property Sunrise       : string read FSunrise write FSunrise;
    property Sunset        : string read FSunset write FSunset;
    property Temp          : Integer read FTemp write FTemp;
    property Time          : string read FTime write FTime;
    property WindSpeedy    : string read FWindSpeedy write FWindSpeedy;

   public
    Constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TResults }

function TResults.countItems: integer;
begin
  result := Length(FForecast);
end;

constructor TResults.Create;
begin

end;

destructor TResults.Destroy;
begin

  inherited;
end;

{ TForecast }

constructor TForecast.Create;
begin

end;

destructor TForecast.Destroy;
begin

  inherited;
end;

end.

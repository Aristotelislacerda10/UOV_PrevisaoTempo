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
    Fcid            : string;
    Fcity           : string;
    Fcity_name       : string;
    Fcondition_code  : string;
    Fcondition_slug  : string;
    FCurrently      : string;
    FDate           : string;
    FDescription    : string;
    FForecast       : TArray<TForecast>;
    FHumidity       : Integer;
    Fimg_id         : string;
    FSunrise        : string;
    FSunset         : string;
    FTemp           : Integer;
    FTime           : string;
    Fwind_speedy    : string;

  published
    function countItems      : integer;
    property cid           : string read FCId write FCId;
    property city          : string read Fcity write Fcity;
    property city_name      : string read Fcity_name write Fcity_name;
    property condition_code : string read Fcondition_code write Fcondition_code;
    property condition_slug : string read Fcondition_slug write Fcondition_slug;
    property currently     : string read FCurrently write FCurrently;
    property Date          : string read FDate write FDate;
    property description   : string read FDescription write FDescription;
    property forecast      : TArray<TForecast> read FForecast   write FForecast;
    property humidity      : Integer read FHumidity write FHumidity;
    property img_id         : string read Fimg_id write Fimg_id;
    property sunrise       : string read FSunrise write FSunrise;
    property Sunset        : string read FSunset write FSunset;
    property temp          : Integer read FTemp write FTemp;
    property Time          : string read FTime write FTime;
    property wind_speedy    : string read Fwind_speedy write Fwind_speedy;

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

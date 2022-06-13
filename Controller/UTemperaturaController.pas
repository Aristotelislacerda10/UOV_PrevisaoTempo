unit UTemperaturaController;

interface

uses
  System.SysUtils,System.Variants,System.Classes,System.DateUtils,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  System.JSON, System.StrUtils,
  RestConsumeAPI,Vcl.Dialogs,
  REST.Types,REST.Json,Generics.Collections,UTemperaturaModel;


function getPrevisaoTempo(sCity_name : string) : TResults;

implementation

function getPrevisaoTempo(sCity_name : string) : TResults;
var FConsumeAPI      : iRestConsumeAPI;
    retorno          : string;
    iCodRetorno      : integer;
    Resultado        : TResults;
    JsonObjectArray  : TJsonArray;
    JsonObject       : TJsonObject;
    i                : integer;
begin
  try
    Resultado :=  TResults.create;

    FConsumeAPI := TRestConsumeAPI.new('https://api.hgbrasil.com/weather?key=84055703&city_name='+sCity_name);
    FConsumeAPI.bodyclear();
    FConsumeAPI.ExecutaMetodo(tpget, retorno, icodRetorno);

    if icodRetorno in [200,201,202,203,204,205,206,207] then
    begin
      JsonObject        := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(retorno), 0) as TJsonObject;
      JsonObject        := JsonObject.GetValue('results') as TJSONObject;
      Resultado         := TJSON.JsonToObject<TResults>(JsonObject.ToString);
      result            := Resultado;
    end
    else
    begin
      showMessage('erro ao realizar consulta');
    end;

  finally

  end;
end;

end.

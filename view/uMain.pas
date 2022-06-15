unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.BaseImageCollection, Vcl.ImageCollection, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TFrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    EdtNomeCidade: TEdit;
    Label2: TLabel;
    EdtEstado: TEdit;
    BtnPesquisar: TButton;
    PanelCabecalho: TPanel;
    Label3: TLabel;
    LCidade: TLabel;
    Label4: TLabel;
    LData: TLabel;
    Label5: TLabel;
    LHora: TLabel;
    LMomento: TLabel;
    Label7: TLabel;
    LTemperatura: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LVelocidadeVento: TLabel;
    Label10: TLabel;
    LUmidadeAr: TLabel;
    ImageListTemp: TImageList;
    Label11: TLabel;
    LCondicao: TLabel;
    BtnSair: TButton;
    Image1: TImage;
    GridForecasts: TDBGrid;
    dsForecasts: TDataSource;
    CDForecasts: TClientDataSet;
    CDForecastsdate: TStringField;
    CDForecastsweekday: TStringField;
    CDForecastsmax: TIntegerField;
    CDForecastsmin: TIntegerField;
    CDForecastsdescription: TStringField;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses UTemperaturaModel, UTemperaturaController;

{$R *.dfm}

procedure TFrmMain.BtnPesquisarClick(Sender: TObject);
Var previsaoTempo : TResults;
    i             : integer;
begin
 try

   CDForecasts.close;
   CDForecasts.CreateDataSet;

   if edtNomeCidade.text = '' then
   begin
     showMessage('nenhuma cidade digitada');
     exit;
   end;

   if edtEstado.text = '' then
   begin
     showMessage('nenhum estado digitado');
     exit;
   end;
   image1.picture:= nil;

  previsaoTempo := getPrevisaoTempo(trim(edtNomeCidade.text)+','+trim(edtEstado.text));

  if previsaoTempo <> nil then
  begin
    PanelCabecalho.visible   := true;
    LCidade.caption          := previsaoTempo.City_name;
    LData.caption            := previsaoTempo.Date;
    Lhora.caption            := previsaoTempo.time;
    LMomento.caption         := previsaoTempo.currently;
    LTemperatura.caption     := intToStr(previsaoTempo.temp);
    LVelocidadeVento.caption := previsaoTempo.wind_speedy;
    LUmidadeAr.caption       := intToStr(previsaoTempo.Humidity);
    LCondicao.caption        := previsaoTempo.description;

    case strToInt(previsaoTempo.condition_code) of
     0,2,3,4 : ImageListTemp.GetBitmap(4, Image1.Picture.Bitmap);
     1,9,10,11,12,45,47: ImageListTemp.GetBitmap(3, Image1.Picture.Bitmap);
     19,23,24,25,27,31,32,36,44: ImageListTemp.GetBitmap(0, Image1.Picture.Bitmap);
     33: ImageListTemp.GetBitmap(1, Image1.Picture.Bitmap);
     22,26,28,29,30,34: ImageListTemp.GetBitmap(2, Image1.Picture.Bitmap);
     6,7,13,15,16,17,18,35,41,43,46: ImageListTemp.GetBitmap(5, Image1.Picture.Bitmap);
    end;

     CDForecasts.Close;
     CDForecasts.open;
     GridForecasts.visible := true;

    for i := 0 to previsaoTempo.countItems - 1 do
    begin
      CDForecasts.Insert;
      CDForecastsdate.asString               := previsaoTempo.forecast[i].date;
      CDForecastsweekday.asString            := previsaoTempo.forecast[i].weekday;
      CDForecastsmax.asInteger               := previsaoTempo.forecast[i].max;
      CDForecastsmin.asInteger               := previsaoTempo.forecast[i].min;
      CDForecastsdescription.asString        := previsaoTempo.forecast[i].description;
      CDForecasts.post;
    end;
    CDForecasts.first;

  end;

 finally

 end;
end;

procedure TFrmMain.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  PanelCabecalho.visible   := false;
  GridForecasts.visible    := false;
  CDForecasts.close;
  CDForecasts.CreateDataSet;


end;

end.

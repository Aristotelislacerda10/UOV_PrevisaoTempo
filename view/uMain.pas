unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.BaseImageCollection, Vcl.ImageCollection,
  Vcl.VirtualImage;

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
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LVelocidadeVento: TLabel;
    Label10: TLabel;
    LUmidadeAr: TLabel;
    ImageListTemp: TImageList;
    VirtualImage1: TVirtualImage;
    ImageCollection1: TImageCollection;
    Label11: TLabel;
    LCondicao: TLabel;
    PanelSeg: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    BtnSair: TButton;
    VirtualImage2: TVirtualImage;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree;
end;

end.

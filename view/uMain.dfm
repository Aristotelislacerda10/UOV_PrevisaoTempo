object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Previsao do Tempo'
  ClientHeight = 531
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 49
    Align = alTop
    Caption = 'PREVIS'#195'O DO TEMPO'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 735
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 745
    Height = 482
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 735
    ExplicitHeight = 472
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 743
      Height = 40
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 733
      object Label1: TLabel
        AlignWithMargins = True
        Left = 31
        Top = 11
        Width = 80
        Height = 18
        Margins.Left = 30
        Margins.Top = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Nome da cidade:'
        ExplicitHeight = 13
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 523
        Top = 11
        Width = 37
        Height = 18
        Margins.Left = 5
        Margins.Top = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'estado:'
        ExplicitHeight = 13
      end
      object EdtNomeCidade: TEdit
        AlignWithMargins = True
        Left = 119
        Top = 9
        Width = 394
        Height = 23
        Margins.Left = 5
        Margins.Top = 8
        Margins.Right = 5
        Margins.Bottom = 7
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 22
      end
      object EdtEstado: TEdit
        AlignWithMargins = True
        Left = 568
        Top = 9
        Width = 49
        Height = 23
        Margins.Left = 5
        Margins.Top = 8
        Margins.Right = 5
        Margins.Bottom = 7
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitHeight = 22
      end
      object BtnPesquisar: TButton
        AlignWithMargins = True
        Left = 635
        Top = 4
        Width = 104
        Height = 32
        Align = alRight
        Caption = 'Pesquisar'
        TabOrder = 2
        ExplicitLeft = 625
      end
    end
  end
end

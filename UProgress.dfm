object fmProgress: TfmProgress
  Left = 1761
  Top = 152
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Searching...'
  ClientHeight = 203
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 259
    Height = 203
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnSlow: TPanel
      Left = 0
      Top = 0
      Width = 259
      Height = 134
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 7
        Width = 95
        Height = 13
        Caption = 'Current Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbF: TLabel
        Left = 162
        Top = 7
        Width = 54
        Height = 13
        Caption = 'Founded:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 7
        Top = 22
        Width = 195
        Height = 13
        Caption = 'Size from Start address in MBytes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbFounded: TLabel
        Left = 219
        Top = 7
        Width = 3
        Height = 13
      end
      object lbSize: TLabel
        Left = 204
        Top = 22
        Width = 3
        Height = 13
      end
      object lbCurAddr: TLabel
        Left = 105
        Top = 7
        Width = 3
        Height = 13
      end
      object Label4: TLabel
        Left = 7
        Top = 37
        Width = 91
        Height = 13
        Caption = 'Current Module:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCurMod: TLabel
        Left = 100
        Top = 37
        Width = 3
        Height = 13
      end
      object Label5: TLabel
        Left = 8
        Top = 53
        Width = 133
        Height = 13
        Caption = 'Module Size in MBytes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbModSize: TLabel
        Left = 143
        Top = 53
        Width = 3
        Height = 13
      end
      object Label6: TLabel
        Left = 8
        Top = 117
        Width = 79
        Height = 13
        Caption = 'Page Protect:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPageProt: TLabel
        Left = 89
        Top = 117
        Width = 3
        Height = 13
      end
      object Label7: TLabel
        Left = 8
        Top = 165
        Width = 102
        Height = 13
        Caption = 'Searching time is:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSearchTime: TLabel
        Left = 114
        Top = 165
        Width = 3
        Height = 13
      end
      object Label8: TLabel
        Left = 8
        Top = 85
        Width = 121
        Height = 13
        Caption = 'Region Size in bytes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbRegSize: TLabel
        Left = 133
        Top = 85
        Width = 3
        Height = 13
      end
      object Label9: TLabel
        Left = 8
        Top = 101
        Width = 68
        Height = 13
        Caption = 'Page State:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPageState: TLabel
        Left = 82
        Top = 101
        Width = 3
        Height = 13
      end
      object Label10: TLabel
        Left = 8
        Top = 69
        Width = 149
        Height = 13
        Caption = 'Size from Region in bytes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbSizeFromReg: TLabel
        Left = 159
        Top = 69
        Width = 3
        Height = 13
      end
    end
    object pnProg: TPanel
      Left = 0
      Top = 134
      Width = 259
      Height = 69
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Panel3: TPanel
        Left = 9
        Top = 10
        Width = 244
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object gag: TGauge
          Left = 2
          Top = 2
          Width = 240
          Height = 17
          Align = alClient
          BorderStyle = bsNone
          ForeColor = clBlue
          Progress = 50
        end
      end
      object btStop: TBitBtn
        Left = 93
        Top = 39
        Width = 75
        Height = 25
        Cancel = True
        Caption = 'Stop'
        ModalResult = 2
        TabOrder = 1
        OnClick = btStopClick
        NumGlyphs = 2
      end
    end
  end
end

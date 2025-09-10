object fmSendMes: TfmSendMes
  Left = 1655
  Top = 187
  BorderStyle = bsDialog
  Caption = 'Send Message'
  ClientHeight = 167
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbHWND: TLabel
    Left = 16
    Top = 16
    Width = 74
    Height = 13
    Caption = 'Window handle'
  end
  object lbMessage: TLabel
    Left = 47
    Top = 40
    Width = 43
    Height = 13
    Caption = 'Message'
  end
  object lbwParam: TLabel
    Left = 52
    Top = 64
    Width = 38
    Height = 13
    Caption = 'wParam'
  end
  object lblParam: TLabel
    Left = 58
    Top = 88
    Width = 32
    Height = 13
    Caption = 'lParam'
  end
  object Panel1: TPanel
    Left = 0
    Top = 124
    Width = 234
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object Panel2: TPanel
      Left = 49
      Top = 0
      Width = 185
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btSend: TBitBtn
        Left = 23
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Send'
        Default = True
        TabOrder = 0
        OnClick = btSendClick
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 104
        Top = 11
        Width = 75
        Height = 25
        Cancel = True
        Caption = 'Cancel'
        ModalResult = 2
        TabOrder = 1
        NumGlyphs = 2
      end
    end
  end
  object edHWND: TEdit
    Left = 100
    Top = 13
    Width = 122
    Height = 21
    Color = clBtnFace
    MaxLength = 8
    ReadOnly = True
    TabOrder = 0
  end
  object edMessage: TEdit
    Left = 100
    Top = 37
    Width = 102
    Height = 21
    MaxLength = 8
    TabOrder = 1
  end
  object edwParam: TEdit
    Left = 100
    Top = 61
    Width = 122
    Height = 21
    MaxLength = 8
    TabOrder = 3
  end
  object edlParam: TEdit
    Left = 100
    Top = 85
    Width = 122
    Height = 21
    MaxLength = 8
    TabOrder = 4
  end
  object btMess: TBitBtn
    Left = 201
    Top = 37
    Width = 21
    Height = 21
    Caption = '...'
    TabOrder = 2
    OnClick = btMessClick
  end
  object rbHex: TRadioButton
    Left = 96
    Top = 112
    Width = 57
    Height = 17
    Caption = 'HEX'
    Checked = True
    TabOrder = 6
    TabStop = True
    OnClick = rbHexClick
  end
  object rbDec: TRadioButton
    Left = 168
    Top = 112
    Width = 55
    Height = 17
    Caption = 'DEC'
    TabOrder = 7
    OnClick = rbHexClick
  end
end

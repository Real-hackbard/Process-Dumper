object fmSaveMem: TfmSaveMem
  Left = 1817
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Save memory'
  ClientHeight = 209
  ClientWidth = 229
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
  object Panel1: TPanel
    Left = 0
    Top = 173
    Width = 229
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 44
      Top = 0
      Width = 185
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 23
        Top = 5
        Width = 75
        Height = 25
        Caption = 'OK'
        Default = True
        TabOrder = 0
        OnClick = BitBtn1Click
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 104
        Top = 5
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 229
    Height = 173
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnModule: TPanel
      Left = 0
      Top = 30
      Width = 502
      Height = 26
      BevelOuter = bvNone
      TabOrder = 1
      object Label2: TLabel
        Left = 10
        Top = 7
        Width = 67
        Height = 13
        Caption = 'Module name:'
      end
      object cbModule: TComboBox
        Left = 84
        Top = 4
        Width = 130
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbModuleChange
      end
    end
    object pnAddr: TPanel
      Left = 0
      Top = 56
      Width = 502
      Height = 56
      BevelOuter = bvNone
      TabOrder = 2
      object Label3: TLabel
        Left = 12
        Top = 8
        Width = 65
        Height = 13
        Caption = 'Start address:'
      end
      object Label4: TLabel
        Left = 7
        Top = 35
        Width = 70
        Height = 13
        Caption = 'Finish address:'
      end
      object edStart: TEdit
        Left = 84
        Top = 5
        Width = 130
        Height = 21
        MaxLength = 8
        TabOrder = 0
        OnKeyPress = edStartKeyPress
      end
      object edFinish: TEdit
        Left = 84
        Top = 32
        Width = 130
        Height = 21
        MaxLength = 8
        TabOrder = 1
        OnKeyPress = edStartKeyPress
      end
    end
    object pnTop: TPanel
      Left = 0
      Top = 0
      Width = 229
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 48
        Top = 12
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Case:'
      end
      object cbOper: TComboBox
        Left = 84
        Top = 8
        Width = 130
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbOperChange
        Items.Strings = (
          'Current Page'
          'Module'
          'Custom Memory')
      end
    end
  end
end

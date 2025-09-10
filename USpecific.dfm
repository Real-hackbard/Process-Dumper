object fmSpecific: TfmSpecific
  Left = 1631
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Specific'
  ClientHeight = 190
  ClientWidth = 205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 159
    Width = 205
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 20
      Top = 0
      Width = 185
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btOk: TBitBtn
        Left = 23
        Top = 2
        Width = 75
        Height = 25
        Caption = 'OK'
        Default = True
        TabOrder = 0
        OnClick = btOkClick
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 104
        Top = 2
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
    Width = 205
    Height = 159
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 195
      Height = 149
      Align = alClient
      Caption = 'Columns'
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 55
        Width = 30
        Height = 13
        Caption = 'Value:'
      end
      object rbNewValue: TRadioButton
        Left = 7
        Top = 15
        Width = 75
        Height = 17
        Caption = 'NewValue'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbOldValue: TRadioButton
        Left = 7
        Top = 31
        Width = 75
        Height = 17
        Caption = 'OldValue'
        TabOrder = 1
      end
      object rbType: TRadioButton
        Left = 82
        Top = 16
        Width = 52
        Height = 17
        Caption = 'Type'
        TabOrder = 2
      end
      object rbAddress: TRadioButton
        Left = 82
        Top = 32
        Width = 65
        Height = 17
        Caption = 'Address'
        TabOrder = 3
      end
      object edValue: TEdit
        Left = 47
        Top = 51
        Width = 139
        Height = 21
        TabOrder = 5
      end
      object rbHint: TRadioButton
        Left = 141
        Top = 16
        Width = 47
        Height = 17
        Caption = 'Hint'
        TabOrder = 4
      end
      object GroupBox2: TGroupBox
        Left = 9
        Top = 76
        Width = 178
        Height = 64
        Caption = 'Operations'
        TabOrder = 6
        object rbRemove: TRadioButton
          Left = 4
          Top = 16
          Width = 63
          Height = 17
          Caption = 'Remove'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbChangeClick
        end
        object rbSelect: TRadioButton
          Left = 67
          Top = 17
          Width = 53
          Height = 15
          Caption = 'Select'
          TabOrder = 1
          OnClick = rbChangeClick
        end
        object rbCheck: TRadioButton
          Left = 120
          Top = 17
          Width = 53
          Height = 15
          Caption = 'Check'
          TabOrder = 2
          OnClick = rbChangeClick
        end
        object rbChange: TRadioButton
          Left = 4
          Top = 38
          Width = 63
          Height = 17
          Caption = 'Change'
          TabOrder = 3
          OnClick = rbChangeClick
        end
        object edChange: TEdit
          Left = 70
          Top = 36
          Width = 100
          Height = 21
          Color = clBtnFace
          Enabled = False
          TabOrder = 4
        end
      end
    end
  end
end

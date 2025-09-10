object fmDumpMem: TfmDumpMem
  Left = 290
  Top = 153
  Width = 685
  Height = 609
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Dump Memory'
  Color = clBtnFace
  Constraints.MinHeight = 435
  Constraints.MinWidth = 685
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 669
    Height = 570
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 669
      Height = 570
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 0
      object Panel4: TPanel
        Left = 5
        Top = 378
        Width = 659
        Height = 187
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Panel2: TPanel
          Left = 574
          Top = 0
          Width = 85
          Height = 187
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object lbCount: TLabel
            Left = 8
            Top = 13
            Width = 40
            Height = 13
            Caption = 'Count: 0'
          end
          object btClose: TBitBtn
            Left = 7
            Top = 150
            Width = 75
            Height = 25
            Cancel = True
            Caption = 'Close'
            ModalResult = 1
            TabOrder = 4
            NumGlyphs = 2
          end
          object btInfo: TBitBtn
            Left = 7
            Top = 120
            Width = 75
            Height = 25
            Caption = 'Process'
            TabOrder = 3
            OnClick = btInfoClick
            Margin = 0
          end
          object btSave: TBitBtn
            Left = 7
            Top = 60
            Width = 75
            Height = 25
            Caption = 'Save List'
            TabOrder = 1
            OnClick = btSaveClick
          end
          object btLoad: TBitBtn
            Left = 7
            Top = 90
            Width = 75
            Height = 25
            Caption = 'Load List'
            TabOrder = 2
            OnClick = btLoadClick
          end
          object btStopFill: TBitBtn
            Left = 7
            Top = 30
            Width = 75
            Height = 25
            Cancel = True
            Caption = 'Stop Fill'
            TabOrder = 0
            OnClick = btStopFillClick
            NumGlyphs = 2
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 265
          Height = 187
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label33: TLabel
            Left = 31
            Top = 9
            Width = 65
            Height = 13
            Caption = 'Start address:'
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 32
            Width = 265
            Height = 153
            Caption = 'Memory Basic Information'
            TabOrder = 2
            object lbAllocationBase: TLabel
              Left = 87
              Top = 32
              Width = 6
              Height = 13
              Caption = '0'
            end
            object lbState: TLabel
              Left = 87
              Top = 79
              Width = 26
              Height = 13
              Caption = 'None'
            end
            object lbBaseAddress: TLabel
              Left = 87
              Top = 17
              Width = 6
              Height = 13
              Caption = '0'
            end
            object lbRegionSize: TLabel
              Left = 87
              Top = 63
              Width = 6
              Height = 13
              Caption = '0'
            end
            object lbType_9: TLabel
              Left = 87
              Top = 116
              Width = 26
              Height = 13
              Caption = 'None'
            end
            object Label17: TLabel
              Left = 11
              Top = 17
              Width = 62
              Height = 13
              Caption = 'BaseAddress'
            end
            object Label18: TLabel
              Left = 11
              Top = 32
              Width = 70
              Height = 13
              Caption = 'AllocationBase'
            end
            object Label19: TLabel
              Left = 11
              Top = 48
              Width = 57
              Height = 13
              Caption = 'AllocProtect'
            end
            object Label20: TLabel
              Left = 11
              Top = 63
              Width = 54
              Height = 13
              Caption = 'RegionSize'
            end
            object Label28: TLabel
              Left = 11
              Top = 79
              Width = 25
              Height = 13
              Caption = 'State'
            end
            object Label29: TLabel
              Left = 11
              Top = 98
              Width = 34
              Height = 13
              Caption = 'Protect'
            end
            object Label30: TLabel
              Left = 11
              Top = 116
              Width = 36
              Height = 13
              Caption = 'Type_9'
            end
            object Label31: TLabel
              Left = 11
              Top = 132
              Width = 35
              Height = 13
              Caption = 'Module'
            end
            object lbModule: TLabel
              Left = 87
              Top = 132
              Width = 26
              Height = 13
              Caption = 'None'
            end
            object lbAllocProtect: TLabel
              Left = 88
              Top = 48
              Width = 26
              Height = 13
              Caption = 'None'
            end
            object cbProtect: TComboBox
              Left = 87
              Top = 94
              Width = 162
              Height = 21
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              TabOrder = 0
              OnChange = cbProtectChange
              Items.Strings = (
                'None'
                'READONLY'
                'READWRITE'
                'WRITECOPY'
                'EXECUTE'
                'EXECUTE_READ'
                'EXECUTE_READWRITE'
                'EXECUTE_WRITECOPY'
                'GUARD'
                'NOACCESS'
                'NOCACHS')
            end
          end
          object btGo: TBitBtn
            Left = 190
            Top = 6
            Width = 74
            Height = 21
            Caption = 'Go'
            TabOrder = 1
            OnClick = btGoClick
          end
          object cbStart: TComboBox
            Left = 102
            Top = 6
            Width = 88
            Height = 21
            ItemHeight = 13
            MaxLength = 8
            Sorted = True
            TabOrder = 0
            OnKeyDown = edStartKeyDown
            OnKeyPress = edStartKeyPress
          end
        end
        object Panel8: TPanel
          Left = 265
          Top = 0
          Width = 309
          Height = 187
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 1
          object LV: TListView
            Left = 5
            Top = 41
            Width = 299
            Height = 141
            Align = alClient
            Checkboxes = True
            Columns = <
              item
                AutoSize = True
                Caption = 'Address'
              end
              item
                AutoSize = True
                Caption = 'Type'
              end
              item
                Alignment = taRightJustify
                AutoSize = True
                Caption = 'OldValue'
              end
              item
                Alignment = taRightJustify
                AutoSize = True
                Caption = 'NewValue'
              end
              item
                AutoSize = True
                Caption = 'Hint'
              end>
            GridLines = True
            HideSelection = False
            MultiSelect = True
            ReadOnly = True
            RowSelect = True
            PopupMenu = pm
            TabOrder = 1
            ViewStyle = vsReport
            OnColumnClick = LVColumnClick
            OnCustomDrawItem = LVCustomDrawItem
            OnDblClick = LVDblClick
            OnKeyDown = LVKeyDown
          end
          object Panel9: TPanel
            Left = 5
            Top = 5
            Width = 299
            Height = 36
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object cbOnTimer: TCheckBox
              Left = 2
              Top = 17
              Width = 233
              Height = 17
              Caption = 'Write NewValue in ListView from delay in ms:'
              TabOrder = 1
              OnClick = cbOnTimerClick
            end
            object cbRef: TCheckBox
              Left = 2
              Top = 0
              Width = 138
              Height = 17
              Caption = 'Update on Refresh Click'
              TabOrder = 0
            end
            object edTime: TEdit
              Left = 235
              Top = 11
              Width = 40
              Height = 21
              MaxLength = 5
              ReadOnly = True
              TabOrder = 2
              Text = '500'
            end
            object udTime: TUpDown
              Left = 275
              Top = 11
              Width = 15
              Height = 21
              Associate = edTime
              Min = 100
              Max = 10000
              Increment = 100
              Position = 500
              TabOrder = 3
              Thousands = False
              OnChanging = udTimeChanging
            end
          end
        end
      end
      object Panel5: TPanel
        Left = 5
        Top = 5
        Width = 659
        Height = 373
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object sg: TStringGrid
          Left = 0
          Top = 0
          Width = 568
          Height = 373
          Align = alClient
          ColCount = 18
          DefaultColWidth = 20
          DefaultRowHeight = 18
          FixedColor = clBtnShadow
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goEditing]
          ParentFont = False
          PopupMenu = pmRO
          TabOrder = 0
          OnDrawCell = sgDrawCell
          OnExit = sgExit
          OnKeyDown = sgKeyDown
          OnKeyPress = sgKeyPress
          OnMouseDown = sgMouseDown
          OnSelectCell = sgSelectCell
          OnSetEditText = sgSetEditText
        end
        object Panel6: TPanel
          Left = 568
          Top = 0
          Width = 91
          Height = 373
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object btPrev: TBitBtn
            Left = 11
            Top = 0
            Width = 78
            Height = 25
            Caption = 'Prev Page'
            TabOrder = 0
            OnClick = btPrevClick
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777777777700077770000077770007777066607777000777706660777
              7000777706660777700070000666000070007706666666077000777066666077
              7000777706660777700077777060777770007777770777777000777777777777
              7000}
          end
          object btNext: TBitBtn
            Left = 11
            Top = 29
            Width = 78
            Height = 25
            Caption = 'Next Page'
            TabOrder = 1
            OnClick = btNextClick
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777777777700077777707777770007777706077777000777706660777
              7000777066666077700077066666660770007000066600007000777706660777
              7000777706660777700077770666077770007777000007777000777777777777
              7000}
          end
          object btrefresh: TBitBtn
            Left = 11
            Top = 58
            Width = 78
            Height = 25
            Caption = 'Refresh'
            TabOrder = 2
            OnClick = btrefreshClick
            Margin = 6
          end
          object btSearch: TBitBtn
            Left = 11
            Top = 87
            Width = 78
            Height = 25
            Caption = 'Search'
            TabOrder = 3
            OnClick = btSearchClick
          end
          object btApply: TBitBtn
            Left = 11
            Top = 145
            Width = 78
            Height = 25
            Caption = 'Apply'
            Enabled = False
            TabOrder = 5
            OnClick = btApplyClick
            Margin = 10
          end
          object cbMulti: TCheckBox
            Left = 11
            Top = 216
            Width = 74
            Height = 17
            Caption = 'Multiselect'
            TabOrder = 7
            OnClick = cbMultiClick
          end
          object btSaveMem: TBitBtn
            Left = 11
            Top = 174
            Width = 78
            Height = 25
            Caption = 'Save Mem'
            TabOrder = 6
            OnClick = btSaveMemClick
          end
          object btClearMem: TBitBtn
            Left = 11
            Top = 116
            Width = 78
            Height = 25
            Caption = '0'
            TabOrder = 4
            OnClick = btClearMemClick
          end
        end
        object pnMemo: TPanel
          Left = 40
          Top = 104
          Width = 513
          Height = 89
          BevelOuter = bvNone
          TabOrder = 2
          object re: TMemo
            Left = 0
            Top = 31
            Width = 513
            Height = 58
            Align = alClient
            PopupMenu = pmRO
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object pnMemoTop: TPanel
            Left = 0
            Top = 0
            Width = 513
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object lbCoding: TLabel
              Left = 10
              Top = 9
              Width = 57
              Height = 13
              Caption = '?????????:'
            end
            object cmbCoding: TComboBox
              Left = 77
              Top = 6
              Width = 133
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
              OnChange = cmbCodingChange
              Items.Strings = (
                'WIN --> ALT'
                'WIN --> ISO'
                'WIN --> KOI'
                'WIN --> MAC'
                'ALT --> ISO'
                'ALT --> KOI'
                'ALT --> MAC'
                'ALT --> WIN'
                'ISO --> ALT'
                'ISO --> KOI'
                'ISO --> MAC'
                'ISO --> WIN'
                'KOI --> ALT'
                'KOI --> ISO'
                'KOI --> MAC'
                'KOI --> WIN'
                'MAC --> ALT'
                'MAC --> ISO'
                'MAC --> KOI'
                'MAC --> WIN')
            end
            object bibCodingBack: TBitBtn
              Left = 216
              Top = 6
              Width = 75
              Height = 21
              Caption = 'Back'
              TabOrder = 1
              OnClick = bibCodingBackClick
            end
            object bibCodingDefault: TBitBtn
              Left = 297
              Top = 6
              Width = 75
              Height = 21
              Caption = 'Default'
              TabOrder = 2
              OnClick = bibCodingDefaultClick
            end
            object chbCodingClear: TCheckBox
              Left = 379
              Top = 8
              Width = 86
              Height = 17
              Caption = 'Once again'
              Checked = True
              State = cbChecked
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  object pm: TPopupMenu
    OnPopup = pmPopup
    Left = 346
    Top = 300
    object miGotoAddr: TMenuItem
      Caption = 'Go to Address'
      OnClick = miGotoAddrClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miAdd: TMenuItem
      Caption = 'Add'
      OnClick = miAddClick
    end
    object miChange: TMenuItem
      Caption = 'Change'
      OnClick = miChangeClick
    end
    object miRemove: TMenuItem
      Caption = 'Remove'
      OnClick = miRemoveClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miSpec: TMenuItem
      Caption = 'Specific'
      OnClick = miSpecClick
    end
    object miRemoveAll: TMenuItem
      Caption = 'Remove all'
      OnClick = miRemoveAllClick
    end
  end
  object pmRO: TPopupMenu
    OnPopup = pmROPopup
    Left = 421
    Top = 21
    object miAddToLV: TMenuItem
      Caption = 'Add to ListView'
      OnClick = miAddToLVClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object miView: TMenuItem
      Caption = 'View'
      object miViewHex: TMenuItem
        Caption = 'Hex'
        Checked = True
        GroupIndex = 1
        RadioItem = True
        OnClick = miViewStringClick
      end
      object miViewString: TMenuItem
        Caption = 'String'
        GroupIndex = 1
        RadioItem = True
        OnClick = miViewStringClick
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object miFont: TMenuItem
      Caption = 'Font'
      OnClick = miFontClick
    end
  end
  object pmSETime: TPopupMenu
    Left = 477
    Top = 269
  end
  object tm: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmTimer
    Left = 442
    Top = 268
  end
  object sd: TSaveDialog
    DefaultExt = '*.pvd'
    Filter = '(Process View files *.pvd)|*.pvd|(All files *.*)|*.*'
    Options = [ofOverwritePrompt, ofEnableSizing]
    Left = 541
    Top = 253
  end
  object od: TOpenDialog
    DefaultExt = '*.pvd'
    Filter = '(Process View files *.pvd)|*.pvd|(All files *.*)|*.*'
    Options = [ofEnableSizing]
    Left = 539
    Top = 276
  end
  object fd: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 477
    Top = 21
  end
end

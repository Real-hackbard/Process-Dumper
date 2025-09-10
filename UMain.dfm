object Form1: TForm1
  Left = 1628
  Top = 180
  Width = 704
  Height = 341
  Caption = 'Process Dumper'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 592
    Top = 0
    Width = 96
    Height = 302
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object btKill: TBitBtn
      Left = 7
      Top = 8
      Width = 85
      Height = 25
      Hint = 'Kill process'
      Caption = 'Kill'
      ModalResult = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btKillClick
    end
    object btDumpMem: TBitBtn
      Left = 7
      Top = 139
      Width = 85
      Height = 27
      Hint = 'Dump memory'
      Caption = 'Dump'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btDumpMemClick
    end
    object Panel2: TPanel
      Left = 0
      Top = 261
      Width = 96
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 8
    end
    object btRefresh: TBitBtn
      Left = 7
      Top = 73
      Width = 85
      Height = 27
      Hint = 'Refresh list'
      Caption = 'Refresh'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btRefreshClick
    end
    object btExrract: TBitBtn
      Left = 7
      Top = 106
      Width = 85
      Height = 27
      Hint = 'Extract first icon'
      Caption = 'Extract'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btExrractClick
    end
    object btProcInfo: TBitBtn
      Left = 7
      Top = 172
      Width = 85
      Height = 27
      Hint = 'Process info'
      Caption = 'Process'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btProcInfoClick
    end
    object btWindows: TBitBtn
      Left = 7
      Top = 205
      Width = 85
      Height = 27
      Hint = 'Windows'
      Caption = 'Windows'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btWindowsClick
    end
    object btFileInfo: TBitBtn
      Left = 7
      Top = 238
      Width = 85
      Height = 27
      Hint = 'PE Info'
      Caption = 'PE Info'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btFileInfoClick
    end
    object bibNew: TBitBtn
      Left = 7
      Top = 40
      Width = 85
      Height = 27
      Hint = 'New Process'
      Caption = 'New'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bibNewClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 302
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object LV: TListView
      Left = 0
      Top = 0
      Width = 592
      Height = 271
      Align = alClient
      Columns = <
        item
          Caption = 'Process'
          Width = 200
        end>
      HideSelection = False
      LargeImages = Largeil
      MultiSelect = True
      ReadOnly = True
      RowSelect = True
      PopupMenu = pm
      SmallImages = SmallIl
      TabOrder = 0
      ViewStyle = vsReport
      OnColumnClick = LVColumnClick
      OnCustomDrawItem = LVCustomDrawItem
    end
    object pnOnlyDriver: TPanel
      Left = 0
      Top = 271
      Width = 592
      Height = 31
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        592
        31)
      object lbCount: TLabel
        Left = 417
        Top = 10
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        Caption = 'Count: 0'
      end
      object rbProc: TRadioButton
        Left = 8
        Top = 8
        Width = 81
        Height = 17
        Caption = 'Processes'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbProcClick
      end
      object rbDriv: TRadioButton
        Left = 91
        Top = 8
        Width = 62
        Height = 17
        Caption = 'Drivers'
        TabOrder = 1
        OnClick = rbProcClick
      end
      object chbStayOnTop: TCheckBox
        Left = 161
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Stay on top'
        TabOrder = 2
        OnClick = chbStayOnTopClick
      end
    end
  end
  object od: TOpenDialog
    Filter = 'Exe files (*.exe)|*.exe|All files (*.*)|*.*'
    Options = [ofEnableSizing]
    Left = 32
    Top = 64
  end
  object sd: TSaveDialog
    Filter = 'Icon|*.ico'
    Left = 63
    Top = 64
  end
  object Largeil: TImageList
    DrawingStyle = dsTransparent
    Height = 32
    ShareImages = True
    Width = 32
    Left = 184
    Top = 64
  end
  object pm: TPopupMenu
    OnPopup = pmPopup
    Left = 32
    Top = 112
    object miKill: TMenuItem
      Caption = 'Kill'
      Default = True
      ImageIndex = 0
      OnClick = miKillClick
    end
    object miNew: TMenuItem
      Caption = 'New'
      Hint = 'New'
      ImageIndex = 12
      OnClick = miNewClick
    end
    object miRefresh: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 1
      OnClick = miRefreshClick
    end
    object miAutoRefresh: TMenuItem
      Caption = 'Auto Refresh'
      OnClick = miAutoRefreshClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object miExtractIcon: TMenuItem
      Caption = 'Extract Icon'
      ImageIndex = 2
      OnClick = miExtractIconClick
    end
    object miDump: TMenuItem
      Caption = 'Dump'
      ImageIndex = 3
      OnClick = miDumpClick
    end
    object miInfo: TMenuItem
      Caption = 'Process Information'
      ImageIndex = 4
      OnClick = miInfoClick
    end
    object miWindows: TMenuItem
      Caption = 'Windows'
      ImageIndex = 5
      OnClick = miWindowsClick
    end
    object miPEInfo: TMenuItem
      Caption = 'PE Information'
      ImageIndex = 6
      OnClick = miPEInfoClick
    end
    object miObjectTree: TMenuItem
      Caption = 'Object Tree'
      ImageIndex = 17
      OnClick = miObjectTreeClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object miMapFile: TMenuItem
      Caption = 'Map File'
      ImageIndex = 18
      OnClick = miMapFileClick
    end
    object miUnmapfile: TMenuItem
      Caption = 'Unmap file'
      ImageIndex = 19
      Visible = False
      OnClick = miUnmapfileClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miPrioritet: TMenuItem
      Caption = 'Prioritet'
      object miIdle: TMenuItem
        Caption = 'IDLE'
        GroupIndex = 1
        RadioItem = True
        OnClick = miRealTimeClick
      end
      object miNormal: TMenuItem
        Caption = 'NORMAL'
        GroupIndex = 1
        RadioItem = True
        OnClick = miRealTimeClick
      end
      object miHigh: TMenuItem
        Caption = 'HIGH'
        GroupIndex = 1
        RadioItem = True
        OnClick = miRealTimeClick
      end
      object miRealTime: TMenuItem
        Caption = 'REALTIME'
        GroupIndex = 1
        RadioItem = True
        OnClick = miRealTimeClick
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miView: TMenuItem
      Caption = 'View'
      object miViewIcon: TMenuItem
        Caption = 'Icon'
        GroupIndex = 2
        RadioItem = True
        OnClick = miViewReportClick
      end
      object miViewSmallIcon: TMenuItem
        Caption = 'Small Icon'
        GroupIndex = 2
        RadioItem = True
        OnClick = miViewReportClick
      end
      object miViewList: TMenuItem
        Caption = 'List'
        GroupIndex = 2
        RadioItem = True
        OnClick = miViewReportClick
      end
      object miViewReport: TMenuItem
        Caption = 'Report'
        Checked = True
        GroupIndex = 2
        RadioItem = True
        OnClick = miViewReportClick
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object miCopyPath: TMenuItem
      Caption = 'Copy Path'
      OnClick = miCopyPathClick
    end
  end
  object SmallIl: TImageList
    DrawingStyle = dsTransparent
    ShareImages = True
    Left = 152
    Top = 64
  end
  object tm: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmTimer
    Left = 64
    Top = 112
  end
end

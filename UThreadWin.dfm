object fmThWin: TfmThWin
  Left = 1739
  Top = 171
  Width = 550
  Height = 400
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Windows from Thread'
  Color = clBtnFace
  Constraints.MinHeight = 350
  Constraints.MinWidth = 500
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
  object splProp: TSplitter
    Left = 346
    Top = 0
    Height = 316
    Align = alRight
  end
  object pnBut: TPanel
    Left = 0
    Top = 316
    Width = 534
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      534
      45)
    object btRefresh: TBitBtn
      Left = 10
      Top = 9
      Width = 85
      Height = 27
      Hint = 'Refresh list'
      Anchors = [akLeft, akBottom]
      Caption = 'Refresh'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btRefreshClick
      Margin = 8
    end
    object btSearch: TBitBtn
      Left = 106
      Top = 9
      Width = 85
      Height = 27
      Hint = 'Refresh list'
      Anchors = [akLeft, akBottom]
      Caption = 'Search'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btSearchClick
      Margin = 8
    end
    object btClose: TBitBtn
      Left = 447
      Top = 9
      Width = 85
      Height = 27
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Close'
      ModalResult = 2
      TabOrder = 2
      NumGlyphs = 2
    end
    object btSendMessage: TBitBtn
      Left = 202
      Top = 9
      Width = 85
      Height = 27
      Hint = 'Send Message'
      Anchors = [akLeft, akBottom]
      Caption = 'Send Message'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btSendMessageClick
    end
  end
  object tv: TTreeView
    Left = 0
    Top = 0
    Width = 346
    Height = 316
    Align = alClient
    HideSelection = False
    HotTrack = True
    Indent = 19
    PopupMenu = pmTV
    ReadOnly = True
    TabOrder = 0
    OnChange = tvChange
  end
  object pnProp: TPanel
    Left = 349
    Top = 0
    Width = 185
    Height = 316
    Align = alRight
    BevelOuter = bvNone
    Constraints.MinWidth = 35
    TabOrder = 1
    object pcProp: TPageControl
      Left = 0
      Top = 0
      Width = 185
      Height = 316
      ActivePage = tbsStyles
      Align = alClient
      TabOrder = 0
      object tbsStyles: TTabSheet
        Caption = 'Styles'
        object clbStyles: TCheckListBox
          Left = 0
          Top = 0
          Width = 177
          Height = 288
          OnClickCheck = clbStylesClickCheck
          Align = alClient
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object tbsExStyles: TTabSheet
        Caption = 'ExStyles'
        ImageIndex = 1
        object clbExStyles: TCheckListBox
          Left = 0
          Top = 0
          Width = 177
          Height = 288
          OnClickCheck = clbExStylesClickCheck
          Align = alClient
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object tbsClsStyle: TTabSheet
        Caption = 'ClsStyle'
        ImageIndex = 2
        TabVisible = False
        object clbClsStyles: TCheckListBox
          Left = 0
          Top = 0
          Width = 177
          Height = 288
          OnClickCheck = clbClsStylesClickCheck
          Align = alClient
          ItemHeight = 13
          TabOrder = 0
        end
      end
    end
  end
  object pmTV: TPopupMenu
    OnPopup = pmTVPopup
    Left = 200
    Top = 208
    object miRefresh: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 0
      OnClick = miRefreshClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miSend: TMenuItem
      Caption = 'Send Message'
      OnClick = miSendClick
    end
    object miSearch: TMenuItem
      Caption = 'Search'
      ImageIndex = 1
      OnClick = miSearchClick
    end
  end
  object fd: TFindDialog
    OnFind = fdFind
    Left = 248
    Top = 200
  end
end

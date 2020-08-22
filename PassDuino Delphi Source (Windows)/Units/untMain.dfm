object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'PassDuino 1.0'
  ClientHeight = 447
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = dmFunctions.MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 428
    Width = 780
    Height = 19
    Panels = <
      item
        Text = ' Profile:'
        Width = 300
      end
      item
        Alignment = taCenter
        Text = 'Stored:'
        Width = 100
      end
      item
        Alignment = taCenter
        Text = 'Max:'
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 772
    Height = 34
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 2
    ButtonHeight = 32
    ButtonWidth = 32
    Caption = 'ToolBar1'
    Images = dmFunctions.ImageList
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = dmFunctions.acAddPassword
    end
    object ToolButton2: TToolButton
      Left = 32
      Top = 0
      Action = dmFunctions.acRemovePassword
    end
    object ToolButton11: TToolButton
      Left = 64
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 72
      Top = 0
      Action = dmFunctions.acEditPassword
    end
    object ToolButton3: TToolButton
      Left = 104
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 112
      Top = 0
      Action = dmFunctions.acTypePassword
    end
    object ToolButton5: TToolButton
      Left = 144
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 152
      Top = 0
      Action = dmFunctions.actSettings
    end
    object ToolButton10: TToolButton
      Left = 184
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 192
      Top = 0
      Action = dmFunctions.acAbout
    end
  end
  object lvPasswords: TListView
    AlignWithMargins = True
    Left = 4
    Top = 40
    Width = 772
    Height = 384
    Margins.Left = 4
    Margins.Top = 0
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Columns = <
      item
        Caption = '#'
        Width = 35
      end
      item
        Caption = 'Title:'
        Width = 250
      end
      item
        Caption = 'Password:'
        Width = 250
      end
      item
        Alignment = taCenter
        Caption = 'Hotkey:'
        Width = 100
      end>
    ColumnClick = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 2
    ViewStyle = vsReport
    OnCreateItemClass = lvPasswordsCreateItemClass
  end
end

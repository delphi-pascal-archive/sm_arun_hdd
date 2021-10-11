object Form1: TForm1
  Left = 235
  Top = 126
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SMode_WClose_ARun_HDD'
  ClientHeight = 329
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 168
    Width = 414
    Height = 16
    Caption = '+ '#1054#1090#1082#1083#1102#1095#1077#1085#1080#1077' "Alt+Ctrl+Del", "Alt+Tab", "Alt+Esc", "Alt+F4"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 184
    Width = 585
    Height = 9
    Shape = bsBottomLine
  end
  object Bevel4: TBevel
    Left = 120
    Top = 8
    Width = 9
    Height = 153
    Shape = bsLeftLine
  end
  object Bevel5: TBevel
    Left = 344
    Top = 192
    Width = 9
    Height = 97
    Shape = bsLeftLine
  end
  object Label2: TLabel
    Left = 440
    Top = 48
    Width = 144
    Height = 16
    Caption = #1053#1077' '#1088#1072#1073#1086#1090#1072#1077#1090' "ALT-F4"'
  end
  object Bevel7: TBevel
    Left = 440
    Top = 32
    Width = 153
    Height = 9
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 8
    Top = 304
    Width = 186
    Height = 16
    Caption = #1042#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Sleep Mode'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Win Close'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 440
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Add to "AutoRun"'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 72
    Width = 105
    Height = 25
    Caption = 'Monitor OFF_1'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 104
    Width = 105
    Height = 25
    Caption = 'Monitor OFF_2'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 136
    Width = 105
    Height = 25
    Caption = 'Monitor ON'
    TabOrder = 5
    OnClick = Button6Click
  end
  object FileListBox1: TFileListBox
    Left = 288
    Top = 8
    Width = 145
    Height = 153
    FileType = [ftReadOnly, ftHidden, ftSystem, ftNormal]
    ItemHeight = 16
    Mask = '*.exe'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 128
    Top = 40
    Width = 153
    Height = 121
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 7
  end
  object DriveComboBox1: TDriveComboBox
    Left = 128
    Top = 8
    Width = 153
    Height = 22
    DirList = DirectoryListBox1
    TabOrder = 6
  end
  object FilterComboBox1: TFilterComboBox
    Left = 288
    Top = 8
    Width = 145
    Height = 24
    FileList = FileListBox1
    Filter = 'EXE files|*.exe'
    TabOrder = 9
    Visible = False
  end
  object CheckBox1: TCheckBox
    Left = 440
    Top = 72
    Width = 73
    Height = 17
    Caption = '"Alt+F4"'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object Button7: TButton
    Left = 8
    Top = 200
    Width = 169
    Height = 25
    Caption = 'Hide windows'
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 184
    Top = 200
    Width = 113
    Height = 25
    Caption = 'Crazy mouse'
    TabOrder = 12
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 8
    Top = 232
    Width = 169
    Height = 25
    Caption = 'Hide windows (random)'
    TabOrder = 13
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 184
    Top = 232
    Width = 153
    Height = 25
    Caption = 'Caption'
    TabOrder = 14
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 8
    Top = 264
    Width = 169
    Height = 25
    Caption = 'Hide cursor'
    TabOrder = 15
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 184
    Top = 264
    Width = 153
    Height = 25
    Caption = 'Show kursor'
    TabOrder = 16
    OnClick = Button12Click
  end
  object Edit1: TEdit
    Left = 304
    Top = 200
    Width = 33
    Height = 24
    TabOrder = 17
    Text = '5'
  end
  object Button21: TButton
    Left = 352
    Top = 200
    Width = 241
    Height = 25
    Caption = 'Hdd Statistics'
    TabOrder = 18
    OnClick = Button21Click
  end
  object Button22: TButton
    Left = 440
    Top = 104
    Width = 153
    Height = 25
    Caption = 'Disk'
    TabOrder = 19
    OnClick = Button22Click
  end
  object Memo1: TMemo
    Left = 352
    Top = 232
    Width = 241
    Height = 57
    ScrollBars = ssVertical
    TabOrder = 20
  end
  object Edit4: TEdit
    Left = 440
    Top = 136
    Width = 153
    Height = 24
    TabOrder = 21
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 32
    Top = 296
  end
end

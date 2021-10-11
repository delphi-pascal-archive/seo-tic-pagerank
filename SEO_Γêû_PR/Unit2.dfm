object Form2: TForm2
  Left = 446
  Top = 235
  BorderStyle = bsToolWindow
  Caption = #1055#1088#1086#1082#1089#1080' '#1089#1077#1088#1074#1077#1088
  ClientHeight = 269
  ClientWidth = 228
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
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 37
    Height = 13
    Caption = #1057#1077#1088#1074#1077#1088
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 25
    Height = 13
    Caption = #1055#1086#1088#1090
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 31
    Height = 13
    Caption = #1051#1086#1075#1080#1085
  end
  object Label4: TLabel
    Left = 16
    Top = 152
    Width = 38
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Button1: TButton
    Left = 16
    Top = 232
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 200
    Width = 201
    Height = 17
    Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1055#1088#1086#1082#1089#1080'-'#1089#1077#1088#1074#1077#1088
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'IP-'#1072#1076#1088#1077#1089' '#1089#1077#1088#1074#1077#1088#1072
    OnClick = Edit1Click
  end
  object Edit2: TEdit
    Left = 16
    Top = 64
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = '3212'
    OnClick = Edit2Click
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 16
    Top = 128
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = #1051#1086#1075#1080#1085
    OnClick = Edit3Click
  end
  object Edit4: TEdit
    Left = 16
    Top = 168
    Width = 121
    Height = 21
    Enabled = False
    PasswordChar = '*'
    TabOrder = 5
    Text = #1055#1072#1088#1086#1083#1100
    OnClick = Edit4Click
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 88
    Width = 121
    Height = 17
    Caption = #1059#1095#1077#1090#1085#1072#1103' '#1079#1072#1087#1080#1089#1100
    Enabled = False
    TabOrder = 6
    OnClick = CheckBox2Click
  end
  object Button2: TButton
    Left = 144
    Top = 232
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = Button2Click
  end
end

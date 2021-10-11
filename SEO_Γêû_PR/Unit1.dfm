object Form1: TForm1
  Left = 297
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SEO '#1090#1048#1062' / PR'
  ClientHeight = 220
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 10
    Top = 81
    Width = 34
    Height = 16
    Caption = #1090#1048#1062':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 106
    Width = 26
    Height = 16
    Caption = 'PR:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 192
    Top = 40
    Width = 177
    Height = 169
    Proportional = True
    Stretch = True
  end
  object Label5: TLabel
    Left = 8
    Top = 16
    Width = 30
    Height = 16
    Caption = 'URL:'
  end
  object Button1: TButton
    Left = 8
    Top = 152
    Width = 177
    Height = 25
    Caption = 'Pr-cy.ru'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 200
    Top = 48
    Width = 121
    Height = 153
    ScrollBars = ssVertical
    TabOrder = 1
    Visible = False
  end
  object Edit1: TEdit
    Left = 48
    Top = 8
    Width = 321
    Height = 25
    TabOrder = 2
    Text = 'http://www.delphisources.ru'
  end
  object Button2: TButton
    Left = 8
    Top = 184
    Width = 177
    Height = 25
    Caption = 'Tooby.ru'
    TabOrder = 3
    OnClick = Button2Click
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 80
    Top = 48
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 112
    Top = 48
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 48
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      object N3: TMenuItem
        Caption = #1055#1088#1086#1082#1089#1080' '#1089#1077#1088#1074#1077#1088
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = '?'
      object N5: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1072
        OnClick = N5Click
      end
    end
  end
end

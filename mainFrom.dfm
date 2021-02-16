object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 48
    Top = 72
    Width = 73
    Height = 25
    Caption = 'connect'
    TabOrder = 0
    OnClick = onConnectButtonClick
  end
  object Button2: TButton
    Left = 48
    Top = 176
    Width = 73
    Height = 25
    Caption = 'send'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 178
    Top = 8
    Width = 329
    Height = 265
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button3: TButton
    Left = 48
    Top = 129
    Width = 73
    Height = 25
    Caption = 'disconnect'
    TabOrder = 3
    OnClick = onDisConnectButtonClick
  end
end

object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 318
  ClientWidth = 248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblResult: TLabel
    Left = 8
    Top = 69
    Width = 15
    Height = 33
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTitle: TLabel
    Left = 63
    Top = 21
    Width = 121
    Height = 29
    Caption = 'Calculator'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object btnSum: TButton
    Left = 182
    Top = 254
    Width = 50
    Height = 36
    Caption = '+'
    TabOrder = 0
    OnClick = btnSumClick
  end
  object btnSubtraction: TButton
    Left = 182
    Top = 212
    Width = 50
    Height = 36
    Caption = '-'
    TabOrder = 1
    OnClick = btnSubtractionClick
  end
  object btnDivision: TButton
    Left = 182
    Top = 128
    Width = 50
    Height = 36
    Caption = #247
    TabOrder = 2
    OnClick = btnDivisionClick
  end
  object btnMultiplication: TButton
    Left = 182
    Top = 170
    Width = 50
    Height = 36
    Caption = '*'
    TabOrder = 3
    OnClick = btnMultiplicationClick
  end
  object btnSeven: TButton
    Left = 14
    Top = 128
    Width = 50
    Height = 36
    Caption = '7'
    TabOrder = 4
    OnClick = btnSevenClick
  end
  object btnEigth: TButton
    Left = 70
    Top = 128
    Width = 50
    Height = 36
    Caption = '8'
    TabOrder = 5
    OnClick = btnEigthClick
  end
  object btnNine: TButton
    Left = 126
    Top = 128
    Width = 50
    Height = 36
    Caption = '9'
    TabOrder = 6
    OnClick = btnNineClick
  end
  object btnFour: TButton
    Left = 14
    Top = 170
    Width = 50
    Height = 36
    Caption = '4'
    TabOrder = 7
    OnClick = btnFourClick
  end
  object btnFive: TButton
    Left = 70
    Top = 170
    Width = 50
    Height = 36
    Caption = '5'
    TabOrder = 8
    OnClick = btnFiveClick
  end
  object btnSix: TButton
    Left = 126
    Top = 170
    Width = 50
    Height = 36
    Caption = '6'
    TabOrder = 9
    OnClick = btnSixClick
  end
  object btnOne: TButton
    Left = 14
    Top = 212
    Width = 50
    Height = 36
    Caption = '1'
    TabOrder = 10
    OnClick = btnOneClick
  end
  object btnTwo: TButton
    Left = 70
    Top = 212
    Width = 50
    Height = 36
    Caption = '2'
    TabOrder = 11
    OnClick = btnTwoClick
  end
  object btnThree: TButton
    Left = 126
    Top = 212
    Width = 50
    Height = 36
    Caption = '3'
    TabOrder = 12
    OnClick = btnThreeClick
  end
  object btnCalc: TButton
    Left = 70
    Top = 254
    Width = 106
    Height = 36
    Caption = '='
    TabOrder = 13
    OnClick = btnCalcClick
  end
  object btnZero: TButton
    Left = 14
    Top = 254
    Width = 50
    Height = 36
    Caption = '0'
    TabOrder = 14
    OnClick = btnZeroClick
  end
end

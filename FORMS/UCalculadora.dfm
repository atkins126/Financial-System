object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 320
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 373
    Height = 320
    Align = alClient
    Color = clGradientInactiveCaption
    TabOrder = 0
    ExplicitLeft = -20
    ExplicitTop = -50
    ExplicitWidth = 446
    ExplicitHeight = 403
    object btn0: TButton
      Left = 122
      Top = 249
      Width = 61
      Height = 31
      Caption = '0'
      TabOrder = 0
      OnClick = btn7Click
    end
    object btn1: TButton
      Left = 207
      Top = 204
      Width = 61
      Height = 31
      Caption = '1'
      TabOrder = 1
      OnClick = btn7Click
    end
    object btn2: TButton
      Left = 122
      Top = 204
      Width = 61
      Height = 31
      Caption = '2'
      TabOrder = 2
      OnClick = btn7Click
    end
    object btn3: TButton
      Left = 40
      Top = 204
      Width = 61
      Height = 31
      Caption = '3'
      TabOrder = 3
      OnClick = btn7Click
    end
    object btn4: TButton
      Left = 207
      Top = 157
      Width = 61
      Height = 31
      Caption = '4'
      TabOrder = 4
      OnClick = btn7Click
    end
    object btn5: TButton
      Left = 122
      Top = 157
      Width = 61
      Height = 31
      Caption = '5'
      TabOrder = 5
      OnClick = btn7Click
    end
    object btn6: TButton
      Left = 40
      Top = 157
      Width = 61
      Height = 31
      Caption = '6'
      TabOrder = 6
      OnClick = btn7Click
    end
    object btn7: TButton
      Left = 40
      Top = 110
      Width = 61
      Height = 31
      Caption = '7'
      TabOrder = 7
      OnClick = btn7Click
    end
    object btn8: TButton
      Left = 122
      Top = 110
      Width = 61
      Height = 31
      Caption = '8'
      TabOrder = 8
      OnClick = btn7Click
    end
    object btn9: TButton
      Left = 207
      Top = 110
      Width = 61
      Height = 31
      Caption = '9'
      TabOrder = 9
      OnClick = btn7Click
    end
    object btnDivisao: TButton
      Left = 289
      Top = 249
      Width = 42
      Height = 31
      Caption = '%'
      TabOrder = 10
      OnClick = btnDivisaoClick
    end
    object btnIgual: TButton
      Left = 207
      Top = 249
      Width = 61
      Height = 31
      Caption = '='
      TabOrder = 11
      OnClick = btnIgualClick
    end
    object btnLimpar: TButton
      Left = 40
      Top = 249
      Width = 61
      Height = 31
      Caption = 'Limpar'
      TabOrder = 12
      OnClick = btnLimparClick
    end
    object btnMenos: TButton
      Left = 289
      Top = 157
      Width = 42
      Height = 31
      Caption = '-'
      TabOrder = 13
      OnClick = btnMenosClick
    end
    object btnSoma: TButton
      Left = 289
      Top = 110
      Width = 42
      Height = 31
      Caption = '+'
      TabOrder = 14
      OnClick = btnSomaClick
    end
    object btnx: TButton
      Left = 289
      Top = 204
      Width = 42
      Height = 31
      Caption = 'X'
      TabOrder = 15
      OnClick = btnxClick
    end
    object edtResultado: TEdit
      Left = 40
      Top = 35
      Width = 286
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
  end
end

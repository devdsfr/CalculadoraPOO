object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 154
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 388
    Height = 154
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 95
      Width = 56
      Height = 13
      Caption = 'N'#250'mero 01:'
    end
    object Label2: TLabel
      Left = 17
      Top = 125
      Width = 56
      Height = 13
      Caption = 'N'#250'mero 02:'
    end
    object Label3: TLabel
      Left = 218
      Top = 125
      Width = 52
      Height = 13
      Caption = 'Resultado:'
    end
    object Panel2: TPanel
      Left = 16
      Top = 8
      Width = 353
      Height = 65
      Caption = 'Calculadora em POO'
      TabOrder = 7
    end
    object edtValor1: TEdit
      Left = 78
      Top = 86
      Width = 59
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object edtValor2: TEdit
      Left = 78
      Top = 117
      Width = 59
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object edtResultado: TEdit
      Left = 278
      Top = 117
      Width = 91
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object edtSubtrair: TButton
      Left = 145
      Top = 84
      Width = 25
      Height = 25
      Caption = '-'
      TabOrder = 2
      OnClick = edtSubtrairClick
    end
    object edtDividir: TButton
      Left = 176
      Top = 84
      Width = 23
      Height = 25
      Caption = '/'
      TabOrder = 3
      OnClick = edtDividirClick
    end
    object edtMultiplicacao: TButton
      Left = 176
      Top = 114
      Width = 23
      Height = 25
      Caption = '*'
      TabOrder = 5
      OnClick = edtMultiplicacaoClick
    end
    object edtSomar: TButton
      Left = 145
      Top = 114
      Width = 25
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = edtSomarClick
    end
  end
end

object FrmCadastro: TFrmCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro'
  ClientHeight = 540
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PgControl: TPageControl
    Left = 0
    Top = 0
    Width = 828
    Height = 540
    ActivePage = TBCadastro
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 867
    object TBCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitWidth = 859
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 820
        Height = 512
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 859
        object lblNome: TLabel
          Left = 50
          Top = 122
          Width = 35
          Height = 16
          Caption = 'NOME'
          FocusControl = edtNome
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblEmail: TLabel
          Left = 50
          Top = 352
          Width = 40
          Height = 16
          Caption = 'EMAIL'
          FocusControl = edtEmail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCPF: TLabel
          Left = 50
          Top = 178
          Width = 22
          Height = 16
          Caption = 'CPF'
          FocusControl = edtCPF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCidade: TLabel
          Left = 50
          Top = 231
          Width = 48
          Height = 16
          Caption = 'CIDADE'
          FocusControl = edtCidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblBairro: TLabel
          Left = 50
          Top = 291
          Width = 50
          Height = 16
          Caption = 'BAIRRO'
          FocusControl = edtBairro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Pesquisa: TLabel
          Left = 405
          Top = 37
          Width = 35
          Height = 16
          Caption = 'NOME'
          FocusControl = edtEmail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnNovo: TSpeedButton
          Left = 50
          Top = 450
          Width = 78
          Height = 40
          Caption = 'Novo'
          OnClick = btnNovoClick
        end
        object btnSalvar: TSpeedButton
          Left = 160
          Top = 450
          Width = 80
          Height = 40
          Caption = 'Salvar'
          OnClick = btnSalvarClick
        end
        object btnEditar: TSpeedButton
          Left = 270
          Top = 450
          Width = 80
          Height = 40
          Caption = 'Editar'
          OnClick = btnEditarClick
        end
        object btnDeletar: TSpeedButton
          Left = 385
          Top = 450
          Width = 80
          Height = 40
          Caption = 'Deletar'
          OnClick = btnEditarClick
        end
        object btnCancelar: TSpeedButton
          Left = 500
          Top = 450
          Width = 80
          Height = 40
          Caption = 'Cancelar'
          OnClick = btnCancelarClick
        end
        object btnSair: TSpeedButton
          Left = 675
          Top = 455
          Width = 60
          Height = 30
          Caption = 'Sair'
          OnClick = btnSairClick
        end
        object Label1: TLabel
          Left = 50
          Top = 66
          Width = 14
          Height = 16
          Caption = 'ID'
          FocusControl = DBEdit1
        end
        object lblDataCad: TLabel
          Left = 243
          Top = 178
          Width = 130
          Height = 16
          Caption = 'DATA DE CADASTRO'
          FocusControl = edtDataCad
        end
        object edtNome: TDBEdit
          Left = 50
          Top = 144
          Width = 204
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DM.dtsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edtEmail: TDBEdit
          Left = 50
          Top = 374
          Width = 204
          Height = 24
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = DM.dtsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnKeyPress = edtEmailKeyPress
        end
        object edtCPF: TDBEdit
          Left = 50
          Top = 200
          Width = 159
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = DM.dtsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 1
        end
        object edtCidade: TDBEdit
          Left = 50
          Top = 255
          Width = 204
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = DM.dtsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edtBairro: TDBEdit
          Left = 50
          Top = 313
          Width = 256
          Height = 24
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DM.dtsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBGrid1: TDBGrid
          Left = 405
          Top = 105
          Width = 320
          Height = 306
          DataSource = DM.dtsCadastro
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
        end
        object edtPesquisa: TEdit
          Left = 405
          Top = 59
          Width = 320
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 6
          OnChange = edtPesquisaChange
        end
        object DBEdit1: TDBEdit
          Left = 50
          Top = 88
          Width = 45
          Height = 24
          DataField = 'ID'
          DataSource = DM.dtsCadastro
          TabOrder = 8
        end
        object edtDataCad: TDBEdit
          Left = 243
          Top = 200
          Width = 132
          Height = 24
          DataField = 'DATACAD'
          DataSource = DM.dtsCadastro
          MaxLength = 10
          TabOrder = 2
        end
      end
    end
    object TBConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      ExplicitWidth = 859
      object pnlBottom: TPanel
        Left = 0
        Top = 450
        Width = 820
        Height = 62
        Align = alBottom
        TabOrder = 0
        ExplicitWidth = 859
        object DBNavigator1: TDBNavigator
          Left = 55
          Top = 20
          Width = 220
          Height = 30
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 0
        end
        object btnSair2: TButton
          Left = 765
          Top = 20
          Width = 75
          Height = 25
          Caption = 'Sair'
          TabOrder = 1
          OnClick = btnSair2Click
        end
      end
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 820
        Height = 66
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 859
        object edtConsulta: TEdit
          Left = 195
          Top = 23
          Width = 191
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = edtConsultaChange
        end
        object cbConsulta: TComboBox
          Left = 25
          Top = 23
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'ID'
          Items.Strings = (
            'ID'
            'NOME'
            'EMAIL'
            'CPF'
            'CIDADE'
            'BAIRRO')
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 66
        Width = 820
        Height = 384
        Align = alClient
        DataSource = DM.dtsCadastro
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATACAD'
            Visible = True
          end>
      end
    end
  end
end

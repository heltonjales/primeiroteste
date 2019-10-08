object frmSocios: TfrmSocios
  Left = 0
  Top = 0
  Caption = 'frmSocios'
  ClientHeight = 461
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 461
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel10: TPanel
      Left = 0
      Top = 190
      Width = 960
      Height = 3
      Align = alTop
      BevelOuter = bvNone
      Color = clNavy
      ParentBackground = False
      TabOrder = 0
    end
    object Panel7: TPanel
      Left = 0
      Top = 50
      Width = 960
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Panel8: TPanel
        Left = 546
        Top = 0
        Width = 414
        Height = 60
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnEditar: TButton
          Left = 164
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Editar'
          TabOrder = 0
          OnClick = btnEditarClick
        end
        object btnExcluir: TButton
          Left = 245
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 1
          OnClick = btnExcluirClick
        end
        object Button5: TButton
          Left = 326
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = Button5Click
        end
        object btnNovo: TButton
          Left = 83
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 3
          OnClick = btnNovoClick
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 409
        Height = 60
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 324
          Top = 20
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          OnClick = SpeedButton1Click
        end
        object edtPesquisar: TEdit
          Left = 16
          Top = 22
          Width = 201
          Height = 21
          TabOrder = 0
        end
        object cbPesquisa: TComboBox
          Left = 223
          Top = 22
          Width = 89
          Height = 21
          ItemIndex = 0
          TabOrder = 1
          Text = 'Nome'
          OnKeyPress = cbPesquisaKeyPress
          Items.Strings = (
            'Nome'
            'CPF')
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 960
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      Color = clScrollBar
      ParentBackground = False
      TabOrder = 2
      object Panel6: TPanel
        Left = 0
        Top = 3
        Width = 201
        Height = 47
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 15
          Width = 140
          Height = 18
          Caption = 'Cadastro de S'#243'cios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 960
        Height = 3
        Align = alTop
        BevelOuter = bvNone
        Color = clNavy
        ParentBackground = False
        TabOrder = 1
      end
    end
    object Panel19: TPanel
      Left = 0
      Top = 110
      Width = 960
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Label3: TLabel
        Left = 79
        Top = 15
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label4: TLabel
        Left = 16
        Top = 15
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label5: TLabel
        Left = 318
        Top = 15
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object Label6: TLabel
        Left = 424
        Top = 17
        Width = 31
        Height = 13
        Caption = 'Renda'
      end
      object Label7: TLabel
        Left = 570
        Top = 17
        Width = 24
        Height = 13
        Caption = 'Sexo'
      end
      object Panel20: TPanel
        Left = 0
        Top = 0
        Width = 960
        Height = 3
        Align = alTop
        BevelOuter = bvNone
        Color = clNavy
        ParentBackground = False
        TabOrder = 0
      end
      object edtNome: TEdit
        Left = 79
        Top = 34
        Width = 233
        Height = 21
        TabOrder = 1
      end
      object edtId: TEdit
        Left = 16
        Top = 34
        Width = 57
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object edtCpf: TMaskEdit
        Left = 318
        Top = 34
        Width = 99
        Height = 21
        EditMask = '000.000.000-00;0; '
        MaxLength = 14
        TabOrder = 3
        Text = ''
        OnKeyPress = edtCpfKeyPress
      end
      object edtRenda: TEdit
        Left = 424
        Top = 34
        Width = 140
        Height = 21
        TabOrder = 4
      end
      object cbSexo: TComboBox
        Left = 570
        Top = 36
        Width = 130
        Height = 21
        TabOrder = 5
        OnKeyPress = cbSexoKeyPress
        Items.Strings = (
          'Masculino'
          'Feminino')
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 193
      Width = 960
      Height = 268
      Align = alClient
      DataSource = dm.ds_Socios
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
  end
end

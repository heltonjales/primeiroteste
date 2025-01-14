object frmDependente: TfrmDependente
  Left = 0
  Top = 0
  Caption = 'frmDependente'
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
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 461
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel12: TPanel
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
    object Panel13: TPanel
      Left = 0
      Top = 50
      Width = 960
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Panel14: TPanel
        Left = 610
        Top = 0
        Width = 350
        Height = 60
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnNovo: TButton
          Left = 100
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnSalvar: TButton
          Left = 181
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 1
          OnClick = btnSalvarClick
        end
        object btnExcluir: TButton
          Left = 262
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 60
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnPesquisar: TSpeedButton
          Left = 324
          Top = 20
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          OnClick = btnPesquisarClick
        end
        object edtPesquisar: TEdit
          Left = 16
          Top = 22
          Width = 201
          Height = 21
          TabOrder = 0
        end
        object cbPesquisar: TComboBox
          Left = 223
          Top = 22
          Width = 89
          Height = 21
          ItemIndex = 0
          TabOrder = 1
          Text = 'Nome'
          Items.Strings = (
            'Nome'
            'C'#243'd S'#243'cio')
        end
      end
    end
    object Panel16: TPanel
      Left = 0
      Top = 0
      Width = 960
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      Color = clScrollBar
      ParentBackground = False
      TabOrder = 2
      object Panel17: TPanel
        Left = 0
        Top = 3
        Width = 201
        Height = 47
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 15
          Width = 185
          Height = 18
          Caption = 'Cadastro de Dependentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel18: TPanel
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
    object Panel21: TPanel
      Left = 0
      Top = 110
      Width = 960
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Label8: TLabel
        Left = 175
        Top = 15
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label9: TLabel
        Left = 16
        Top = 15
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label10: TLabel
        Left = 414
        Top = 15
        Width = 81
        Height = 13
        Caption = 'Data Nascimento'
      end
      object Label11: TLabel
        Left = 79
        Top = 17
        Width = 61
        Height = 13
        Caption = 'C'#243'digo S'#243'cio'
      end
      object Label12: TLabel
        Left = 519
        Top = 17
        Width = 24
        Height = 13
        Caption = 'Sexo'
      end
      object Panel22: TPanel
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
        Left = 175
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
      object edtData: TMaskEdit
        Left = 414
        Top = 34
        Width = 95
        Height = 21
        EditMask = '00/00/0000 ;1; '
        MaxLength = 11
        TabOrder = 3
        Text = '  /  /     '
      end
      object edtIdCod: TEdit
        Left = 79
        Top = 34
        Width = 90
        Height = 21
        TabOrder = 4
      end
      object cbSexo: TComboBox
        Left = 519
        Top = 34
        Width = 130
        Height = 21
        TabOrder = 5
        Items.Strings = (
          'Masculino'
          'Feminino')
      end
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 193
      Width = 960
      Height = 268
      Align = alClient
      DataSource = dm.ds_Dependentes
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
    end
  end
end

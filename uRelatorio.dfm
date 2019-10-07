object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 504
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dm.ds_Relatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 2
        Top = 15
        Width = 332
        Height = 19
        Caption = 'RELAT'#211'RIO DE S'#211'CIOS x DEPENDENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 124
      Width = 718
      Height = 160
      DataFields = 'ID_1'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 33
        BandType = btHeader
        Color = clBtnShadow
        ParentColor = False
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 3
          Top = 11
          Width = 31
          Height = 16
          DataField = 'ID_1'
          DataSource = dm.ds_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 153
          Top = 11
          Width = 56
          Height = 16
          DataField = 'NOME_1'
          DataSource = dm.ds_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 369
          Top = 11
          Width = 30
          Height = 16
          DataField = 'CPF'
          DataSource = dm.ds_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 465
          Top = 11
          Width = 48
          Height = 16
          DataField = 'RENDA'
          DataSource = dm.ds_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 563
          Top = 11
          Width = 54
          Height = 16
          DataField = 'SEXO_1'
          DataSource = dm.ds_Relatorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 33
        Width = 718
        Height = 40
        object RLDBText6: TRLDBText
          Left = 1
          Top = 6
          Width = 16
          Height = 16
          DataField = 'ID'
          DataSource = dm.ds_Relatorio
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 77
          Top = 6
          Width = 64
          Height = 16
          DataField = 'ID_SOCIO'
          DataSource = dm.ds_Relatorio
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 153
          Top = 6
          Width = 43
          Height = 16
          DataField = 'NOME'
          DataSource = dm.ds_Relatorio
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 563
          Top = 6
          Width = 39
          Height = 16
          DataField = 'SEXO'
          DataSource = dm.ds_Relatorio
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 639
          Top = 6
          Width = 112
          Height = 16
          DataField = 'DT_NASCIMENTO'
          DataSource = dm.ds_Relatorio
          Text = ''
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 43
      BandType = btColumnHeader
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 9
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 75
        Top = 9
        Width = 64
        Height = 16
        Caption = 'C'#243'd S'#243'cio'
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 153
        Top = 9
        Width = 38
        Height = 16
        Caption = 'Nome'
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 369
        Top = 9
        Width = 30
        Height = 16
        Caption = 'CPF'
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 465
        Top = 9
        Width = 41
        Height = 16
        Caption = 'Renda'
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 563
        Top = 9
        Width = 34
        Height = 16
        Caption = 'Sexo'
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 639
        Top = 9
        Width = 73
        Height = 16
        Caption = 'Nascimento'
        Transparent = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 31
        Width = 712
        Height = 17
        DrawKind = dkLine
        Transparent = False
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 64
    Top = 328
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 72
    Top = 392
  end
end

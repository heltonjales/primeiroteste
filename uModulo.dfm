object dm: Tdm
  OldCreateOrder = False
  Height = 412
  Width = 738
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Elton\Desktop\projeto_estudo\bd\TESTE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 40
    Top = 32
  end
  object qr_Socios: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from socios')
    Left = 40
    Top = 104
    object qr_SociosID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qr_SociosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qr_SociosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object qr_SociosRENDA: TFMTBCDField
      DisplayLabel = 'Renda'
      FieldName = 'RENDA'
      Origin = 'RENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qr_SociosSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Origin = 'SEXO'
    end
  end
  object ds_Socios: TDataSource
    DataSet = qr_Socios
    Left = 128
    Top = 104
  end
  object qr_Dependentes: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from dependentes')
    Left = 40
    Top = 168
    object qr_DependentesID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qr_DependentesID_SOCIO: TIntegerField
      DisplayLabel = 'C'#243'd S'#243'cio'
      FieldName = 'ID_SOCIO'
      Origin = 'ID_SOCIO'
    end
    object qr_DependentesNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qr_DependentesDT_NASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DT_NASCIMENTO'
      Origin = 'DT_NASCIMENTO'
    end
    object qr_DependentesSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Origin = 'SEXO'
    end
  end
  object ds_Dependentes: TDataSource
    DataSet = qr_Dependentes
    Left = 128
    Top = 168
  end
  object qr_Relatorio: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM dependentes '
      'LEFT JOIN socios'
      'ON dependentes.id_socio = socios.id '
      'ORDER BY socios.id')
    Left = 40
    Top = 240
    object qr_RelatorioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qr_RelatorioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object qr_RelatorioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object qr_RelatorioRENDA: TFMTBCDField
      FieldName = 'RENDA'
      Origin = 'RENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object qr_RelatorioSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
    end
    object qr_RelatorioID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qr_RelatorioID_SOCIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SOCIO'
      Origin = 'ID_SOCIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qr_RelatorioNOME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_1'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qr_RelatorioDT_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_NASCIMENTO'
      Origin = 'DT_NASCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qr_RelatorioSEXO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO_1'
      Origin = 'SEXO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_Relatorio: TDataSource
    DataSet = qr_Relatorio
    Left = 128
    Top = 240
  end
end

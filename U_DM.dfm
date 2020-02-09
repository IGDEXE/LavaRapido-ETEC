object DMLava: TDMLava
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 150
  Width = 215
  object DSCadastrar: TDataSource
    DataSet = TBLava
    Left = 16
    Top = 8
  end
  object DSConsultar: TDataSource
    DataSet = QryLava
    Left = 96
    Top = 8
  end
  object TBLava: TTable
    Active = True
    DatabaseName = 'ConBDT'
    TableName = 'dbo.TB_LavaRapido'
    Left = 16
    Top = 56
    object TBLavaCodLava: TIntegerField
      FieldName = 'CodLava'
    end
    object TBLavaNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TBLavaData: TStringField
      FieldName = 'Data'
      Size = 12
    end
    object TBLavaHora: TStringField
      FieldName = 'Hora'
      Size = 15
    end
    object TBLavaPlaca: TStringField
      FieldName = 'Placa'
      FixedChar = True
      Size = 7
    end
    object TBLavaMensalidade: TStringField
      FieldName = 'Mensalidade'
      Size = 4
    end
    object TBLavaLavagem: TStringField
      FieldName = 'Lavagem'
    end
    object TBLavaTelefone: TStringField
      FieldName = 'Telefone'
      Size = 9
    end
    object TBLavaPago: TStringField
      FieldName = 'Pago'
      Size = 4
    end
    object TBLavaValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object QryLava: TQuery
    DatabaseName = 'ConBDT'
    Left = 96
    Top = 56
  end
end

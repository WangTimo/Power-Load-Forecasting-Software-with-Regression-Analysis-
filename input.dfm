object Form3: TForm3
  Left = 290
  Top = 116
  Width = 905
  Height = 503
  BorderStyle = bsSizeToolWin
  Caption = #31649#29702#25968#25454#24211
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 92
    Top = 61
    Width = 36
    Height = 16
    Caption = #24180#20221#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 92
    Top = 147
    Width = 36
    Height = 16
    Caption = #36127#33655#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 92
    Top = 104
    Width = 41
    Height = 16
    Caption = 'GDP'#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button2: TButton
    Left = 132
    Top = 344
    Width = 194
    Height = 43
    Caption = #36820#22238
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 452
    Top = 45
    Width = 393
    Height = 361
    Color = clBtnHighlight
    DataSource = DataSource1
    FixedColor = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #24180#20221
        Title.Caption = #24180#20221' ('#24180')'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GDP'
        Title.Caption = 'GDP ('#20159#20803')'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = #36127#33655
        Title.Caption = #36127#33655' ('#19975'kWh)'
        Width = 160
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 52
    Top = 199
    Width = 363
    Height = 49
    DataSource = DataSource1
    VisibleButtons = [nbInsert, nbDelete, nbEdit]
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 140
    Top = 61
    Width = 225
    Height = 24
    DataField = #24180#20221
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 140
    Top = 147
    Width = 225
    Height = 24
    AutoSelect = False
    DataField = #36127#33655
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBNavigator2: TDBNavigator
    Left = 76
    Top = 272
    Width = 312
    Height = 47
    DataSource = DataSource1
    VisibleButtons = [nbPost, nbCancel]
    TabOrder = 5
  end
  object Button1: TButton
    Left = 500
    Top = 413
    Width = 81
    Height = 41
    Caption = #28155#21152' '
    TabOrder = 6
    Visible = False
  end
  object Button3: TButton
    Left = 612
    Top = 413
    Width = 81
    Height = 41
    Caption = #20462#25913
    TabOrder = 7
    Visible = False
  end
  object Button4: TButton
    Left = 724
    Top = 413
    Width = 81
    Height = 41
    Caption = #21024#38500
    TabOrder = 8
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 140
    Top = 104
    Width = 225
    Height = 24
    AutoSelect = False
    DataField = 'GDP'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 335
    Top = 21
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=1.mdb' +
      ';Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Syst' +
      'em database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pas' +
      'sword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode' +
      '=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tra' +
      'nsactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create ' +
      'System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB' +
      ':Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Re' +
      'plica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 135
    Top = 21
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #34920'1'
    Left = 183
    Top = 21
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select '#36127#33655' from '#34920'1')
    Left = 231
    Top = 21
  end
end

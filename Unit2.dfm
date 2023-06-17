object Form2: TForm2
  Left = 263
  Top = 168
  Width = 928
  Height = 480
  Caption = 'Input Data Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 16
    Top = 40
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object l2: TLabel
    Left = 16
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object l3: TLabel
    Left = 16
    Top = 104
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object l4: TLabel
    Left = 16
    Top = 136
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object e1: TEdit
    Left = 72
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'e1'
  end
  object e2: TEdit
    Left = 72
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'e1'
  end
  object e3: TEdit
    Left = 72
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'e1'
  end
  object e4: TEdit
    Left = 72
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'e1'
  end
  object b1: TButton
    Left = 232
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
  end
  object dg1: TDBGrid
    Left = 24
    Top = 192
    Width = 320
    Height = 120
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    DataSource = d1
    Left = 616
    Top = 16
  end
  object d1: TDataSource
    Left = 656
    Top = 16
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'data_sekolah_rev'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ACER\Documents\Kuliah\Visual\Visual2\Project-akhir\libm' +
      'ysql.dll'
    Left = 576
    Top = 16
  end
end

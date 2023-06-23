object Form4: TForm4
  Left = 342
  Top = 159
  Width = 1118
  Height = 580
  Caption = 'Input Data Wali Kelas'
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
    Top = 48
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object l2: TLabel
    Left = 16
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object l3: TLabel
    Left = 16
    Top = 112
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object l4: TLabel
    Left = 16
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object l5: TLabel
    Left = 16
    Top = 176
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object l6: TLabel
    Left = 16
    Top = 208
    Width = 72
    Height = 13
    Caption = 'Mata Pelajaran'
  end
  object l7: TLabel
    Left = 16
    Top = 240
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object l8: TLabel
    Left = 16
    Top = 272
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object e1: TEdit
    Left = 96
    Top = 48
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object b1: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = b1Click
  end
  object b2: TButton
    Left = 104
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = b2Click
  end
  object b3: TButton
    Left = 192
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = b3Click
  end
  object b4: TButton
    Left = 280
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Clear Form'
    TabOrder = 4
    OnClick = b4Click
  end
  object b5: TButton
    Left = 368
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 5
  end
  object c1: TComboBox
    Left = 96
    Top = 112
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object c2: TComboBox
    Left = 96
    Top = 240
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'S1'
      'S2')
  end
  object c3: TComboBox
    Left = 96
    Top = 272
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Aktif '
      'Tidak Aktif')
  end
  object e2: TEdit
    Left = 96
    Top = 80
    Width = 265
    Height = 21
    TabOrder = 9
  end
  object e3: TEdit
    Left = 96
    Top = 144
    Width = 265
    Height = 21
    TabOrder = 10
  end
  object e4: TEdit
    Left = 96
    Top = 176
    Width = 265
    Height = 21
    TabOrder = 11
  end
  object e5: TEdit
    Left = 96
    Top = 208
    Width = 265
    Height = 21
    TabOrder = 12
  end
  object dg1: TDBGrid
    Left = 16
    Top = 312
    Width = 1009
    Height = 217
    DataSource = d1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nip'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis_kelamin'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'telp'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'matpel'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'pendidikan'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ACER\Documents\Kuliah\Visual\Visual2\Project-akhir\libm' +
      'ysql.dll'
    Left = 376
    Top = 264
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_walikelas')
    Params = <>
    Left = 408
    Top = 264
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 440
    Top = 264
  end
end

object Form7: TForm7
  Left = 304
  Top = 157
  Width = 1047
  Height = 635
  Caption = 'Input Hubungan'
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
  object l1: TLabel
    Left = 16
    Top = 48
    Width = 40
    Height = 13
    Caption = 'Id Siswa'
  end
  object l2: TLabel
    Left = 16
    Top = 80
    Width = 64
    Height = 13
    Caption = 'Id Orang Tua'
  end
  object l4: TLabel
    Left = 16
    Top = 112
    Width = 83
    Height = 13
    Caption = 'Status Hubungan'
  end
  object l5: TLabel
    Left = 16
    Top = 144
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object l10: TLabel
    Left = 484
    Top = 16
    Width = 112
    Height = 18
    Caption = 'Pilih Data Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Berlin Sans FB Demi'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 484
    Top = 224
    Width = 149
    Height = 18
    Caption = 'Pilih Data Orang Tua'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Berlin Sans FB Demi'
    Font.Style = []
    ParentFont = False
  end
  object e1: TEdit
    Left = 112
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
  object e2: TEdit
    Left = 112
    Top = 80
    Width = 265
    Height = 21
    TabOrder = 6
  end
  object e3: TEdit
    Left = 112
    Top = 144
    Width = 265
    Height = 21
    TabOrder = 7
  end
  object c1: TComboBox
    Left = 112
    Top = 112
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Kandung'
      'Wali')
  end
  object dg1: TDBGrid
    Left = 16
    Top = 216
    Width = 433
    Height = 217
    DataSource = d1
    TabOrder = 9
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
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ortu_id'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status_hub'
        Title.Alignment = taCenter
        Width = 98
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'keterangan'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object dg2: TDBGrid
    Left = 488
    Top = 40
    Width = 505
    Height = 153
    DataSource = d2
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg2CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nis'
        Title.Alignment = taCenter
        Width = 77
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nisn'
        Title.Alignment = taCenter
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_siswa'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nik'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tempat_lahir'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tgl_lahir'
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
        FieldName = 'tingkat_kelas'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'wali_kelas'
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
        FieldName = 'hp'
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
  object dg3: TDBGrid
    Left = 488
    Top = 248
    Width = 505
    Height = 177
    DataSource = d3
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg3CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ortu_id'
        Title.Alignment = taCenter
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nik'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Width = 103
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'pendidikan'
        Title.Alignment = taCenter
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'pekerjaan'
        Title.Alignment = taCenter
        Width = 116
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
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'agama'
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
    Left = 384
    Top = 48
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_hubungan')
    Params = <>
    Left = 416
    Top = 48
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 448
    Top = 48
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_siswa')
    Params = <>
    Left = 416
    Top = 96
  end
  object d2: TDataSource
    DataSet = zqry2
    Left = 448
    Top = 96
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_ortu')
    Params = <>
    Left = 416
    Top = 144
  end
  object d3: TDataSource
    DataSet = zqry3
    Left = 448
    Top = 144
  end
end

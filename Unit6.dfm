object Form6: TForm6
  Left = 46
  Top = 57
  Width = 1386
  Height = 660
  Caption = 'Input Data Poin'
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
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object l2: TLabel
    Left = 16
    Top = 80
    Width = 25
    Height = 13
    Caption = 'Kelas'
  end
  object l3: TLabel
    Left = 16
    Top = 112
    Width = 20
    Height = 13
    Caption = 'Wali'
  end
  object l4: TLabel
    Left = 16
    Top = 144
    Width = 20
    Height = 13
    Caption = 'Poin'
  end
  object l5: TLabel
    Left = 16
    Top = 176
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object l6: TLabel
    Left = 16
    Top = 208
    Width = 28
    Height = 13
    Caption = 'Bobot'
  end
  object l7: TLabel
    Left = 16
    Top = 240
    Width = 67
    Height = 13
    Caption = 'Tanggal Input'
  end
  object l8: TLabel
    Left = 16
    Top = 272
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object l9: TLabel
    Left = 464
    Top = 24
    Width = 116
    Height = 18
    Caption = 'Pilih Data Siswa '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Berlin Sans FB Demi'
    Font.Style = []
    ParentFont = False
  end
  object l10: TLabel
    Left = 920
    Top = 24
    Width = 67
    Height = 18
    Caption = 'Pilih Poin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Berlin Sans FB Demi'
    Font.Style = []
    ParentFont = False
  end
  object e1: TEdit
    Left = 96
    Top = 48
    Width = 345
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
    Top = 80
    Width = 345
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'SD'
      'SMP'
      'SMA/K'
      'Sarjana')
  end
  object e2: TEdit
    Left = 96
    Top = 112
    Width = 345
    Height = 21
    TabOrder = 7
  end
  object e3: TEdit
    Left = 96
    Top = 144
    Width = 345
    Height = 21
    TabOrder = 8
  end
  object e4: TEdit
    Left = 96
    Top = 208
    Width = 345
    Height = 21
    TabOrder = 9
  end
  object c2: TComboBox
    Left = 96
    Top = 176
    Width = 345
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object dg1: TDBGrid
    Left = 16
    Top = 344
    Width = 937
    Height = 257
    DataSource = d1
    TabOrder = 11
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
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nm_siswa'
        Title.Alignment = taCenter
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kelas'
        Title.Alignment = taCenter
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'wali'
        Title.Alignment = taCenter
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'poin'
        Title.Alignment = taCenter
        Width = 383
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis'
        Title.Alignment = taCenter
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bobot'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tgl_input'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end>
  end
  object c3: TComboBox
    Left = 96
    Top = 272
    Width = 345
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object dtp1: TDateTimePicker
    Left = 96
    Top = 240
    Width = 345
    Height = 21
    Date = 45100.976776782410000000
    Time = 45100.976776782410000000
    TabOrder = 13
  end
  object dg2: TDBGrid
    Left = 464
    Top = 48
    Width = 441
    Height = 241
    DataSource = d2
    TabOrder = 14
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
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nis'
        Title.Alignment = taCenter
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nisn'
        Title.Alignment = taCenter
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
        Width = 84
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
    Left = 920
    Top = 48
    Width = 441
    Height = 241
    DataSource = d3
    TabOrder = 15
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
        FieldName = 'id'
        Title.Alignment = taCenter
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Width = 240
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bobot'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis'
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
    Left = 16
    Top = 304
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_input_poin')
    Params = <>
    Left = 48
    Top = 304
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 80
    Top = 304
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_siswa')
    Params = <>
    Left = 128
    Top = 304
  end
  object d2: TDataSource
    DataSet = zqry2
    Left = 160
    Top = 304
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_poin')
    Params = <>
    Left = 208
    Top = 304
  end
  object d3: TDataSource
    DataSet = zqry3
    Left = 240
    Top = 304
  end
end

object Form9: TForm9
  Left = 239
  Top = 189
  Width = 1125
  Height = 649
  Caption = 'Laporan Data Siswa'
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
    Top = 16
    Width = 145
    Height = 24
    Caption = 'Pilih Data Siswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l2: TLabel
    Left = 240
    Top = 16
    Width = 205
    Height = 24
    Caption = 'Data  Orang Tua Siswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l3: TLabel
    Left = 240
    Top = 272
    Width = 225
    Height = 24
    Caption = 'Data Riwayat Poin Siswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dg1: TDBGrid
    Left = 16
    Top = 48
    Width = 209
    Height = 209
    DataSource = d1
    TabOrder = 0
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
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_siswa'
        Title.Alignment = taCenter
        Width = 117
        Visible = True
      end>
  end
  object b1: TButton
    Left = 952
    Top = 16
    Width = 139
    Height = 25
    Caption = 'Print'
    TabOrder = 1
    OnClick = b1Click
  end
  object dg2: TDBGrid
    Left = 240
    Top = 48
    Width = 849
    Height = 209
    DataSource = d2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'siswa_id'
        Title.Alignment = taCenter
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama_siswa'
        Title.Alignment = taCenter
        Width = 108
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nis'
        Title.Alignment = taCenter
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nisn'
        Title.Alignment = taCenter
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tingkat_kelas'
        Title.Alignment = taCenter
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis_kelamin'
        Title.Alignment = taCenter
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'wali_kelas'
        Title.Alignment = taCenter
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'telp'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end>
  end
  object dg3: TDBGrid
    Left = 240
    Top = 304
    Width = 849
    Height = 209
    DataSource = d3
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nm_siswa'
        Title.Alignment = taCenter
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kelas'
        Title.Alignment = taCenter
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'wali'
        Title.Alignment = taCenter
        Width = 96
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'poin'
        Title.Alignment = taCenter
        Width = 148
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bobot'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tgl_input'
        Title.Alignment = taCenter
        Width = 115
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Width = 99
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
    Top = 264
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select siswa_id, nama_siswa from tb_siswa')
    Params = <>
    Left = 48
    Top = 264
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 80
    Top = 264
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      
        'SELECT tb_siswa.siswa_id, tb_siswa.nis, tb_siswa.nisn, tb_siswa.' +
        'nama_siswa, tb_siswa.jenis_kelamin, tb_siswa.tingkat_kelas, tb_s' +
        'iswa.jurusan, tb_siswa.wali_kelas, tb_ortu.nama, tb_ortu.telp, t' +
        'b_hubungan.siswa_id, tb_hubungan.status_hub, tb_hubungan.keteran' +
        'gan'
      'FROM tb_hubungan'
      'INNER JOIN tb_siswa ON tb_hubungan.siswa_id = tb_siswa.siswa_id'
      'INNER JOIN tb_ortu ON tb_hubungan.ortu_id = tb_ortu.ortu_id;')
    Params = <>
    Left = 48
    Top = 312
  end
  object d2: TDataSource
    DataSet = zqry2
    Left = 80
    Top = 312
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45107.893415381900000000
    ReportOptions.LastChange = 45109.653550381900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 16
    Top = 312
    Datasets = <
      item
        DataSet = frxdb1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxdb2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxdb3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 279.685220000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."siswa_id"'
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Bulan')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tahun Ajaran')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nama Siswa')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. NIS/NISN')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kelas/Jurusan')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 139.842610000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Jenis Kelamin')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 166.299320000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nama Wali Kelas')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 192.756030000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nama Orang Tua/Wali')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 219.212740000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No HP Orang Tua/Wali')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 173.858380000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 173.858380000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 173.858380000000000000
          Top = 60.472480000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 173.858380000000000000
          Top = 86.929190000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 173.858380000000000000
          Top = 113.385900000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 173.858380000000000000
          Top = 139.842610000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 173.858380000000000000
          Top = 192.756030000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 173.858380000000000000
          Top = 219.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 219.212740000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            'Juli')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 219.212740000000000000
          Top = 22.677180000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '2023')
          ParentFont = False
        end
        object frxDBDataset2nama_siswa: TfrxMemoView
          Left = 219.212740000000000000
          Top = 60.472480000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."nama_siswa"]')
          ParentFont = False
        end
        object frxDBDataset2nis: TfrxMemoView
          Left = 219.212740000000000000
          Top = 86.929190000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."nis"] / [frxDBDataset2."nisn"]')
          ParentFont = False
        end
        object frxDBDataset2tingkat_kelas: TfrxMemoView
          Left = 219.212740000000000000
          Top = 113.385900000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."tingkat_kelas"] / [frxDBDataset2."jurusan"]')
          ParentFont = False
        end
        object frxDBDataset2jenis_kelamin: TfrxMemoView
          Left = 219.212740000000000000
          Top = 139.842610000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis_kelamin'
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."jenis_kelamin"]')
          ParentFont = False
        end
        object frxDBDataset2wali_kelas: TfrxMemoView
          Left = 219.212740000000000000
          Top = 166.299320000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'wali_kelas'
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."wali_kelas"]')
          ParentFont = False
        end
        object frxDBDataset2nama: TfrxMemoView
          Left = 219.212740000000000000
          Top = 192.756030000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."nama"]')
          ParentFont = False
        end
        object frxDBDataset2telp: TfrxMemoView
          Left = 219.212740000000000000
          Top = 219.212740000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxdb2
          DataSetName = 'frxDBDataset2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset2."telp"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 3.779530000000000000
          Top = 260.787570000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 52.913420000000000000
          Top = 260.787570000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Prestasi')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 200.315090000000000000
          Top = 260.787570000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Bobot/Jumlah Poin')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 328.819110000000000000
          Top = 260.787570000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
        end
      end
      object Memo7: TfrxMemoView
        Align = baCenter
        Left = 215.433210000000000000
        Top = 15.118120000000000000
        Width = 287.244280000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          'Laporan Informasi Kesiswaan')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        DataSet = frxdb3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdb3
          DataSetName = 'frxDBDataset3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 52.913420000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jenis'
          DataSet = frxdb3
          DataSetName = 'frxDBDataset3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."jenis"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 200.315090000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bobot'
          DataSet = frxdb3
          DataSetName = 'frxDBDataset3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."bobot"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 328.819110000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'poin'
          DataSet = frxdb3
          DataSetName = 'frxDBDataset3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset3."poin"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdb1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'siswa_id=siswa_id'
      'nama_siswa=nama_siswa')
    DataSet = zqry1
    BCDToCurrency = False
    Left = 112
    Top = 264
  end
  object frxdb2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'siswa_id=siswa_id'
      'nis=nis'
      'nisn=nisn'
      'nama_siswa=nama_siswa'
      'jenis_kelamin=jenis_kelamin'
      'tingkat_kelas=tingkat_kelas'
      'jurusan=jurusan'
      'wali_kelas=wali_kelas'
      'nama=nama'
      'telp=telp'
      '-siswa_id_1=siswa_id_1'
      'status_hub=status_hub'
      'keterangan=keterangan')
    DataSet = zqry2
    BCDToCurrency = False
    Left = 112
    Top = 312
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tb_input_poin')
    Params = <>
    Left = 48
    Top = 360
  end
  object d3: TDataSource
    DataSet = zqry3
    Left = 80
    Top = 360
  end
  object frxdb3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-id=id'
      'nm_siswa=nm_siswa'
      '-kelas=kelas'
      '-wali=wali'
      'poin=poin'
      'jenis=jenis'
      'bobot=bobot'
      '-tgl_input=tgl_input'
      '-status=status')
    DataSet = zqry3
    BCDToCurrency = False
    Left = 112
    Top = 360
  end
end

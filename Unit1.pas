unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ComCtrls;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    b2: TButton;
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    l9: TLabel;
    l10: TLabel;
    l11: TLabel;
    l12: TLabel;
    l13: TLabel;
    l14: TLabel;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    e6: TEdit;
    e11: TEdit;
    e13: TEdit;
    e14: TEdit;
    dg1: TDBGrid;
    dtp1: TDateTimePicker;
    c1: TComboBox;
    c2: TComboBox;
    c3: TComboBox;
    c4: TComboBox;
    e1: TEdit;
    procedure b1Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id : string;

implementation

{$R *.dfm}

procedure TForm1.b1Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  e6.Clear;
  e11.Clear;
  e13.Clear;
  e14.Clear;
end;

procedure TForm1.b3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_siswa values(null, "'+e2.Text+'", "'+e3.Text+'", "'+e4.Text+'", "'+e5.Text+'", "'+e6.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'", "'+c1.Text+'", "'+c2.Text+'", "'+c3.Text+'", "'+e11.Text+'", "'+e1.Text+'", "'+e13.Text+'", "'+e14.Text+'", "'+c4.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_siswa');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm1.dg1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  e2.Text:=zqry1.Fields[1].AsString;
  e3.Text:=zqry1.Fields[2].AsString;
  e4.Text:=zqry1.Fields[3].AsString;
  e5.Text:=zqry1.Fields[4].AsString;
  e6.Text:=zqry1.Fields[5].AsString;
  dtp1.date:=zqry1.Fields[6].AsDateTime;
  c1.Text:=zqry1.Fields[7].AsString;
  c2.Text:=zqry1.Fields[8].AsString;
  c3.Text:=zqry1.Fields[9].AsString;
  e11.Text:=zqry1.Fields[10].AsString;
  e1.Text:=zqry1.Fields[11].AsString;
  e13.Text:=zqry1.Fields[12].AsString;
  e14.Text:=zqry1.Fields[13].AsString;
  c4.Text:=zqry1.Fields[14].AsString;
end;

procedure TForm1.b4Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_siswa set nis="'+e2.Text+'", nisn="'+e3.Text+'", nama_siswa="'+e4.Text+'", nik="'+e5.Text+'", tempat_lahir="'+e6.Text+'",jenis_kelamin="'+c1.Text+'",tingkat_kelas="'+c2.Text+'",jurusan="'+c3.Text+'",wali_kelas="'+e11.Text+'",alamat="'+e1.Text+'",telp="'+e13.Text+'",hp="'+e14.Text+'",status="'+c4.Text+'" where siswa_id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_siswa');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm1.b5Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_siswa where siswa_id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_siswa');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm1.b6Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  e6.Clear;
  c1.Clear;
  c2.Clear;
  c3.Clear;
  e11.Clear;
  e1.Clear;
  e13.Clear;
  e14.Clear;
  c4.Clear;
end;

end.

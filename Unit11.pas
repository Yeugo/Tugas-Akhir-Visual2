unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm11 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    dg1: TDBGrid;
    b1: TButton;
    dg2: TDBGrid;
    dg3: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    zqry2: TZQuery;
    d2: TDataSource;
    frxReport1: TfrxReport;
    frxdb1: TfrxDBDataset;
    frxdb2: TfrxDBDataset;
    zqry3: TZQuery;
    d3: TDataSource;
    frxdb3: TfrxDBDataset;
    procedure dg1CellClick(Column: TColumn);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  id : string;
  nm : string;

implementation

{$R *.dfm}

procedure TForm11.dg1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  nm:=zqry1.Fields[1].AsString;

  zqry2.Active:=True;
  zqry2.SQL.Clear;
  zqry2.SQL.Add('SELECT tb_siswa.siswa_id, tb_siswa.nis, tb_siswa.nisn, tb_siswa.nama_siswa, tb_siswa.jenis_kelamin, tb_siswa.tingkat_kelas, tb_siswa.jurusan, tb_siswa.wali_kelas, tb_ortu.nama, tb_ortu.telp, tb_hubungan.siswa_id, tb_hubungan.status_hub FROM tb_hubungan');
  zqry2.SQL.Add('INNER JOIN tb_siswa ON tb_hubungan.siswa_id = tb_siswa.siswa_id INNER JOIN tb_ortu ON tb_hubungan.ortu_id = tb_ortu.ortu_id WHERE tb_hubungan.siswa_id="'+id+'"');
  zqry2.Open;

  zqry3.Active:=True;
  zqry3.SQL.Clear;
  zqry3.SQL.Add('SELECT * FROM tb_input_poin WHERE nm_siswa = "'+nm+'" AND jenis="Pelanggaran"');
  zqry3.Open;
end;

procedure TForm11.b1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.

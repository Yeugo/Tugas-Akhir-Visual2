unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, frxClass, frxDBSet, StdCtrls;

type
  TForm9 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    zqry2: TZQuery;
    d2: TDataSource;
    dg1: TDBGrid;
    dg2: TDBGrid;
    l1: TLabel;
    frxReport1: TfrxReport;
    frxdb1: TfrxDBDataset;
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  id : string;

implementation

{$R *.dfm}

procedure TForm9.dg1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  zqry2.Active:=True;
  zqry2.SQL.Clear;
  zqry2.SQL.Add('SELECT tb_siswa.siswa_id, tb_siswa.nis, tb_siswa.nama_siswa, tb_siswa.jenis_kelamin, tb_ortu.nama, tb_ortu.nik, tb_ortu.pendidikan, tb_hubungan.siswa_id, tb_hubungan.status_hub, tb_hubungan.keterangan FROM tb_hubungan');
  zqry2.SQL.Add('INNER JOIN tb_siswa ON tb_hubungan.siswa_id = tb_siswa.siswa_id INNER JOIN tb_ortu ON tb_hubungan.ortu_id = tb_ortu.ortu_id WHERE tb_hubungan.siswa_id="'+id+'"');
  zqry2.Open;
end;

end.

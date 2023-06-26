unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm7 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l4: TLabel;
    l5: TLabel;
    e1: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    e2: TEdit;
    e3: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    c1: TComboBox;
    dg1: TDBGrid;
    dg2: TDBGrid;
    dg3: TDBGrid;
    zqry2: TZQuery;
    d2: TDataSource;
    zqry3: TZQuery;
    d3: TDataSource;
    l10: TLabel;
    l6: TLabel;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure dg2CellClick(Column: TColumn);
    procedure dg1CellClick(Column: TColumn);
    procedure dg3CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  var id : string;

implementation

{$R *.dfm}

procedure TForm7.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_hubungan values(null,"'+e1.Text+'","'+e2.Text+'","'+c1.Text+'","'+e3.Text+'")');
  zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_hubungan');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm7.b2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_hubungan set siswa_id="'+e1.Text+'", ortu_id="'+e2.Text+'", status_hub="'+c1.Text+'", keterangan="'+e3.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_hubungan');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm7.b3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_hubungan where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_hubungan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm7.b4Click(Sender: TObject);
begin
    e1.Clear;
    e2.Clear;
    c1.Clear;
    e3.Clear;
end;

procedure TForm7.dg2CellClick(Column: TColumn);
begin
  e1.Text:=zqry2.Fields[0].AsString;
  
end;

procedure TForm7.dg1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
  e3.Text:=zqry1.Fields[4].AsString;
end;

procedure TForm7.dg3CellClick(Column: TColumn);
begin
  e2.Text:=zqry3.Fields[0].AsString;
end;

end.

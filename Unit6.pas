unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, ComCtrls;

type
  TForm6 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    e1: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    c1: TComboBox;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    c2: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    dg1: TDBGrid;
    c3: TComboBox;
    dtp1: TDateTimePicker;
    dg2: TDBGrid;
    dg3: TDBGrid;
    zqry2: TZQuery;
    d2: TDataSource;
    zqry3: TZQuery;
    d3: TDataSource;
    l9: TLabel;
    l10: TLabel;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure dg2CellClick(Column: TColumn);
    procedure dg3CellClick(Column: TColumn);
    procedure b3Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  var id : string;

implementation

{$R *.dfm}

procedure TForm6.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_input_poin values(null,"'+e1.Text+'","'+c1.Text+'","'+e2.Text+'","'+e3.Text+'","'+c2.Text+'","'+e4.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+c3.Text+'")');
  zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_input_poin');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm6.b2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_input_poin set nm_siswa="'+e1.Text+'", kelas="'+c1.Text+'", wali="'+e2.Text+'", poin="'+e3.Text+'", jenis="'+c2.Text+'", bobot="'+e4.Text+'", status="'+c3.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_input_poin');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm6.dg2CellClick(Column: TColumn);
begin
  e1.Text:=zqry2.Fields[3].AsString;
  c1.Text:=zqry2.Fields[8].AsString;
  e2.Text:=zqry2.Fields[10].AsString;
end;

procedure TForm6.dg3CellClick(Column: TColumn);
begin
  e3.Text:=zqry3.Fields[1].AsString;
  c2.Text:=zqry3.Fields[3].AsString;
  e4.Text:=zqry3.Fields[2].AsString;
end;

procedure TForm6.b3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_input_poin where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_input_poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm6.dg1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  e1.Text:=zqry1.Fields[1].AsString;
  c1.Text:=zqry1.Fields[2].AsString;
  e2.Text:=zqry1.Fields[3].AsString;
  e3.Text:=zqry1.Fields[4].AsString;
  c2.Text:=zqry1.Fields[5].AsString;
  e4.Text:=zqry1.Fields[6].AsString;
  c3.Text:=zqry1.Fields[8].AsString;
end;

end.

unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm4 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    e1: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    c1: TComboBox;
    c2: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    c3: TComboBox;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    dg1: TDBGrid;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id : string;

implementation

{$R *.dfm}

procedure TForm4.b1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tb_walikelas values(null,"'+e1.Text+'","'+e2.Text+'","'+c1.Text+'","'+e3.Text+'","'+e4.Text+'","'+e5.Text+'","'+c2.Text+'","'+e3.Text+'")');
  zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_walikelas');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm4.b2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update tb_walikelas set nip="'+e1.Text+'", nama="'+e2.Text+'", jenis_kelamin="'+c1.Text+'", alamat="'+e3.Text+'", telp="'+e4.Text+'", matpel="'+e5.Text+'", pendidikan="'+c2.Text+'", status="'+c3.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_walikelas');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm4.dg1CellClick(Column: TColumn);
begin
  id:=zqry1.Fields[0].AsString;
  e1.Text:=zqry1.Fields[1].AsString;
  e2.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
  e3.Text:=zqry1.Fields[4].AsString;
  e4.Text:=zqry1.Fields[5].AsString;
  e5.Text:=zqry1.Fields[6].AsString;
  c2.Text:=zqry1.Fields[7].AsString;
  c3.Text:=zqry1.Fields[8].AsString;
end;

procedure TForm4.b3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from tb_walikelas where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from tb_walikelas');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm4.b4Click(Sender: TObject);
begin
  e1.Clear;
  e2.Clear;
  c1.Clear;
  e3.Clear;
  e4.Clear;
  e5.Clear;
  c2.Clear;
  c3.Clear;
end;

end.

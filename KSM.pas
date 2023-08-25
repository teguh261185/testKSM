unit KSM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i:integer;
  a,b,c,z:longint;
  //deret:array[1..100] of real;
  deret:array of real;
  total:real;

begin
    listbox1.Items.clear;
    if (edit1.text='') or (edit2.text='') or (edit3.Text='') then
       begin
          messagedlg('Maaf, anda belum isi nilai',mterror,[mbok],0);
       end
       else begin
            try
              a:=strtoint(edit1.text);
              b:=strtoint(edit2.Text);
              c:=strtoint(edit3.text);
              setlength(deret,c);

                deret[0]:=a;
                deret[1]:=b;

                listbox1.Items.add(inttostr(a));
                listbox1.items.Add(inttostr(b));


                for z:=2 to c-1 do
                  begin

                     deret[z]:=deret[z-1]+deret[z-2];
                     listbox1.Items.add(floattostr(deret[z]));
                  end ;
              except
                 exit;
            end;

       end;

end;




end.

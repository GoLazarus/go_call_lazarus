library go_call_lazarus;

{$mode objfpc}{$H+}

uses
  Classes { you can add units after this };

  function DemoFunction(InString1: PChar): PChar; cdecl; export;
  var
    localvariable: string;
  begin
    localvariable := Instring1  +'-New String';
    Result := PChar(localvariable);
  end;

  procedure PrintMe(InString1: PChar);cdecl;export;
  begin
    Writeln('Hello Lazarus,' , InString1);
  end;

exports DemoFunction,PrintMe;
begin
end.

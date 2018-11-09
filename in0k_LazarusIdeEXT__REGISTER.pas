unit in0k_LazarusIdeEXT__REGISTER;

{$mode objfpc}{$H+}

interface

{$i in0k_LazarusIdeSRC__Settings.inc} //< настройки "компонента-Расширения".

uses in0k_lazarusIdePLG__wndSatellite_AnchorEditor4FormDesigner;

procedure REGISTER;

implementation

procedure REGISTER;
begin
    // оно САМО пропишется в IDE, и так-е САМО отпишется при закрытии
    tIn0k_LazIdeEXT__wndStllte__AnchorEditor4FormDesigner.CREATE;
end;

end.


{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit in0k_LazIdeEXT_wndSatellite_AnchorEditor_4_FormDesigner;

{$warn 5023 off : no warning about unused units}
interface

uses
    in0k_LazarusIdeEXT__REGISTER, in0k_lazarusIdeSRC__expertCORE, 
    in0k_lazarusIdeSRC__wndDEBUG, 
    in0k_LazarusazIdeEXT__wndSatellite__AnchorEditor_4_FormDesigner, 
    LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('in0k_LazarusIdeEXT__REGISTER', 
			@in0k_LazarusIdeEXT__REGISTER.Register);
end;

initialization
  RegisterPackage('in0k_LazIdeEXT_wndSatellite_AnchorEditor_4_FormDesigner', 
			@Register);
end.

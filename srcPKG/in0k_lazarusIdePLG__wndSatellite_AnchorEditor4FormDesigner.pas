unit in0k_lazarusIdePLG__wndSatellite_AnchorEditor4FormDesigner;

{$mode objfpc}{$H+}

interface

{$include in0k_LazarusIdeSRC__Settings.inc}
//------------------------------------------------------------------------------
{$UNDEF in0k_lazarusIdePLG__wndSatellite_AnchorEditor__AUTO_SHOW}//!!!!!!!!!!!!!
// ну уж ОЧЕНЬ сомнительная возможность.
// ДАЖЕ и НЕ пробовал!

uses {$ifDef in0k_LazarusIdeEXT__DEBUG}in0k_lazarusIdeSRC__wndDEBUG,{$endIf}
  in0k_lazarusIdeSRC__wndSatellite_templates__4FormDesigner,
  in0k_lazarusIdeSRC__ideForm_AnchorEditor,
  in0k_lazarusIdeSRC__B2SP,
  //-------
  FormEditingIntf,
  PropEdits,
  //-------
  Classes,
  Forms;

type

 tIn0k_LazIdeEXT__wndStllte__AnchorEditor4FormDesigner=class(tIn0k_LazIdeEXT__wndStllte_TMPLTs_4FormDesigner)
  protected //< ОСНОВНОЕ событие, все ради него и затевается
    procedure _wrkEvent_; override;
  end;

implementation
{%region --- возня с ДЕБАГОМ -------------------------------------- /fold}
{$if declared(in0k_lazarusIdeSRC_DEBUG)}
    // `in0k_lazarusIdeSRC_DEBUG` - это функция ИНДИКАТОР что используется
    //                              моя "система"
    {$define _debugLOG_} //< и типа да ... можно делать ДЕБАГ отметки
{$endIf}
{%endregion}
//------------------------------------------------------------------------------

procedure tIn0k_LazIdeEXT__wndStllte__AnchorEditor4FormDesigner._wrkEvent_;
var tmpWnd:TCustomForm;
begin
    inherited;
    // тут ВСЕ просто ... найти окно AnchorEditor и вытащить его на ВТОРОЙ план
    tmpWnd:=in0k_lazarusIdeSRC__ideForm_AnchorEditor.Form_FindInIDE;
    //
    {$ifdef in0k_lazarusIdePLG__wndSatellite_AnchorEditor__AUTO_SHOW}
    if NOT Assigned(tmpWnd) then begin
        //tmpWnd:=in0k_lazarusIdeSRC__ideForm_ObjectInspector.Form_ShowByCMD;
    end;
    {$endIf}
    if NOT Assigned(tmpWnd) then begin
        {$ifDef _debugLOG_}
        DEBUG('_wrkEvent_', 'targetWND NOT found');
        {$endIf}
        EXIT;
    end;
    if csDestroying in tmpWnd.ComponentState then begin
        {$ifDef _debugLOG_}
        DEBUG('_wrkEvent_', 'targetWND is csDestroying');
        {$endIf}
        EXIT;
    end;
    {$ifdef in0k_lazarusIdePLG__wndSatellite_AnchorEditor__AUTO_SHOW}
        if NOT tmpWnd.Visible then begin
            // тут её надо ОФИЦИАЛЬНО перепоказать
            //tmpWnd:=in0k_lazarusIdeSRC__ideForm_ObjectInspector.Form_ShowByCMD;
        end;
    {$else}
        if NOT tmpWnd.Visible then begin
            {$ifDef _debugLOG_}
            DEBUG('_wrkEvent_', 'targetWND NOT Visible');
            {$endIf}
            EXIT;
        end;
    {$endIf}
    if tmpWnd.UseDockManager then begin //< если у формы, то надо уйти :-(
        {$ifDef _debugLOG_}
        DEBUG('_wrkEvent_', 'targetWND UseDockManager');
        {$endIf}
        EXIT;
    end;
    //
    In0k_lazIdeSRC___B2SP(tmpWnd); //< дергаем окно уже наконец.
end;

end.


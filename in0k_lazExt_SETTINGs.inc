//------------------------------------------------------------------------------
// in0k_LazIdeEXT_wndInspector_FF8S
//      Compilation settings of the component
//      Настройки компиляции компонента
//------------------------------------------------------------------------------

//--- # DEBUG ------------------------------------------------------------------
//  Позволяет просматривать лог событий в отдельном окне из IDE
//  `View` -> `IDE Internals` -> `[eventLog]..wndInspector_aFNcAFSE..`
{.$define in0k_LazIdeEXT_wndInspector_FF8S___DebugLOG}
//  расширенный дебаг
{$ifDef in0k_LazIdeEXT_wndInspector_FF8S___DebugLOG}
    // можно подключить логи ПодСистем
    {.$define in0k_lazIdeSRC_SourceEditor_onActivate___DebugLOG}
    {.$define in0k_lazIdeSRC_FuckUpForm___DebugLOG}
    {.$define in0k_lazIdeSRC_B2SP___DebugLOG}
{$endIf}
//------------------------------------------------------------------------------

{%region --- # дополнительные специальные настройки -------------- /fold }
{%endregion}
{%region --- # "НАСТРОйКИ уровня КОМПИЛЯЦИИ" : ПРИМЕНЕНИЕ -------- /fold }

//--- возня с ОТКЛЮЧЕНИЕ дебага ----------------------------------------------//
{$ifNDef in0k_LazIdeEXT_wndInspector_FF8S___DebugLOG}
    // НУЖНО ОТКЛЮЧИТЬ логи ПодСистем тоже
    {$undef in0k_lazIdeSRC_SourceEditor_onActivate___DebugLOG}
    {$undef in0k_lazIdeSRC_FuckUpForm___DebugLOG}
    {$undef in0k_lazIdeSRC_B2SP___DebugLOG}
{$endIf}

{%endregion}




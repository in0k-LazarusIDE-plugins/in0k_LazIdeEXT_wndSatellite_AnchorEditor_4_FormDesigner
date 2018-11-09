//------------------------------------------------------------------------------
// in0k_LazIdeEXT_wndInspector_FF8S
//      Compilation settings of the component
//      Настройки компиляции компонента
//------------------------------------------------------------------------------


{.$define in0k_LazarusIdeEXT__DEBUG}


//--- # DEBUG ------------------------------------------------------------------
//  Позволяет просматривать лог событий в отдельном окне из IDE
//  `View` -> `IDE Internals` -> `[eventLog]..wndInspector_aFNcAFSE..`
{.$define in0k_LazIdeEXT_wndInspector_FF8S___DebugLOG}
//  расширенный дебаг
{$ifDef in0k_LazarusIdeEXT__DEBUG}
    // можно подключить логи ПодСистем
    {$define in0k_lazarusIdeSRC__fuckUp_tControlWndProc__DEBUG}
    {$define in0k_lazarusIdeSRC__B2SP__DEBUG}
{$endIf}
//------------------------------------------------------------------------------

{%region --- # дополнительные специальные настройки -------------- /fold }
{%endregion}
{%region --- # "НАСТРОйКИ уровня КОМПИЛЯЦИИ" : ПРИМЕНЕНИЕ -------- /fold }

//--- возня с ОТКЛЮЧЕНИЕ дебага ----------------------------------------------//
{$ifNDef in0k_LazarusIdeEXT__DEBUG}
    // НУЖНО ОТКЛЮЧИТЬ логи ПодСистем тоже
    {$undef in0k_lazarusIdeSRC__fuckUp_tControlWndProc__DEBUG}
    {$undef in0k_lazarusIdeSRC__B2SP__DEBUG}
{$endIf}

{%endregion}




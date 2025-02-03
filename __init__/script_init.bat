@echo off

if %IMPL_MODE%0 NEQ 0 goto IMPL

call "%%~dp0__init__.bat" || exit /b

call "%%CONTOOLS_BUILD_TOOLS_ROOT%%/check_vars.bat" CONTOOLS_PROJECT_ROOT PROJECT_OUTPUT_ROOT PROJECT_LOG_ROOT CONTOOLS_ROOT CONTOOLS_UTILS_BIN_ROOT || exit /b

call "%%CONTOOLS_ROOT%%/std/declare_builtins.bat" %%* || exit /b

call "%%CONTOOLS_BUILD_TOOLS_ROOT%%/init_project_log.bat" "%%?~n0%%" || exit /b

call "%%CONTOOLS_BUILD_TOOLS_ROOT%%/init_vars_file.bat" || exit /b

call "%%CONTOOLS_ROOT%%/std/callshift.bat" -skip 3 1 "%%CONTOOLS_ROOT%%/exec/exec_callf_prefix.bat" -Y /pause-on-exit -- %%* || exit /b

rem The caller must exit after this exit.
exit /b 0

:IMPL
rem CAUTION: We must to reinit the builtin variables in case if `IMPL_MODE` was already setup outside.
call "%%CONTOOLS_ROOT%%/std/declare_builtins.bat" %%* || exit /b

rem check for true elevated environment
rem call "%%CONTOOLS_ROOT%%/std/is_admin_elevated.bat" || (
rem   echo.%?~nx0%: error: the script process is not properly elevated up to Administrator privileges.
rem   exit /b 255
rem ) >&2

rem cast to integer
set /A NEST_LVL+=1

if %NEST_LVL% EQU 1 (
  rem load initialization environment variables
  if defined INIT_VARS_FILE call "%%CONTOOLS_ROOT%%/std/set_vars_from_file.bat" "%%INIT_VARS_FILE%%"
)

call "%%CONTOOLS_ROOT%%/std/get_cmdline.bat" %%*
call "%%CONTOOLS_ROOT%%/std/echo_var.bat" RETURN_VALUE ">"
echo.

rem The caller can continue after this exit.
exit /b 0

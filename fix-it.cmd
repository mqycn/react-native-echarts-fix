@echo off
echo.
echo ============================================================================
echo      new version: https://github.com/mqycn/react-native-echarts-fix
echo ============================================================================
echo.
echo Set Path %~dp0
cd /d %~dp0
set android-assets=..\android\app\src\main\assets\
set node_modules=..\node_modules\

echo.
echo Fix Native Echarts...
set echarts-path=native-echarts\src\components\Echarts\

echo.
echo Copying index.js...
copy %echarts-path%index.js %node_modules%%echarts-path%

if not exist %android-assets%echarts echo Create Folder assets\echarts ...
if not exist %android-assets% mkdir %android-assets%
if not exist %android-assets%echarts mkdir %android-assets%echarts

echo.
echo Copying tpl.html...
copy %node_modules%%echarts-path%tpl.html %android-assets%echarts

echo.
echo Fix finish, press any key to continue.
pause>nul
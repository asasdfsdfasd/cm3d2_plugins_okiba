@echo off && setlocal ENABLEEXTENSIONS && pushd "%~dp0" && call "%~dp0scripts\base.bat" || exit /b 1

echo.& echo ExternalSaveData && call ExternalSaveData\compile.bat || goto error
echo.& echo FastFade && call FastFade\compile.bat || goto error
echo.& echo MaidVoicePitch && call MaidVoicePitch\compile.bat || goto error
echo.& echo PersonalizedEditSceneSettings && call PersonalizedEditSceneSettings\compile.bat || goto error
echo.& echo SkillCommandShortCut && call SkillCommandShortCut\compile.bat || goto error
echo.& echo ConsistentWindowPosition && call ConsistentWindowPosition\compile.bat || goto error
echo.& echo AddModsSlider && call AddModsSlider\compile.bat || goto error
echo.& echo VoiceNormalizer && call VoiceNormalizer\compile.bat || goto error
echo.& echo ConsoleCodePage && call ConsoleCodePage\compile.bat || goto error

echo.& echo 成功：全ファイルのコンパイルに成功しました

popd
goto end

:error

echo.& echo 失敗：コンパイル中にエラーが発生しました
exit /b 1

:end

@echo off

:: CD current route
cd /d "%~dp0"

:: Set launch parameters
set RAM=-Xmn16M -Xmx1024M
set GC=-XX:+IgnoreUnrecognizedVMOptions ^
-XX:+UnlockExperimentalVMOptions ^
-XX:+UnlockDiagnosticVMOptions ^
-XX:+AlwaysActAsServerClassMachine ^
-XX:-DontCompileHugeMethods ^
-XX:+DisableAttachMechanism ^
-XX:+ParallelRefProcEnabled ^
-XX:+PerfDisableSharedMem ^
-XX:+UseCodeCacheFlushing ^
-XX:+UseFastJNIAccessors ^
-XX:+UseFastAccessorMethods ^
-XX:+UseNUMA ^
-XX:+UseThreadPriorities ^
-XX:+UseVectorCmov ^
-XX:+UseG1GC ^
-XX:+DisableExplicitGC ^
-XX:MaxGCPauseMillis=250 ^
-XX:G1NewSizePercent=30 ^
-XX:G1MaxNewSizePercent=40 ^
-XX:G1HeapRegionSize=8M ^
-XX:G1ReservePercent=20 ^
-XX:G1HeapWastePercent=5 ^
-XX:G1MixedGCCountTarget=4 ^
-XX:InitiatingHeapOccupancyPercent=15 ^
-XX:G1MixedGCLiveThresholdPercent=90 ^
-XX:G1RSetUpdatingPauseTimePercent=5 ^
-XX:SurvivorRatio=32 ^
-XX:MaxTenuringThreshold=1 ^

:: Start Server
"runtime\bin\java.exe" -jar Launcher.jar %RAM% %GC% 
pause
@echo off
REM Compile the C# code
csc /target:library ^
    /out:SqlClrFunctions.dll ^
    /reference:System.Data.dll ^
    /reference:"C:\Program Files\Microsoft SQL Server\150\SDK\Assemblies\Microsoft.SqlServer.Types.dll" ^
    UserDefinedFunctions.cs

echo Build completed.
pause
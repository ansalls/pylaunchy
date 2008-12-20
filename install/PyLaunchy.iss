; Copyright 2008 Shahar Kosti

; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at

     ; http://www.apache.org/licenses/LICENSE-2.0

; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

#define MyAppName "PyLaunchy"
#define MyAppVer "0.8.0"
#define MyAppURL "http://pylaunchy.sourceforge.net/"

#define RootDir ".."
#define PluginsDir RootDir + "\plugins"
#define SrcDir RootDir + "\src"

#define Exclude ".svn"
#define PluginExclude ".svn, *.png, *.ui, *.ico"

[Files]
Source: {#SrcDir}\windows\Release\PyLaunchy.dll; DestDir: {app}\plugins; Flags: ignoreversion
Source: tmpbuild\boost_python-vc80-mt-1_35.dll; DestDir: {app}\
Source: icons\pysimple.png; DestDir: {app}\plugins\icons
Source: {#PluginsDir}\pysimple.py; DestDir: {app}\plugins\python\examples
Source: lib\sip.pyd; DestDir: {app}\plugins\python\lib
Source: lib\PyQt4\*.*; DestDir: {app}\plugins\python\lib\PyQt4; Flags: recursesubdirs; Excludes: .svn

Source: {#RootDir}\doc\build\*.*; DestDir: {app}\plugins\python\doc; Flags: recursesubdirs; Excludes: {#Exclude}, *.zip, .doctrees; Components: docs

; PyGo-Y
Source: icons\pygo-y.png; DestDir: {app}\plugins\icons; Components: pygoy
Source: {#PluginsDir}\pygo-y.py; DestDir: {app}\plugins\python; Components: pygoy
Source: lib\win32con.py; DestDir: {app}\plugins\python\lib; Components: pygoy
Source: lib\win32gui.pyd; DestDir: {app}\plugins\python\lib; Components: pygoy
Source: lib\pywintypes25.dll; DestDir: {app}\plugins\python\lib; Components: pygoy

; PyWebIndex
Source: {#PluginsDir}\PyWebIndex\*.*; DestDir: {app}\plugins\python; Flags: recursesubdirs; Excludes: {#PluginExclude}; Components: pywebindex

; PyDiry
Source: {#PluginsDir}\PyDiry\*.*; DestDir: {app}\plugins\python; Flags: recursesubdirs; Excludes: {#PluginExclude}; Components: pydiry
Source: {#PluginsDir}\PyDiry\pydiry.ico; DestDir: {app}\plugins\icons; Components: pydiry

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppName} {#MyAppVer}
DefaultDirName={pf}\Launchy
AppPublisher=
AppPublisherURL={#MyAppURL}
VersionInfoVersion={#MyAppVer}
OutputBaseFilename=PyLaunchy-{#MyAppVer}
OutputDir=.\
AppID={{AD02FF4D-0B7A-480A-AE06-10A2F853CAF3}
LicenseFile=..\license.txt
DirExistsWarning=no

[Registry]

[Components]
Name: docs; Description: Documentation; Types: custom full
Name: pygoy; Description: PyGo-y plugin; Types: custom full
Name: pydiry; Description: PyDiry plugin; Types: custom full
Name: pywebindex; Description: PyWebIndex plugin; Types: custom full

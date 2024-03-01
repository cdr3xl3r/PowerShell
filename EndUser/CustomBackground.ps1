# Define the wallpaper path (make sure the path is accessible by all users)
$wallpaperPath = "C:\Path\To\Your\Wallpaper.jpg"

# Set the wallpaper (this will set for the current user)
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "Wallpaper" -Value $wallpaperPath

# To make the change take effect
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True

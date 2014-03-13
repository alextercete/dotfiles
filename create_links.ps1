$DOTFILES = Get-Location
$VIM = Join-Path ${env:ProgramFiles(x86)} Vim

Function New-Symlink {
    Param($symlink, $target)

    if (Test-Path $target -pathType container) {
        # Remove-Item cannot be used to remove folder symlinks,
        # because it also removes the target folder.
        if (Test-Path $symlink) { cmd /c rmdir /s /q $symlink }
        (cmd /c mklink /d $symlink $target) > $null
    }
	else {
        if (Test-Path $symlink) { Remove-Item $symlink }
        (cmd /c mklink $symlink $target) > $null
    }

    Write-Host "$symlink -> $target"
}

Write-Host "-> Creating symbolic links..."

# Vim
New-Symlink "$VIM\vimfiles" "$DOTFILES\vim"
New-Symlink "$VIM\linux-vimrc" "$DOTFILES\vimrc"
New-Symlink "$VIM\linux-gvimrc" "$DOTFILES\gvimrc"

# Other
New-Symlink "$HOME\.bashrc" "$DOTFILES\bashrc"
New-Symlink "$HOME\.git_template" "$DOTFILES\git_template"
New-Symlink "$HOME\.gitconfig" "$DOTFILES\gitconfig"
New-Symlink "$HOME\.gitconfig_overrides" "$DOTFILES\gitconfig_windows_overrides"
New-Symlink "$HOME\.gitignore_global" "$DOTFILES\gitignore_global"

Write-Host "-> Done!"

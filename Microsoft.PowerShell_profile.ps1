function Show-MainMenu {
	Write-Host ""
	Write-Host "Frann 🧉 | Custom Terminal Script"
	Write-Host "@frannlencina /github"
	Write-Host ""
	Write-Host "[FTools] to see the tools menu"
	Write-Host "----------------------"
}

Show-MainMenu

function FTools {

	function Show-Menu {
		Write-Host "----------------------"
		Write-Host "Choose an option to execute"
		Write-Host ""
		Write-Host "💡 (1) All Repos"
		Write-Host ""
		Write-Host "📂 (2) LetrasSinFiltro Repo - (3) FraintStudio Repo - (4) Portfolio Repo"
		Write-Host ""
		Write-Host "🌟 (5) Github Profile"
		Write-Host ""
		Write-Host "🤖 (6) ChatGPT"
		Write-Host ""
		Write-Host "🗑️ (X) Nothing"
		Write-Host "----------------------"
	}
	
	$root_allRepos = "D:\Programming"
	$root_letrasSinFiltro = "C:\Users\cinki\Desktop\LetrasSinFiltro"
	$root_fraintStudios = "D:\Programming\Fraint Studio\fraint-studio"
	$root_porfolio = "D:\Programming\portfolio"
	$link_github = "https://github.com/frannlencina"
	$link_chatgpt = "https://chat.openai.com/"
	
	
	do {
		Show-Menu
	 $option = Read-Host "👉🏻 "
	 
		switch ($option) {
			1 {
				Write-Host "✅ Succes"
				Set-Location $root_allRepos
				$option = "x"
			
			}
			2 {
				Write-Host "✅ Succes"
				Set-Location $root_letrasSinFiltro
				$option = "x"
			
			}
			3 {
				Write-Host "✅ Succes"
				Set-Location $root_fraintStudios
				$option = "x"
			
			}
			4 {
				Write-Host "✅ Succes"
				Set-Location $root_porfolio
				$option = "x"
			
			}
			5 {
				Write-Host "✅ Succes"
				Start-Process $link_github
			
			}
			6 {
				Write-Host "✅ Succes"
				Start-Process $link_chatgpt
			}
		}
	
	} while ($option -ne "x")

}
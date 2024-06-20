# Ruta al archivo JSON
$configFilePath = "C:\Users\cinki\OneDrive\Documentos\PowerShell\Config.json"

# Verificar si el archivo existe
if (Test-Path $configFilePath) {
    try {
        # Leer y convertir el contenido del archivo JSON a un objeto PowerShell
        $config = Get-Content $configFilePath | ConvertFrom-Json
    } catch {
        Write-Host "Error al leer el archivo JSON: $_"
    }
} else {
    Write-Host "El archivo de configuración no se encontró: $configFilePath"
}

function FTools {
	function Show-Menu {
		Write-Host "----------------------"
		Write-Host "Choose an option to execute"
		Write-Host ""
		foreach ($item in $($config.directories)) {
			Write-Host "📂 ($($item.key)) $($item.name)"
		 }
		Write-Host ""
		foreach ($item in $($config.webLinks)) {
			Write-Host "🌟 ($($item.key)) $($item.name)"
		 }
		Write-Host ""
		Write-Host "🗑️ (X) Close"
		Write-Host "----------------------"
	}

	Show-Menu
	do {

		# Combina los arrays $config.directories y $config.webLinks en una sola lista
		$allItems = $($config.directories) + $($config.webLinks)

		$option = Read-Host "👉🏻 "
		
		foreach ($item in $allItems) {
			if ($option -contains $item.key) {
				if ($item.type -eq 'directory') {
					Set-Location $item.path
					Write-Host "✅ Succes"
					$option = "x"
				} elseif ($item.type -eq 'webLink') {
					Start-Process $item.path
					Write-Host "✅ Succes"
					$option = "x"
				}
			}
		}
	} while ($option -ne $($config.closeButton))

}
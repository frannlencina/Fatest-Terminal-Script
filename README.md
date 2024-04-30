# Terminal Configuration for Fatest-Terminal

Before getting started, make sure to edit the script data to have your own customized terminal.

Guide on how to install the script.

## Terminal Configuration

1. **Edit Terminal Data:**
   - Open your preferred text editor, such as NotePad++ or Notepad.
   - Edit the data in the `Microsoft.PowerShell_profile` file as needed.

2. **Installation and Configuration of Windows PowerShell:**
   - Install Windows PowerShell if you haven't already installed it on your system.

3. **Profile Check:**
   - Open Windows PowerShell and run the following command to check if you have a profile:
     ```powershell
     Test-Path $Profile
     ```

4. **Creating a New Profile (if necessary):**
   - If the above command does not return a positive result, create a new profile by running:
     ```powershell
     New-Item –Path $Profile –Type File –Force
     ```

5. **Enabling Script Execution:**
   - Enable script execution in Windows PowerShell with the following command:
     ```powershell
     Set-ExecutionPolicy RemoteSigned
     ```

6. **Replacing the Profile File:**
   - Navigate to the location where the `Microsoft.PowerShell_profile` file is located. Typically, it is found in:
     ```
     C:\Users\<YourUser>\Documents\PowerShell
     ```
   - Replace the terminal file with the one you previously edited.

Done! Your terminal is now configured to use the Fatest-Terminal script.

by @frannlencina / Francisco Lencina

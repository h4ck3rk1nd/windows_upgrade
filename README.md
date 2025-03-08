# windows_upgrade
Upgrade the Windows 11 Single Home Edition to Windows 11 Professional Version


## Features

- Uninstalls current product key.
- Clears KMS server and product key cache.
- Changes the product key to a specified one.
- Configures Windows License Manager and Windows Update services to auto-start.
- Sets the KMS server and activates Windows using the provided product key.

## Prerequisites

- Windows 10/11 system.
- PowerShell with administrative privileges.
- Internet connection to access KMS server and activate Windows.

## Requirements

- PowerShell must be run as **Administrator** to ensure the script has the necessary permissions to execute system changes.
- Ensure that `changepk.exe` and `slmgr.vbs` commands are available on your system.

## Usage

1. **Clone this repository** to your local machine.

    ```bash
    git clone https://github.com/yourusername/winpro_installer.git
    ```

2. **Navigate to the folder** containing the `winpro_installer.ps1` script.

    ```bash
    cd winpro_installer
    ```

3. **Run the PowerShell script** as Administrator:

    - Right-click on the `winpro_installer.ps1` file.
    - Select **Run with PowerShell**.

4. **Alternatively**, run the script manually from the PowerShell window:

    ```powershell
    .\winpro_installer.ps1
    ```

## How it Works

The script performs the following actions:
1. **Check Target Edition**: It checks the current Windows edition using the `DISM /online /Get-TargetEditions` command.
2. **Validate Windows Edition**: If the edition is "Professional", the script proceeds with the installation process.
3. **Uninstall Current Product Key**: It uninstalls the existing product key using `slmgr.vbs /upk`.
4. **Clear KMS Server Cache**: It clears KMS server information using `slmgr.vbs /ckms` and clears the product key cache.
5. **Set Product Key**: The script changes the product key using `changepk.exe` and installs a new product key using `slmgr.vbs /ipk`.
6. **Configure Windows Services**: The script configures the **License Manager** and **Windows Update** services to start automatically and starts them.
7. **Activate Windows**: It activates Windows using the provided KMS server.

## Important Notes

- This script assumes you are using **KMS-based activation**. If you require **MAK (Multiple Activation Key)** activation, modify the script accordingly.
- Ensure that you have a valid product key for Windows 10/11 Professional.
- This script is intended for educational purposes and should only be used on systems that you have the legal right to modify and activate.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Contact

For any inquiries or support, please open an issue in the GitHub repository, or contact the repository owner at [h4ckerk1nd@gmail.com](mailto:h4ckerk1nd@gmail.com).

---

> **Disclaimer**: This script is intended for use in educational environments or personal use. Ensure that you comply with Microsoft's licensing terms and conditions when using this script.


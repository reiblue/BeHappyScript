**Tutorial de Utilização: Recuperação e Configuração do Sistema**

Este tutorial é destinado a usuários que desejam realizar procedimentos de recuperação e configuração do sistema no ambiente Windows. Os scripts fornecidos devem ser usados com cautela, e é altamente recomendável fazer backup dos dados importantes antes de prosseguir.

### Passo 1: Preparação

Antes de iniciar, certifique-se de ter:

- Um backup completo de seus dados importantes.
- Acesso ao Prompt de Comando com privilégios de administrador.
- Conhecimento básico sobre comandos do Prompt de Comando.

### Passo 2: Download dos Scripts

Baixe os scripts fornecidos e salve-os em um local de fácil acesso, como uma pasta na unidade G: (por exemplo, G:\BeHappy).

### Passo 3: Execução do Primeiro Script

1. Abra o Prompt de Comando como administrador.
2. Navegue até o diretório onde você salvou os scripts usando o comando `cd`. Por exemplo:

    ```batch
    cd /d G:\BeHappy
    ```

3. Execute o primeiro script:

    ```batch
    c:
    diskpart.exe /s G:\BeHappy\script1.txt
    bcdboot c:\Windows /f UEFI /s s:
    bootrec /rebuildbcd
    echo "Chckdsk press ENTER to continue or press CTRL+C to exit"
    pause 
    chkdsk c: /X /F
    echo "Procedimento de restauracao concluido!!!"
    ```

4. Siga as instruções exibidas durante a execução.

### Passo 4: Execução do Segundo Script

1. No mesmo Prompt de Comando, execute o segundo script:

    ```batch
    diskpart
    select disk 0
    select partition 1
    delete partition override
    select disk 0
    create part efi
    select partition 1
    format quick fs=fat32
    assign letter=S
    exit
    ```

2. Aguarde até que o script seja concluído.

### Observações Importantes:

- Este tutorial pressupõe que você está usando um ambiente UEFI. Certifique-se de que seu sistema é compatível com UEFI antes de prosseguir.
- Certifique-se de ter backup adequado antes de executar scripts que envolvem manipulação de partições e inicialização do sistema.
- Caso encontre qualquer mensagem de erro durante a execução dos scripts, pare imediatamente e busque assistência para evitar possíveis perdas de dados.

Lembre-se de que este tutorial destina-se a usuários com algum conhecimento técnico. Se você não se sentir confortável executando esses comandos, é recomendável procurar a ajuda de um profissional de suporte técnico.

-------------------------------------------------------------------------------------------------------------------------

**Usage Tutorial: System Recovery and Configuration**

This tutorial is intended for users looking to perform system recovery and configuration procedures in the Windows environment. The provided scripts should be used with caution, and it is highly recommended to back up important data before proceeding.

### Step 1: Preparation

Before starting, make sure you have:

- A complete backup of your important data.
- Access to the Command Prompt with administrator privileges.
- Basic knowledge of Command Prompt commands.

### Step 2: Download the Scripts

Download the provided scripts and save them in an easily accessible location, such as a folder on drive G: (e.g., G:\BeHappy).

### Step 3: Execution of the First Script

1. Open the Command Prompt as an administrator.
2. Navigate to the directory where you saved the scripts using the `cd` command. For example:

    ```batch
    cd /d G:\BeHappy
    ```

3. Execute the first script:

    ```batch
    c:
    diskpart.exe /s G:\BeHappy\script1.txt
    bcdboot c:\Windows /f UEFI /s s:
    bootrec /rebuildbcd
    echo "Chckdsk press ENTER to continue or press CTRL+C to exit"
    pause 
    chkdsk c: /X /F
    echo "Restoration procedure completed!!!"
    ```

4. Follow the instructions displayed during the execution.

### Step 4: Execution of the Second Script

1. In the same Command Prompt, execute the second script:

    ```batch
    diskpart
    select disk 0
    select partition 1
    delete partition override
    select disk 0
    create part efi
    select partition 1
    format quick fs=fat32
    assign letter=S
    exit
    ```

2. Wait until the script is completed.

### Important Notes:

- This tutorial assumes you are using a UEFI environment. Ensure that your system is UEFI compatible before proceeding.
- Make sure to have adequate backup before executing scripts involving partition manipulation and system boot.
- In case you encounter any error messages during script execution, stop immediately and seek assistance to avoid potential data loss.

Keep in mind that this tutorial is intended for users with some technical knowledge. If you do not feel comfortable running these commands, it is recommended to seek the help of a technical support professional.

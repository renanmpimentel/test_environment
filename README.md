# README #

Ambiente de teste

### Como instalar? ###

1 - Baixe os arquivos deste repositório

2 - Instale o Vagrant http://downloads.vagrantup.com/

3 - Instale o VirtualBox https://www.virtualbox.org/wiki/Downloads (versão 4.3.12)

4 - Na pasta digite o comando: vagrant up

5 - Seja feliz!

### Itens instalados ###
* NodeJS

### Bug's ###

#### Problema com vboxsf ####
- Mensagem de erro:

Failed to mount folders in Linux guest. This is usually because the "vboxsf" file system is not available. Please verify that the guest additions are properly installed in the guest and can work properly. The command attempted was

- Resolução:

Digitar no terminal: vagrant plugin install vagrant-vbguest
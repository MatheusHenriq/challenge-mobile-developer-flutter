# Informações sobre como rodar o aplicativo!
    Para rodar o aplictivo é necessário ter o flutter instalado no seu computador(qualquer s.o).

    OBS: rode o projeto em um mobile device, se utilizar no chrome ou edge não irá ter funcionalidades implementadas, pois tem pacotes no projeto que só funcionam no celular ou emulador de android.

    Caso você tenha um emulador de android no seu pc:
        Abra o emulador de android => vá pra pasta raiz do projeto flutter => abra o terminal => digite: flutter run

        obs: para checkar se seu emulador está realmente aberto e aceito como um device pelo flutter, vá no terminal e digite: flutter devices. Se o flutter estiver atualizado ele irá mostrar as opções: chrome, edge e, se tudo estiver correto com o android, o nome do seu android.

    Caso você queira rodar o aplicativo no celular:
        Conecte o celular na sua máquina => permita que o computador acesse o celular => cheque se o seu celular está disponível como device no flutter com o comando: flutter devices no terminal.

        Obs: caso seu celular não esteja disponível como device, siga o tutorial de um desses sites: 
        
        https://tecnoblog.net/277750/como-ativar-o-modo-desenvolvedor-no-android/ 

        https://canaltech.com.br/android/como-ativar-modo-desenvolvedor-android/

    Obs: Caso não queira seguir esses tutoriais, faça o seguinte : Com o fluter instalado na sua máquina, baixe o projeto e use o comando: flutter build apk, esse comando irá baixar o apk do projeto. Feito isso acesse o diretório:  [flutter-project]/build/app/outputs/apk/release/app-release.apk, pegue o apk-release.apk e mande pro celular, baixe o apk no seu celular e bom uso(fazendo isso, não rodando no emulador ou celular baseado no flutter run, o aplicativo fica mais otimizado!).
    

        
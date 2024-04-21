# Aplicativo de Cálculo de IMC

## Visão Geral
O Aplicativo de Cálculo de Índice de Massa Corporal (IMC) em Flutter é uma ferramenta simples e prática para ajudar os usuários a determinar seu IMC, oferecendo uma indicação rápida de sua categoria de peso. Utilizando o framework Flutter, o aplicativo proporciona uma experiência interativa, permitindo que os usuários insiram seus dados e recebam uma avaliação imediata do seu estado de peso, contribuindo para a conscientização sobre saúde e bem-estar.

## Funcionalidades Principais
- Calcule seu IMC inserindo peso e altura.
- Receba uma avaliação imediata sobre sua categoria de peso, com indicações coloridas (azul para abaixo do peso, verde para normal, laranja para sobrepeso, e vermelho para obesidade).
- Interface simples e intuitiva com opções de reinicialização dos dados inseridos.

## Requisitos de Sistema
- Dispositivos Android ou iOS.
- Flutter SDK instalado e configurado.
- Conexão com a internet para instalação e atualizações do aplicativo.

## Instalação
1. Clone o repositório do GitHub do aplicativo: [link do repositório](https://github.com/brunaschneider/calcularIMC.git)
2. Abra o projeto em um editor de código que suporte Flutter, como Android Studio ou Visual Studio Code.
3. Execute o comando `flutter pub get` para instalar todas as dependências necessárias.
4. Conecte um dispositivo físico ou inicie um emulador Android/iOS.
5. Execute o aplicativo usando o comando `flutter run`.

## Como Usar
1. Na tela principal, você verá campos para inserir o peso e a altura.
2. Após inserir os dados, clique no botão para calcular seu IMC.
3. O resultado será exibido na próxima tela, juntamente com a categoria de peso correspondente.
4. Utilize o ícone de reiniciar na barra de ação para limpar os campos e fazer um novo cálculo quando desejado.

## Estrutura do Código
- `main.dart`: Arquivo principal que inicia o aplicativo e configura a tela inicial para entrada de dados.
- `result_screen.dart`: Arquivo que lida com a exibição dos resultados do IMC e a categoria de peso, mostrando as informações de forma clara e colorida conforme a avaliação.

## Licença
Este projeto é licenciado sob a [MIT License](https://github.com/brunaschneider/calcularIMC/blob/main/LICENSE).

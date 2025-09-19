# login_ativ

Um aplicativo Flutter simples que demonstra um fluxo de autenticação com tela de login, uma página de perfil de usuário e uma lista de projetos.

## Sobre o projeto

Este projeto foi desenvolvido como uma atividade para demonstrar a navegação entre telas e a construção de interfaces de usuário em Flutter. As principais funcionalidades incluem:

* **Tela de Login:** Uma tela de boas-vindas com o logo "TitoGo" onde os usuários podem inserir suas credenciais.
* **Página de Projetos:** Após o login, o usuário é direcionado para uma lista de projetos.
* **Página de Perfil:** Uma seção onde o usuário pode ver suas informações, como nome e cargo.

## Primeiros passos

Para executar este projeto localmente, siga estas etapas:

### Pré-requisitos

* Certifique-se de ter o [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado em sua máquina.

### Instalação e Execução

1.  Clone o repositório:
    ```bash
    git clone <URL_DO_SEU_REPOSITORIO>
    ```
2.  Navegue até o diretório do projeto:
    ```bash
    cd login_ativ
    ```
3.  Instale as dependências:
    ```bash
    flutter pub get
    ```
4.  Execute o aplicativo:
    ```bash
    flutter run
    ```

## Estrutura do Projeto

* `lib/Pages/`: Contém as três telas principais da aplicação (`login_page.dart`, `projetos_page.dart`, `profile_page.dart`).
* `lib/Config/`: Armazena arquivos de configuração de estilo, como cores (`app_colors.dart`) e estilos de texto (`app_text_style.dart`).
* `assets/images/`: Contém os recursos de imagem utilizados no projeto.
* `pubspec.yaml`: Define as dependências e a configuração do projeto, incluindo o nome `login_ativ` e os recursos de imagem.

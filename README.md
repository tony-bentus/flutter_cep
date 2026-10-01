# Consulta de CEP

Meu primeiro aplicativo desenvolvido com Flutter. Ele consulta um CEP brasileiro e apresenta os dados do endereço retornados pela API ViaCEP.

## Funcionalidades

- Entrada de CEP com máscara `#####-###`.
- Consulta de endereço pela API ViaCEP.
- Exibição de CEP, logradouro, bairro, cidade, estado e complemento, quando disponível.
- Indicador de carregamento e mensagem de erro durante a consulta.
- Temas claro e escuro, seguindo a configuracao do dispositivo.

## Tecnologias

- Flutter e Dart
- `http` para requisições HTTP
- `mask_text_input_formatter` para formatação do CEP
- [ViaCEP](https://viacep.com.br/) como fonte dos dados de endereco

## Como executar

### Requisitos

- Flutter SDK instalado, com uma versão do Dart compatível com a restrição do projeto (`^3.13.4`).
- Emulador ou dispositivo configurado, ou um alvo desktop/web suportado pelo Flutter.

Confira a instalação do Flutter com:

```bash
flutter doctor
```

Na pasta do projeto, instale as dependências e inicie o aplicativo:

```bash
flutter pub get
flutter run
```

## Exemplo de uso

Digite um CEP, como `01310-100`, e toque em **Buscar CEP**. O aplicativo consulta o ViaCEP e mostra as informações encontradas.

## Estrutura do projeto

```text
lib/
	core/theme/       temas claro e escuro
	models/           modelo dos dados de CEP
	repositories/     comunicação com a API ViaCEP
	ui/               tela principal e widgets
```

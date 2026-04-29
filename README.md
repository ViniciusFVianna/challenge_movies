# Challenge Movies 🎬

Este repositório contém a solução para o desafio de desenvolvimento de uma aplicação de catálogo de filmes, focada em boas práticas de UI/UX, consumo de APIs externas e arquitetura escalável.

## 🚀 Sobre o Projeto

O **Challenge Movies** é um aplicativo mobile que permite aos usuários explorar filmes populares, visualizar detalhes técnicos, sinopses e avaliações. O projeto foi desenvolvido com foco em performance e usabilidade, aplicando conceitos modernos de desenvolvimento cross-platform.

## 🛠️ Tecnologias e Ferramentas

- **Linguagem:** Dart
- **Framework:** [Flutter](https://flutter.dev/)
- **Gerenciamento de Estado:** (Ex: Bloc, Riverpod ou GetX - *ajuste conforme seu uso*)
- **Consumo de API:** [Dio](https://pub.dev/packages/dio) ou [Http](https://pub.dev/packages/http)
- **Design System:** Material Design 3 e Figma para prototipação.

## ✨ Funcionalidades

- [x] Listagem de filmes populares/tendências.
- [x] Busca de filmes por título.
- [x] Detalhes do filme (Sinopse, Elenco, Avaliação).
- [x] Filtros por categorias.
- [ ] Favoritar filmes (Em desenvolvimento).

## 🏗️ Arquitetura

O projeto segue princípios de **Clean Architecture** ou **MVVM**, visando a separação de responsabilidades:
- **Data:** Implementação de repositórios e data sources (integração com API).
- **Domain:** Entidades de negócio e casos de uso.
- **Presentantion:** UI (Widgets) e lógica de estado.

## ⚙️ Como executar o projeto

### Pré-requisitos
- Flutter SDK instalado.
- Chave de API do [The Movie Database (TMDB)](https://www.themoviedb.org/documentation/api).

### Instalação

1. Clone o repositório:
   ```bash
   git clone [https://github.com/ViniciusFVianna/challenge_movies.git](https://github.com/ViniciusFVianna/challenge_movies.git)

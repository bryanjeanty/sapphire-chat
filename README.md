# Sapphire Chat

![sc_screenshot](./public/sapphire_chat_IMG_V01.png)
[Sapphire Chat](https://sapphire-chat.herokuapp.com/) is a developer chat and Q&A application.

## Table of Contents

1. [Getting Started](#getting-started)
2. [Technology](#technology)
3. [Installation](#installation)
4. [Features](#features)
5. [Contributing](#contributing)
6. [Author](#author)
7. [License](#license)

## Getting Started

Initial software environment conditions

* Version Manager - [RVM](https://rvm.io)
* Package Manager - GEMS (Installed with Ruby)
* Code Editor - [VS Code](https://code.visualstudio.com/), [Atom](https://atom.io/), [Sublime Text](https://www.sublimetext.com/), etc.
* Operating System - MAC OS, Windows or any Linux Distro
* Modern Browser - [Google Chrome](https://www.google.com/chrome/) or [Firefox](https://www.mozilla.org/en-US/firefox/new/)

## Technology

**_PostgreSQL_**: SQL database used to store user, sessions, followers/following, and messages
**_Rails_**: Full-stack framework used to create server, connect to database and serve up dynamic HTML content
**_Action Cable_**: Allows rails full integration with web sockets to allow for real-time communication
**_Code Mirror_**: Provided in-browser code editor configuration
**_Devise_**: User registration and session setup
**_SASS_**: CSS pre-processor added programmatic behavior to application styling
**_Bulma_**: Small, nimble CSS framework used to quickly add UI components and responsiveness to application

Refer to the [Gemfile]() for additional technology used in this project

## Installation

* Install [RVM](https://rvm.io)

```bash
$ gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

$ \curl -sSL https://get.rvm.io | bash -s stable
```

* Install Ruby

```bash
$ rvm install ruby-2.5.3

$ rvm use ruby-2.5.3
```

* Install Bundler

```bash
$ gem install bundler --no-rdoc --no-ri
```

* Install Rails

```bash
$ gem install rails -v 5.2.2 --no-rdoc --no-ri
```

* Create Rails Project With PostgreSQL DB

```bash
$ rails new <app name> --database=postgresql
```

* Install Remaining Tech Stack

```bash
$ gem install pg devise codemirror-rails sass-rails bulma-rails 
```

## Features

* Authentication
* Sessions
* Real-Time Communication (Websockets)
* Code Editor
* Social Following

## Contributing

Pull requests are welcome. Please read [CONTRIBUTING.md](https://github.com/bryanjeanty/sapphire-chat/blob/master/CONTRIBUTING.md) for more details on this process.

## Author

* **Bryan Jeanty**

## License

[MIT](https://github.com/bryanjeanty/sapphire-chat/blob/master/LICENSE.md)

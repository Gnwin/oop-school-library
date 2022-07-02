# OOP school library
A Ruby app that records what books are in the library and who borrows them. The app will allow you to: add new students or teachers, add new books and save records of who borrowed a given book and when.

## Prerequisites
This setup and run procedure assumes you have Ruby installed.

## Getting Started

- clone the repository `$ git clone https://github.com/Gnwin/oop-school-library.git`
- go to the project directory `$ cd oop-school-library`
- switch to branch with `git checkout F/decorate-class`

- Try these lines of code all together for testing a decorator:

  - `p person = Person.new('maximilianus', 22)`
  - `p person.correct_name`
  - `p capitalizedPerson = CapitalizeDecorator.new(person)`
  - `p capitalizedPerson.correct_name`
  - `p capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)`
  - `p capitalizedTrimmedPerson.correct_name`

- and run `$ ruby lib/person.rb`

## Author

👤 **Godwin Nwachukwu**

- GitHub: [@Gnwin](https://github.com/Gnwin)
- Twitter [@gmarxr](https://twitter.com/gmarxr)
- LinkedIn: [Godwin Nwachukwu](https://www.linkedin.com/in/n-gwin/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support
Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse for their RUBY modules which made this a great project for practicing my knowledge of the Ruby basics

## 📝 License

This project is [MIT](./MIT.md) licensed.

# go-makefile

Makefile helpers for GO.

## Project structure

```.sh
├── .project
│   ├── yaml.sh             # yaml parser
│   ├── config_var.sh       # extract yaml config variable
│   └── go-project.mk       # include into your Makefile
├── .VERSION                # version of your project
├── config.yml              # config
└── Makefile                # Makefile
```

## How to use

- Copy `.project` folder to your project's root folder
- Create `.VERSION` file in the root of your project
- Create `config.yml` file in the root of your project
- Create `Makefile` and `include .project/go-project.mk`

## Common commands

- `make vars` - print make variables
- `make upgrade-project.mk` - upgrade project.mk files"
- `make env` - pring GO environment
- `make generate` - generate GO files
- `make testenv` - pring GO test environment
- `make clean` - clean produced files
- `make purge` - clean and purge `.tools` and `vendor` folders
- `make gopath` - create a symbolic link to project's PROJ_GOPATH, if it's not cloned in GOPATH.
- `make showupdates` - show updates in `.tools` and `vendor` folders
- `make lspkg` - list GO packeges in the current project
- `make bench` - GO test with bench
- `make fmt` - run `go fmt` on project files
- `make vet` - run `go vet` on project files
- `make lint` - run `go lint` on project files
- `make test` - run test
- `make testshort` - run test with -short flag
- `make covtest` - run test with coverage report
- `make coverage` - open coverage report
- `make coveralls` - publish coverage to coveralls"

## Coverage report

Install `cov-report` in your project:

    go get github.com/go-phorce/cov-report/cmd/cov-report
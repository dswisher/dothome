# My Neovim Config

## LSP Servers

I have chosen not to use mason or other in-editor tools to automatically install LSP Servers.
My preference is to use package managers to install those...at least for now.


### C#

I am using [csharp-language-server](https://github.com/razzmatazz/csharp-language-server).
To install (all platforms, requires dotnet 10):

    dotnet tool install --global csharp-ls


### LUA

This configuration uses [lua-language-server](https://github.com/LuaLS/lua-language-server).
To install:

    # On Mac:
    brew install lua-language-server

    # On Ubuntu:
    # TBD

    # On Windows
    # TBD


### Python

For a Python project, I use both `pyright` and `ruff`, and I expect the virtual environment will contain both of these packages.
This means that before I start the editors, I need to activate the virtual environment.


### Terraform

For terraform files, I am trying out [terraform-ls](https://github.com/hashicorp/terraform-ls/), the "official" language server by hashicorp.
To install:

    # On Mac:
    brew install hashicorp/tap/terraform-ls


# homebrew-cask

## Description
A collection of brew meta formulas who depends on a number of other formulas and installs a binary to list these.

## Generating a formula
The easiest way is to use `bin/create_cask` and an associcated YAML config file to generate the file required formula.

### YAML Config

```yaml
---
'my-name':
    version: '1'
    deps:
        - 'jdk'
        - 'homebrew/science/hdf5'
```

The config file requires you to give a key (here `my-name`), a version and a list of dependencies. You can namespace the brew formula dependencies fully or let homebrew figure it out.

### Running the command

Assuming the above config is stored in a file called my-name.yml we call it like so:

```bash
./bin/create_cask --verbose --config my-name.yml --dir $PWD
```

This will generate a file called `my-name.rb` in the current working directory.

### Output

The dependency will run, homebrew will bring in all external dependencies and finally write a binary to the Cellar named `my-name`. When this is run the output will look like

```
jdk  8.28  /homebrew/Cellar/jdk/8.28
homebrew/science/hdf5  1.1  /homebrew/Cellar/hdf5/1.1
```

## ensembl-core - A Worked Example
Look at [the ensembl-core.rb formula](https://github.com/Ensembl/homebrew-cask/blob/master/ensembl-core.rb) for a generated formula. The config file for this is located in [yml/ensembl-core.yml](https://github.com/Ensembl/homebrew-cask/blob/master/yml/ensembl-core.yml). Post installation you should expect the following output

```bash
$ ensembl-core
ensembl/ensembl/exonerate22 2.2.0 /path/to/linuxbrew/Cellar/exonerate22/2.2.0
homebrew/science/lastz 1.02.00 /path/to/linuxbrew/Cellar/lastz/1.02.00
jdk 1.8.0-60 /path/to/linuxbrew/Cellar/jdk/1.8.0-60
```

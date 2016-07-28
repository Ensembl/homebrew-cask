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

You can also give a glob or directory to the command to process multiple files at the same time. The code will only update if the file content has changed (it ignores the generated at date line)

```bash
./bin/create_cask --verbose --config yml/* --dir $PWD
# or
./bin/create_cask --verbose --config yml/ --dir $PWD
```

### Output

The dependency will run, homebrew will bring in all external dependencies and finally write a binary to the Cellar named `my-name`. When this is run the output will look like

```
jdk  8.28  /homebrew/Cellar/jdk/8.28
homebrew/science/hdf5  1.1  /homebrew/Cellar/hdf5/1.1
```

## assembly-mapping - A Worked Example
Look at [the assembly-mapping.rb formula](https://github.com/Ensembl/homebrew-cask/blob/master/assembly-mapping.rb) for a generated formula. The config file for this is located in [yml/assembly-mapping.yml](https://github.com/Ensembl/homebrew-cask/blob/master/yml/assembly-mapping.yml). Post installation you should expect the following output

```bash
$ assembly-mapping
homebrew/science/lastz 1.02.00 /nfs/software/ensembl/RHEL7/linuxbrew/Cellar/lastz/1.02.00
ensembl/ensembl/kent v331 /nfs/software/ensembl/RHEL7/linuxbrew/Cellar/kent/v331
```

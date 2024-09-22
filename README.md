# Merge [Rubocop](https://rubocop.org) Configs

## TL;RD

Read `RuboCop` config files, merge them and print the result

## A longer description

Given a file '`rubocop_configs.txt`', the script `merge_rubocop_configs.rb]` will…

* load that file,
* treat it as a list of file names,
* read _those_ files as `RuboCop` config files (i.e. as [YAML](https://yaml.org) files),
* and _merge_ all the config files into a single `Hash`, and finally
* Print it to STDOUT

## Why…

I have various [Ruby](https.//ruby-lang.org) projects that use `RuboCop`to provide a
(mostly) standardised code layout.
Occasionally I want to combine them and create a `RuboCop` config that combines all rules.

## Usage

* Clone this repository:
  ```bash
    git clone git@github.com:s2k/merge_rubocop_configs.git
  ```
* Change into the cloned repository:
  ```bash
    cd merge_rubocop_configs
   ```
* Create a file named '`rubocop_configs.txt`' that contains (relative) file names of `RuboCop` config files.
* Run the script:
  ```bash
    ./merge_rubocop_configs.rb
  ```

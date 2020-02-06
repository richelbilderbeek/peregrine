# scripts

Peregrine scripts.

Name                  |Description
----------------------|----------------------------------------------------
`install_beast2.sh`   |Installs BEAST2 and the BEAST2 NS package
`install_babette.sh`  |Installs `babette`, BEAST2 and the BEAST2 NS package
`install_mcbette.sh`  |Installs `mcbette`, BEAST2 and the BEAST2 NS package
`install_pirouette.sh`|Installs `pirouette`, BEAST2 and the BEAST2 NS package
`install_razzo.sh`    |Installs `razzo`, BEAST2 and the BEAST2 NS package
`uninstall_beast2.sh` |Uninstalls BEAST2 and the BEAST2 NS package

Usage, where `[script_name]` is the name of a script file:

```
sbatch [script_name]
```

For example:

```
sbatch install_beast2.sh
```

If a script fails, run it on the `login` node, 
where `[script_name]` is the name of a script file:

```
./[script_name]
```

For example:

```
./install_beast2.sh
```

## Do not forget

The `login` node and the running nodes are different environments.



# Mariposa data
This repository contains data associated with the [Mariposa](https://github.com/secure-foundations/mariposa) project, 
including all the original queries and the benchmark queries (curated from the fromer).

## `benchmarks`
The Mariposa benchmark contains both unstable and stable queries for the projects we experimented with, as shown in the table below. 
Each is further divided into a core and an extension, where the core contains fewer but more representative queries.

| Project | Original | unstable core | unstable ext | stable core | stable ext |
| --- | --- | --- | --- | --- | --- |
| $\text{Komodo}_D$ | 2,054 | 8 | 95 | 30 | 97 |
| $\text{Komodo}_S$ | 773 | 2 | 2 | 30 | 9 |
| $\text{VeriBetrKV}_L$ | 5,600 | 22 | 153 | 30 | 102 |
| $\text{VeriBetrKV}_D$ | 5,325 | 25 | 130 | 30 | 81 |
| $\text{DICE}^{*}_{F}$ | 1,536 | 3 | 9 | 30 | 13 |
| $\text{vWasm}_F$ | 1,755 | 0 | 4 | 30 | 0 |
| Total | 17,043 | 60 | 393 | 180 | 302 |

#### `benchmarks/unstable_core`
The **unstable core** set contains the queries from each
project that are categorized as unstable in both its original solver
and the latest solver, meaning these queries have been consistently unstable.

#### `benchmarks/unstable_ext`
The **unstable extension** set contains all the
additional unstable queries in the latest Z3 version
at the time of writing (4.12.1).

#### `benchmarks/stable_core`
The **stable core** set contains 30 randomly selected
stable queries from each project, where the standard
deviation of running time over the mutants is less than
one second. This set is meant to prevent stability regression, 
since each member has a consistent result and run time. 

#### `benchmarks/stable_ext`
The **stable extension** set contains
all the stable queries that have a standard deviation
of more than six seconds. 


## `experiments`

This directory contains some tar files for the experiment result sqlite3 database. The tar files are split due to limitations of Github file size. If you are interested in seeing the data yourself:

```
cd experiments
cat chunk.tar.gz.* | tar xzvf -
```

Then run the following to inspect the database:
```
sqlite3 mariposa.db 
```
The database should contain these tables:

```
> .tables
D_FVBKV_summary      D_KOMODO_z3_4_8_7    FS_VWASM_summary   
D_FVBKV_z3_4_11_2    D_KOMODO_z3_4_8_8    FS_VWASM_z3_4_11_2 
D_FVBKV_z3_4_4_2     D_LVBKV_summary      FS_VWASM_z3_4_4_2  
D_FVBKV_z3_4_5_0     D_LVBKV_z3_4_11_2    FS_VWASM_z3_4_5_0  
D_FVBKV_z3_4_6_0     D_LVBKV_z3_4_4_2     FS_VWASM_z3_4_6_0  
D_FVBKV_z3_4_8_11    D_LVBKV_z3_4_5_0     FS_VWASM_z3_4_8_17 
D_FVBKV_z3_4_8_17    D_LVBKV_z3_4_6_0     FS_VWASM_z3_4_8_5  
D_FVBKV_z3_4_8_5     D_LVBKV_z3_4_8_17    S_KOMODO_cvc5_1_0_3
D_FVBKV_z3_4_8_8     D_LVBKV_z3_4_8_5     S_KOMODO_summary   
D_KOMODO_summary     FS_DICE_cvc5_1_0_3   S_KOMODO_z3_4_11_2 
D_KOMODO_z3_4_11_2   FS_DICE_summary      S_KOMODO_z3_4_4_2  
D_KOMODO_z3_4_4_2    FS_DICE_z3_4_11_2    S_KOMODO_z3_4_5_0  
D_KOMODO_z3_4_5_0    FS_DICE_z3_4_4_2     S_KOMODO_z3_4_6_0  
D_KOMODO_z3_4_6_0    FS_DICE_z3_4_5_0     S_KOMODO_z3_4_8_17 
D_KOMODO_z3_4_8_11   FS_DICE_z3_4_6_0     S_KOMODO_z3_4_8_5  
D_KOMODO_z3_4_8_17   FS_DICE_z3_4_8_17    query_view         
D_KOMODO_z3_4_8_5    FS_DICE_z3_4_8_5     test1_z3_4_8_5     
D_KOMODO_z3_4_8_6    FS_VWASM_cvc5_1_0_3

```
Please note the schema in the latest mariposa has diverged from this.
However, this should work with an old release of mariposa: 
https://github.com/secure-foundations/mariposa/releases/tag/second_experiment


### `experiments/bisect_tasks`

This directory contains the results from the bisection experiment. It is here just for the record in case we need it. Please let us know if you would like to understand the logs. 

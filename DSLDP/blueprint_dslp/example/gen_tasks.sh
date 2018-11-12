#!/bin/bash -l
cat << EOF > task_0.json
{
    "mappings": [
        {
            "to": "sex",
            "from": "Sex",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            1
                        ],
                        "label": "M"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "F"
                    }
                ]
            }
        },
        {
            "to": "age",
            "from": "age",
            "mapping": {
                "ranges": [
                    {
                        "range": {
                            "to": 14,
                            "from": 0
                        },
                        "label": "Y_LT15"
                    },
                    {
                        "range": {
                            "to": 19,
                            "from": 15
                        },
                        "label": "Y15-19"
                    },
                    {
                        "range": {
                            "to": 24,
                            "from": 20
                        },
                        "label": "Y20-24"
                    },
                    {
                        "range": {
                            "to": 29,
                            "from": 25
                        },
                        "label": "Y25-29"
                    },
                    {
                        "range": {
                            "to": 34,
                            "from": 30
                        },
                        "label": "Y30-34"
                    },
                    {
                        "range": {
                            "to": 39,
                            "from": 35
                        },
                        "label": "Y35-39"
                    },
                    {
                        "range": {
                            "to": 44,
                            "from": 40
                        },
                        "label": "Y40-44"
                    },
                    {
                        "range": {
                            "to": 49,
                            "from": 45
                        },
                        "label": "Y45-49"
                    },
                    {
                        "range": {
                            "to": 54,
                            "from": 50
                        },
                        "label": "Y50-54"
                    },
                    {
                        "range": {
                            "to": 59,
                            "from": 55
                        },
                        "label": "Y55-59"
                    },
                    {
                        "range": {
                            "to": 64,
                            "from": 60
                        },
                        "label": "Y60-64"
                    },
                    {
                        "range": {
                            "to": 69,
                            "from": 65
                        },
                        "label": "Y65-69"
                    },
                    {
                        "range": {
                            "to": 74,
                            "from": 70
                        },
                        "label": "Y70-74"
                    },
                    {
                        "range": {
                            "to": 120,
                            "from": 75
                        },
                        "label": "Y_GE75"
                    }
                ],
                "type": "ranges"
            }
        },
        {
            "to": "isced97",
            "from": "EDLEV10",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            -9,
                            -8,
                            -6
                        ],
                        "label": "UNK"
                    },
                    {
                        "cases": [
                            1
                        ],
                        "label": "ED5_6"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "ED3"
                    },
                    {
                        "cases": [
                            3
                        ],
                        "label": "ED2"
                    },
                    {
                        "cases": [
                            4
                        ],
                        "label": "ED0_1"
                    }
                ]
            }
        }
    ],
    "micro_data": {
        "columns": [
            "Sex",
            "age",
            "EDLEV10",
            "GREARN"
        ],
        "table": "Ghs06client.tab"
    },
    "marginal_region": "UKC11 ",
    "output": {
        "columns": [
            "Sex",
            "age",
            "GRIND"
        ],
        "file_name": "out_UKC11"
    },
    "marginal_tables": [
        {
            "columns": [
                "isced97"
            ],
            "table": "edu_table.csv"
        },
        {
            "columns": [
                "age",
                "sex"
            ],
            "table": "pop_table.csv"
        }
    ]
}
EOF

cat << EOF > task_1.json
{
    "mappings": [
        {
            "to": "sex",
            "from": "Sex",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            1
                        ],
                        "label": "M"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "F"
                    }
                ]
            }
        },
        {
            "to": "age",
            "from": "age",
            "mapping": {
                "ranges": [
                    {
                        "range": {
                            "to": 14,
                            "from": 0
                        },
                        "label": "Y_LT15"
                    },
                    {
                        "range": {
                            "to": 19,
                            "from": 15
                        },
                        "label": "Y15-19"
                    },
                    {
                        "range": {
                            "to": 24,
                            "from": 20
                        },
                        "label": "Y20-24"
                    },
                    {
                        "range": {
                            "to": 29,
                            "from": 25
                        },
                        "label": "Y25-29"
                    },
                    {
                        "range": {
                            "to": 34,
                            "from": 30
                        },
                        "label": "Y30-34"
                    },
                    {
                        "range": {
                            "to": 39,
                            "from": 35
                        },
                        "label": "Y35-39"
                    },
                    {
                        "range": {
                            "to": 44,
                            "from": 40
                        },
                        "label": "Y40-44"
                    },
                    {
                        "range": {
                            "to": 49,
                            "from": 45
                        },
                        "label": "Y45-49"
                    },
                    {
                        "range": {
                            "to": 54,
                            "from": 50
                        },
                        "label": "Y50-54"
                    },
                    {
                        "range": {
                            "to": 59,
                            "from": 55
                        },
                        "label": "Y55-59"
                    },
                    {
                        "range": {
                            "to": 64,
                            "from": 60
                        },
                        "label": "Y60-64"
                    },
                    {
                        "range": {
                            "to": 69,
                            "from": 65
                        },
                        "label": "Y65-69"
                    },
                    {
                        "range": {
                            "to": 74,
                            "from": 70
                        },
                        "label": "Y70-74"
                    },
                    {
                        "range": {
                            "to": 120,
                            "from": 75
                        },
                        "label": "Y_GE75"
                    }
                ],
                "type": "ranges"
            }
        },
        {
            "to": "isced97",
            "from": "EDLEV10",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            -9,
                            -8,
                            -6
                        ],
                        "label": "UNK"
                    },
                    {
                        "cases": [
                            1
                        ],
                        "label": "ED5_6"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "ED3"
                    },
                    {
                        "cases": [
                            3
                        ],
                        "label": "ED2"
                    },
                    {
                        "cases": [
                            4
                        ],
                        "label": "ED0_1"
                    }
                ]
            }
        }
    ],
    "micro_data": {
        "columns": [
            "Sex",
            "age",
            "EDLEV10",
            "GREARN"
        ],
        "table": "Ghs06client.tab"
    },
    "marginal_region": "UKC12 ",
    "output": {
        "columns": [
            "Sex",
            "age",
            "GRIND"
        ],
        "file_name": "out_UKC12"
    },
    "marginal_tables": [
        {
            "columns": [
                "isced97"
            ],
            "table": "edu_table.csv"
        },
        {
            "columns": [
                "age",
                "sex"
            ],
            "table": "pop_table.csv"
        }
    ]
}
EOF

cat << EOF > task_2.json
{
    "mappings": [
        {
            "to": "sex",
            "from": "Sex",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            1
                        ],
                        "label": "M"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "F"
                    }
                ]
            }
        },
        {
            "to": "age",
            "from": "age",
            "mapping": {
                "ranges": [
                    {
                        "range": {
                            "to": 14,
                            "from": 0
                        },
                        "label": "Y_LT15"
                    },
                    {
                        "range": {
                            "to": 19,
                            "from": 15
                        },
                        "label": "Y15-19"
                    },
                    {
                        "range": {
                            "to": 24,
                            "from": 20
                        },
                        "label": "Y20-24"
                    },
                    {
                        "range": {
                            "to": 29,
                            "from": 25
                        },
                        "label": "Y25-29"
                    },
                    {
                        "range": {
                            "to": 34,
                            "from": 30
                        },
                        "label": "Y30-34"
                    },
                    {
                        "range": {
                            "to": 39,
                            "from": 35
                        },
                        "label": "Y35-39"
                    },
                    {
                        "range": {
                            "to": 44,
                            "from": 40
                        },
                        "label": "Y40-44"
                    },
                    {
                        "range": {
                            "to": 49,
                            "from": 45
                        },
                        "label": "Y45-49"
                    },
                    {
                        "range": {
                            "to": 54,
                            "from": 50
                        },
                        "label": "Y50-54"
                    },
                    {
                        "range": {
                            "to": 59,
                            "from": 55
                        },
                        "label": "Y55-59"
                    },
                    {
                        "range": {
                            "to": 64,
                            "from": 60
                        },
                        "label": "Y60-64"
                    },
                    {
                        "range": {
                            "to": 69,
                            "from": 65
                        },
                        "label": "Y65-69"
                    },
                    {
                        "range": {
                            "to": 74,
                            "from": 70
                        },
                        "label": "Y70-74"
                    },
                    {
                        "range": {
                            "to": 120,
                            "from": 75
                        },
                        "label": "Y_GE75"
                    }
                ],
                "type": "ranges"
            }
        },
        {
            "to": "isced97",
            "from": "EDLEV10",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            -9,
                            -8,
                            -6
                        ],
                        "label": "UNK"
                    },
                    {
                        "cases": [
                            1
                        ],
                        "label": "ED5_6"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "ED3"
                    },
                    {
                        "cases": [
                            3
                        ],
                        "label": "ED2"
                    },
                    {
                        "cases": [
                            4
                        ],
                        "label": "ED0_1"
                    }
                ]
            }
        }
    ],
    "micro_data": {
        "columns": [
            "Sex",
            "age",
            "EDLEV10",
            "GREARN"
        ],
        "table": "Ghs06client.tab"
    },
    "marginal_region": "UKC13 ",
    "output": {
        "columns": [
            "Sex",
            "age",
            "GRIND"
        ],
        "file_name": "out_UKC13"
    },
    "marginal_tables": [
        {
            "columns": [
                "isced97"
            ],
            "table": "edu_table.csv"
        },
        {
            "columns": [
                "age",
                "sex"
            ],
            "table": "pop_table.csv"
        }
    ]
}
EOF

cat << EOF > task_3.json
{
    "mappings": [
        {
            "to": "sex",
            "from": "Sex",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            1
                        ],
                        "label": "M"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "F"
                    }
                ]
            }
        },
        {
            "to": "age",
            "from": "age",
            "mapping": {
                "ranges": [
                    {
                        "range": {
                            "to": 14,
                            "from": 0
                        },
                        "label": "Y_LT15"
                    },
                    {
                        "range": {
                            "to": 19,
                            "from": 15
                        },
                        "label": "Y15-19"
                    },
                    {
                        "range": {
                            "to": 24,
                            "from": 20
                        },
                        "label": "Y20-24"
                    },
                    {
                        "range": {
                            "to": 29,
                            "from": 25
                        },
                        "label": "Y25-29"
                    },
                    {
                        "range": {
                            "to": 34,
                            "from": 30
                        },
                        "label": "Y30-34"
                    },
                    {
                        "range": {
                            "to": 39,
                            "from": 35
                        },
                        "label": "Y35-39"
                    },
                    {
                        "range": {
                            "to": 44,
                            "from": 40
                        },
                        "label": "Y40-44"
                    },
                    {
                        "range": {
                            "to": 49,
                            "from": 45
                        },
                        "label": "Y45-49"
                    },
                    {
                        "range": {
                            "to": 54,
                            "from": 50
                        },
                        "label": "Y50-54"
                    },
                    {
                        "range": {
                            "to": 59,
                            "from": 55
                        },
                        "label": "Y55-59"
                    },
                    {
                        "range": {
                            "to": 64,
                            "from": 60
                        },
                        "label": "Y60-64"
                    },
                    {
                        "range": {
                            "to": 69,
                            "from": 65
                        },
                        "label": "Y65-69"
                    },
                    {
                        "range": {
                            "to": 74,
                            "from": 70
                        },
                        "label": "Y70-74"
                    },
                    {
                        "range": {
                            "to": 120,
                            "from": 75
                        },
                        "label": "Y_GE75"
                    }
                ],
                "type": "ranges"
            }
        },
        {
            "to": "isced97",
            "from": "EDLEV10",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            -9,
                            -8,
                            -6
                        ],
                        "label": "UNK"
                    },
                    {
                        "cases": [
                            1
                        ],
                        "label": "ED5_6"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "ED3"
                    },
                    {
                        "cases": [
                            3
                        ],
                        "label": "ED2"
                    },
                    {
                        "cases": [
                            4
                        ],
                        "label": "ED0_1"
                    }
                ]
            }
        }
    ],
    "micro_data": {
        "columns": [
            "Sex",
            "age",
            "EDLEV10",
            "GREARN"
        ],
        "table": "Ghs06client.tab"
    },
    "marginal_region": "UKC14 ",
    "output": {
        "columns": [
            "Sex",
            "age",
            "GRIND"
        ],
        "file_name": "out_UKC14"
    },
    "marginal_tables": [
        {
            "columns": [
                "isced97"
            ],
            "table": "edu_table.csv"
        },
        {
            "columns": [
                "age",
                "sex"
            ],
            "table": "pop_table.csv"
        }
    ]
}
EOF

cat << EOF > task_4.json
{
    "mappings": [
        {
            "to": "sex",
            "from": "Sex",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            1
                        ],
                        "label": "M"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "F"
                    }
                ]
            }
        },
        {
            "to": "age",
            "from": "age",
            "mapping": {
                "ranges": [
                    {
                        "range": {
                            "to": 14,
                            "from": 0
                        },
                        "label": "Y_LT15"
                    },
                    {
                        "range": {
                            "to": 19,
                            "from": 15
                        },
                        "label": "Y15-19"
                    },
                    {
                        "range": {
                            "to": 24,
                            "from": 20
                        },
                        "label": "Y20-24"
                    },
                    {
                        "range": {
                            "to": 29,
                            "from": 25
                        },
                        "label": "Y25-29"
                    },
                    {
                        "range": {
                            "to": 34,
                            "from": 30
                        },
                        "label": "Y30-34"
                    },
                    {
                        "range": {
                            "to": 39,
                            "from": 35
                        },
                        "label": "Y35-39"
                    },
                    {
                        "range": {
                            "to": 44,
                            "from": 40
                        },
                        "label": "Y40-44"
                    },
                    {
                        "range": {
                            "to": 49,
                            "from": 45
                        },
                        "label": "Y45-49"
                    },
                    {
                        "range": {
                            "to": 54,
                            "from": 50
                        },
                        "label": "Y50-54"
                    },
                    {
                        "range": {
                            "to": 59,
                            "from": 55
                        },
                        "label": "Y55-59"
                    },
                    {
                        "range": {
                            "to": 64,
                            "from": 60
                        },
                        "label": "Y60-64"
                    },
                    {
                        "range": {
                            "to": 69,
                            "from": 65
                        },
                        "label": "Y65-69"
                    },
                    {
                        "range": {
                            "to": 74,
                            "from": 70
                        },
                        "label": "Y70-74"
                    },
                    {
                        "range": {
                            "to": 120,
                            "from": 75
                        },
                        "label": "Y_GE75"
                    }
                ],
                "type": "ranges"
            }
        },
        {
            "to": "isced97",
            "from": "EDLEV10",
            "mapping": {
                "type": "enum",
                "enum": [
                    {
                        "cases": [
                            -9,
                            -8,
                            -6
                        ],
                        "label": "UNK"
                    },
                    {
                        "cases": [
                            1
                        ],
                        "label": "ED5_6"
                    },
                    {
                        "cases": [
                            2
                        ],
                        "label": "ED3"
                    },
                    {
                        "cases": [
                            3
                        ],
                        "label": "ED2"
                    },
                    {
                        "cases": [
                            4
                        ],
                        "label": "ED0_1"
                    }
                ]
            }
        }
    ],
    "micro_data": {
        "columns": [
            "Sex",
            "age",
            "EDLEV10",
            "GREARN"
        ],
        "table": "Ghs06client.tab"
    },
    "marginal_region": "UKC21 ",
    "output": {
        "columns": [
            "Sex",
            "age",
            "GRIND"
        ],
        "file_name": "out_UKC21"
    },
    "marginal_tables": [
        {
            "columns": [
                "isced97"
            ],
            "table": "edu_table.csv"
        },
        {
            "columns": [
                "age",
                "sex"
            ],
            "table": "pop_table.csv"
        }
    ]
}
EOF

cat << EOF > run_tasks.sh
#!/bin/bash -l

#SBATCH -p fast
#PBS -l nodes=1:ppn=1
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#PBS -l walltime=60
#SBATCH -t 00:01

cp /home/users/palka/dslp_runtime/task.json .
cp /home/users/palka/dslp_runtime/pop_table.csv .
cp /home/users/palka/dslp_runtime/edu_table.csv .

module load python

for I in {0..4}; do
  python3 /home/users/palka/dslp_runtime/dslp_runtime.py task_\$I.json; done
EOF


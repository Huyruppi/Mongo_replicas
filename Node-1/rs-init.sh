#!/bin/bash

mongo <<EOF
var config = {
    "_id": "cqstation",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "10.11.5.5:27017",
            "priority": 2
        },
        {
            "_id": 2,
            "host": "10.11.5.6:27017",
            "priority": 1
        }
    ]
};
rs.initiate(config, { force: true });
rs.status();
EOF

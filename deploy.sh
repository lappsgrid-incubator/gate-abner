#!/usr/bin/env bash

source ~/.passphrases

mvn package javadoc:jar source:jar deploy -Prelease -Dgpg.passphrase="$PGP_PASSPHRASE"

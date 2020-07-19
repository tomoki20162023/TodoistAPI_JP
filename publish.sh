#!/usr/bin/env bash
# -*- coding: utf8 -*-

target=translation_project/target
for api in Sync_API REST_API;
do
	for f in $(ls -1 ${target}/${api}/);
	do
		t=${f%.txt}
		cp -v ${target}/${api}/${f} ${api}/${t}
	done
done


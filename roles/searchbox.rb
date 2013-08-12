#
# Copyright (c) 2013 Charles H Martin, PhD
#  
#  Calculated Content 
#  http://calculatedcontent.com
#  charles@calculatedcontent.com
#
name "searchbox"
description "Search Box for stuff"
run_list "recipe[apt]","recipe[build-essential]","recipe[git]","recipe[sinatra_app]","recipe[searchbox]","recipe[chef-client]"
default_attributes({ "searchbox" => { "node_type" => "worker" } })


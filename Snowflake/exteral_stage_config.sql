--Create a database to store our schema
create database if not exists external_access_new;

--Create the schema. The schema stores all our objects
create schema if not exists external_access_new.api;


use database external_access_new;
use schema api;


create or replace network rule mb_network_rule_march_24_new
    mode = egress
    type = host_port
    value_list = ('dev.mindbridge.ai');

use role accountadmin;

create or replace external access integration mb_access_integration_march_24_new
    allowed_network_rules = (mb_network_rule_march_24_new)
    enabled = true;
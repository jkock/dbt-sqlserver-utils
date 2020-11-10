{# string  -------------------------------------------------     #}

{% macro type_string(n=200) %}
  {{ adapter_macro('dbt_utils_sqlserver.type_string', n) }}
{% endmacro %}

{% macro default__type_string(n) %}
    string
{% endmacro %}

{% macro sqlserver__type_string(n=200) %}
    varchar({{ n }})
{% endmacro %}

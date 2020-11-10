{% macro sqlserver__hash(field) -%}
    CONVERT(VARCHAR(32), HashBytes('MD5',  coalesce(cast({{field}} as varchar(200) ), '')), 2)
{%- endmacro %}

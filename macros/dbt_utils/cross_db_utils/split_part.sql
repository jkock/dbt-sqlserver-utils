{% macro sqlserver__split_part(string_text, delimiter_text, part_number) %}

    LTRIM(CAST(('<X>'+REPLACE({{ string_text }},{{ delimiter_text }} ,'</X><X>')+'</X>') AS XML).value('(/X)[{{ part_number }}]', 'varchar(128)'))

{% endmacro %}

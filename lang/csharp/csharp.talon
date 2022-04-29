tag: user.csharp
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_line
tag(): user.code_comment_block_c_like
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_libraries
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math
tag(): user.code_operators_pointer

settings():
    user.code_private_function_formatter = "PUBLIC_CAMEL_CASE"
    user.code_protected_function_formatter = "PUBLIC_CAMEL_CASE"
    user.code_public_function_formatter = "PUBLIC_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PUBLIC_CAMEL_CASE"
    user.code_public_variable_formatter = "PUBLIC_CAMEL_CASE"

op new:
    insert("new ")

state interface:
    insert("interface ")

[state] {user.csharp_modifier}:
    insert(user.csharp_modifier + " ")

as property: 
    insert(" {{ get; }}")

as public property:
    insert(" {{ get; set; }}")

as private property:
    insert(" {{ get; private set; }}")

generic [type] {user.csharp_generic_data_structure}:
    user.insert_between(csharp_generic_data_structure + "<", ">")

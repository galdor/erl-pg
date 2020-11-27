%% Copyright (c) 2020 Nicolas Martyanoff <khaelin@gmail.com>.
%%
%% Permission to use, copy, modify, and/or distribute this software for any
%% purpose with or without fee is hereby granted, provided that the above
%% copyright notice and this permission notice appear in all copies.
%%
%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
%% REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
%% AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
%% INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
%% LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
%% OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
%% PERFORMANCE OF THIS SOFTWARE.

-module(pgc_error_codes).

-export([decode/1]).

-export_type([error_code/0]).

-type error_code() :: atom() | binary().

-spec decode(binary()) -> error_code().
decode(<<"00000">>) -> successful_completion;
decode(<<"01000">>) -> warning;
decode(<<"0100C">>) -> dynamic_result_sets_returned;
decode(<<"01008">>) -> implicit_zero_bit_padding;
decode(<<"01003">>) -> null_value_eliminated_in_set_function;
decode(<<"01007">>) -> privilege_not_granted;
decode(<<"01006">>) -> privilege_not_revoked;
decode(<<"01004">>) -> string_data_right_truncation;
decode(<<"01P01">>) -> deprecated_feature;
decode(<<"02000">>) -> no_data;
decode(<<"02001">>) -> no_additional_dynamic_result_sets_returned;
decode(<<"03000">>) -> sql_statement_not_yet_complete;
decode(<<"08000">>) -> connection_exception;
decode(<<"08003">>) -> connection_does_not_exist;
decode(<<"08006">>) -> connection_failure;
decode(<<"08001">>) -> sqlclient_unable_to_establish_sqlconnection;
decode(<<"08004">>) -> sqlserver_rejected_establishment_of_sqlconnection;
decode(<<"08007">>) -> transaction_resolution_unknown;
decode(<<"08P01">>) -> protocol_violation;
decode(<<"09000">>) -> triggered_action_exception;
decode(<<"0A000">>) -> feature_not_supported;
decode(<<"0B000">>) -> invalid_transaction_initiation;
decode(<<"0F000">>) -> locator_exception;
decode(<<"0F001">>) -> invalid_locator_specification;
decode(<<"0L000">>) -> invalid_grantor;
decode(<<"0LP01">>) -> invalid_grant_operation;
decode(<<"0P000">>) -> invalid_role_specification;
decode(<<"0Z000">>) -> diagnostics_exception;
decode(<<"0Z002">>) -> stacked_diagnostics_accessed_without_active_handler;
decode(<<"20000">>) -> case_not_found;
decode(<<"21000">>) -> cardinality_violation;
decode(<<"22000">>) -> data_exception;
decode(<<"2202E">>) -> array_subscript_error;
decode(<<"22021">>) -> character_not_in_repertoire;
decode(<<"22008">>) -> datetime_field_overflow;
decode(<<"22012">>) -> division_by_zero;
decode(<<"22005">>) -> error_in_assignment;
decode(<<"2200B">>) -> escape_character_conflict;
decode(<<"22022">>) -> indicator_overflow;
decode(<<"22015">>) -> interval_field_overflow;
decode(<<"2201E">>) -> invalid_argument_for_logarithm;
decode(<<"22014">>) -> invalid_argument_for_ntile_function;
decode(<<"22016">>) -> invalid_argument_for_nth_value_function;
decode(<<"2201F">>) -> invalid_argument_for_power_function;
decode(<<"2201G">>) -> invalid_argument_for_width_bucket_function;
decode(<<"22018">>) -> invalid_character_value_for_cast;
decode(<<"22007">>) -> invalid_datetime_format;
decode(<<"22019">>) -> invalid_escape_character;
decode(<<"2200D">>) -> invalid_escape_octet;
decode(<<"22025">>) -> invalid_escape_sequence;
decode(<<"22P06">>) -> nonstandard_use_of_escape_character;
decode(<<"22010">>) -> invalid_indicator_parameter_value;
decode(<<"22023">>) -> invalid_parameter_value;
decode(<<"22013">>) -> invalid_preceding_or_following_size;
decode(<<"2201B">>) -> invalid_regular_expression;
decode(<<"2201W">>) -> invalid_row_count_in_limit_clause;
decode(<<"2201X">>) -> invalid_row_count_in_result_offset_clause;
decode(<<"2202H">>) -> invalid_tablesample_argument;
decode(<<"2202G">>) -> invalid_tablesample_repeat;
decode(<<"22009">>) -> invalid_time_zone_displacement_value;
decode(<<"2200C">>) -> invalid_use_of_escape_character;
decode(<<"2200G">>) -> most_specific_type_mismatch;
decode(<<"22004">>) -> null_value_not_allowed;
decode(<<"22002">>) -> null_value_no_indicator_parameter;
decode(<<"22003">>) -> numeric_value_out_of_range;
decode(<<"2200H">>) -> sequence_generator_limit_exceeded;
decode(<<"22026">>) -> string_data_length_mismatch;
decode(<<"22001">>) -> string_data_right_truncation;
decode(<<"22011">>) -> substring_error;
decode(<<"22027">>) -> trim_error;
decode(<<"22024">>) -> unterminated_c_string;
decode(<<"2200F">>) -> zero_length_character_string;
decode(<<"22P01">>) -> floating_point_exception;
decode(<<"22P02">>) -> invalid_text_representation;
decode(<<"22P03">>) -> invalid_binary_representation;
decode(<<"22P04">>) -> bad_copy_file_format;
decode(<<"22P05">>) -> untranslatable_character;
decode(<<"2200L">>) -> not_an_xml_document;
decode(<<"2200M">>) -> invalid_xml_document;
decode(<<"2200N">>) -> invalid_xml_content;
decode(<<"2200S">>) -> invalid_xml_comment;
decode(<<"2200T">>) -> invalid_xml_processing_instruction;
decode(<<"22030">>) -> duplicate_json_object_key_value;
decode(<<"22032">>) -> invalid_json_text;
decode(<<"22033">>) -> invalid_sql_json_subscript;
decode(<<"22034">>) -> more_than_one_sql_json_item;
decode(<<"22035">>) -> no_sql_json_item;
decode(<<"22036">>) -> non_numeric_sql_json_item;
decode(<<"22037">>) -> non_unique_keys_in_a_json_object;
decode(<<"22038">>) -> singleton_sql_json_item_required;
decode(<<"22039">>) -> sql_json_array_not_found;
decode(<<"2203A">>) -> sql_json_member_not_found;
decode(<<"2203B">>) -> sql_json_number_not_found;
decode(<<"2203C">>) -> sql_json_object_not_found;
decode(<<"2203D">>) -> too_many_json_array_elements;
decode(<<"2203E">>) -> too_many_json_object_members;
decode(<<"2203F">>) -> sql_json_scalar_required;
decode(<<"23000">>) -> integrity_constraint_violation;
decode(<<"23001">>) -> restrict_violation;
decode(<<"23502">>) -> not_null_violation;
decode(<<"23503">>) -> foreign_key_violation;
decode(<<"23505">>) -> unique_violation;
decode(<<"23514">>) -> check_violation;
decode(<<"23P01">>) -> exclusion_violation;
decode(<<"24000">>) -> invalid_cursor_state;
decode(<<"25000">>) -> invalid_transaction_state;
decode(<<"25001">>) -> active_sql_transaction;
decode(<<"25002">>) -> branch_transaction_already_active;
decode(<<"25008">>) -> held_cursor_requires_same_isolation_level;
decode(<<"25003">>) -> inappropriate_access_mode_for_branch_transaction;
decode(<<"25004">>) -> inappropriate_isolation_level_for_branch_transaction;
decode(<<"25005">>) -> no_active_sql_transaction_for_branch_transaction;
decode(<<"25006">>) -> read_only_sql_transaction;
decode(<<"25007">>) -> schema_and_data_statement_mixing_not_supported;
decode(<<"25P01">>) -> no_active_sql_transaction;
decode(<<"25P02">>) -> in_failed_sql_transaction;
decode(<<"25P03">>) -> idle_in_transaction_session_timeout;
decode(<<"26000">>) -> invalid_sql_statement_name;
decode(<<"27000">>) -> triggered_data_change_violation;
decode(<<"28000">>) -> invalid_authorization_specification;
decode(<<"28P01">>) -> invalid_password;
decode(<<"2B000">>) -> dependent_privilege_descriptors_still_exist;
decode(<<"2BP01">>) -> dependent_objects_still_exist;
decode(<<"2D000">>) -> invalid_transaction_termination;
decode(<<"2F000">>) -> sql_routine_exception;
decode(<<"2F005">>) -> function_executed_no_return_statement;
decode(<<"2F002">>) -> modifying_sql_data_not_permitted;
decode(<<"2F003">>) -> prohibited_sql_statement_attempted;
decode(<<"2F004">>) -> reading_sql_data_not_permitted;
decode(<<"34000">>) -> invalid_cursor_name;
decode(<<"38000">>) -> external_routine_exception;
decode(<<"38001">>) -> containing_sql_not_permitted;
decode(<<"38002">>) -> modifying_sql_data_not_permitted;
decode(<<"38003">>) -> prohibited_sql_statement_attempted;
decode(<<"38004">>) -> reading_sql_data_not_permitted;
decode(<<"39000">>) -> external_routine_invocation_exception;
decode(<<"39001">>) -> invalid_sqlstate_returned;
decode(<<"39004">>) -> null_value_not_allowed;
decode(<<"39P01">>) -> trigger_protocol_violated;
decode(<<"39P02">>) -> srf_protocol_violated;
decode(<<"39P03">>) -> event_trigger_protocol_violated;
decode(<<"3B000">>) -> savepoint_exception;
decode(<<"3B001">>) -> invalid_savepoint_specification;
decode(<<"3D000">>) -> invalid_catalog_name;
decode(<<"3F000">>) -> invalid_schema_name;
decode(<<"40000">>) -> transaction_rollback;
decode(<<"40002">>) -> transaction_integrity_constraint_violation;
decode(<<"40001">>) -> serialization_failure;
decode(<<"40003">>) -> statement_completion_unknown;
decode(<<"40P01">>) -> deadlock_detected;
decode(<<"42000">>) -> syntax_error_or_access_rule_violation;
decode(<<"42601">>) -> syntax_error;
decode(<<"42501">>) -> insufficient_privilege;
decode(<<"42846">>) -> cannot_coerce;
decode(<<"42803">>) -> grouping_error;
decode(<<"42P20">>) -> windowing_error;
decode(<<"42P19">>) -> invalid_recursion;
decode(<<"42830">>) -> invalid_foreign_key;
decode(<<"42602">>) -> invalid_name;
decode(<<"42622">>) -> name_too_long;
decode(<<"42939">>) -> reserved_name;
decode(<<"42804">>) -> datatype_mismatch;
decode(<<"42P18">>) -> indeterminate_datatype;
decode(<<"42P21">>) -> collation_mismatch;
decode(<<"42P22">>) -> indeterminate_collation;
decode(<<"42809">>) -> wrong_object_type;
decode(<<"428C9">>) -> generated_always;
decode(<<"42703">>) -> undefined_column;
decode(<<"42883">>) -> undefined_function;
decode(<<"42P01">>) -> undefined_table;
decode(<<"42P02">>) -> undefined_parameter;
decode(<<"42704">>) -> undefined_object;
decode(<<"42701">>) -> duplicate_column;
decode(<<"42P03">>) -> duplicate_cursor;
decode(<<"42P04">>) -> duplicate_database;
decode(<<"42723">>) -> duplicate_function;
decode(<<"42P05">>) -> duplicate_prepared_statement;
decode(<<"42P06">>) -> duplicate_schema;
decode(<<"42P07">>) -> duplicate_table;
decode(<<"42712">>) -> duplicate_alias;
decode(<<"42710">>) -> duplicate_object;
decode(<<"42702">>) -> ambiguous_column;
decode(<<"42725">>) -> ambiguous_function;
decode(<<"42P08">>) -> ambiguous_parameter;
decode(<<"42P09">>) -> ambiguous_alias;
decode(<<"42P10">>) -> invalid_column_reference;
decode(<<"42611">>) -> invalid_column_definition;
decode(<<"42P11">>) -> invalid_cursor_definition;
decode(<<"42P12">>) -> invalid_database_definition;
decode(<<"42P13">>) -> invalid_function_definition;
decode(<<"42P14">>) -> invalid_prepared_statement_definition;
decode(<<"42P15">>) -> invalid_schema_definition;
decode(<<"42P16">>) -> invalid_table_definition;
decode(<<"42P17">>) -> invalid_object_definition;
decode(<<"44000">>) -> with_check_option_violation;
decode(<<"53000">>) -> insufficient_resources;
decode(<<"53100">>) -> disk_full;
decode(<<"53200">>) -> out_of_memory;
decode(<<"53300">>) -> too_many_connections;
decode(<<"53400">>) -> configuration_limit_exceeded;
decode(<<"54000">>) -> program_limit_exceeded;
decode(<<"54001">>) -> statement_too_complex;
decode(<<"54011">>) -> too_many_columns;
decode(<<"54023">>) -> too_many_arguments;
decode(<<"55000">>) -> object_not_in_prerequisite_state;
decode(<<"55006">>) -> object_in_use;
decode(<<"55P02">>) -> cant_change_runtime_param;
decode(<<"55P03">>) -> lock_not_available;
decode(<<"55P04">>) -> unsafe_new_enum_value_usage;
decode(<<"57000">>) -> operator_intervention;
decode(<<"57014">>) -> query_canceled;
decode(<<"57P01">>) -> admin_shutdown;
decode(<<"57P02">>) -> crash_shutdown;
decode(<<"57P03">>) -> cannot_connect_now;
decode(<<"57P04">>) -> database_dropped;
decode(<<"58000">>) -> system_error;
decode(<<"58030">>) -> io_error;
decode(<<"58P01">>) -> undefined_file;
decode(<<"58P02">>) -> duplicate_file;
decode(<<"72000">>) -> snapshot_too_old;
decode(<<"F0000">>) -> config_file_error;
decode(<<"F0001">>) -> lock_file_exists;
decode(<<"HV000">>) -> fdw_error;
decode(<<"HV005">>) -> fdw_column_name_not_found;
decode(<<"HV002">>) -> fdw_dynamic_parameter_value_needed;
decode(<<"HV010">>) -> fdw_function_sequence_error;
decode(<<"HV021">>) -> fdw_inconsistent_descriptor_information;
decode(<<"HV024">>) -> fdw_invalid_attribute_value;
decode(<<"HV007">>) -> fdw_invalid_column_name;
decode(<<"HV008">>) -> fdw_invalid_column_number;
decode(<<"HV004">>) -> fdw_invalid_data_type;
decode(<<"HV006">>) -> fdw_invalid_data_type_descriptors;
decode(<<"HV091">>) -> fdw_invalid_descriptor_field_identifier;
decode(<<"HV00B">>) -> fdw_invalid_handle;
decode(<<"HV00C">>) -> fdw_invalid_option_index;
decode(<<"HV00D">>) -> fdw_invalid_option_name;
decode(<<"HV090">>) -> fdw_invalid_string_length_or_buffer_length;
decode(<<"HV00A">>) -> fdw_invalid_string_format;
decode(<<"HV009">>) -> fdw_invalid_use_of_null_pointer;
decode(<<"HV014">>) -> fdw_too_many_handles;
decode(<<"HV001">>) -> fdw_out_of_memory;
decode(<<"HV00P">>) -> fdw_no_schemas;
decode(<<"HV00J">>) -> fdw_option_name_not_found;
decode(<<"HV00K">>) -> fdw_reply_handle;
decode(<<"HV00Q">>) -> fdw_schema_not_found;
decode(<<"HV00R">>) -> fdw_table_not_found;
decode(<<"HV00L">>) -> fdw_unable_to_create_execution;
decode(<<"HV00M">>) -> fdw_unable_to_create_reply;
decode(<<"HV00N">>) -> fdw_unable_to_establish_connection;
decode(<<"P0000">>) -> plpgsql_error;
decode(<<"P0001">>) -> raise_exception;
decode(<<"P0002">>) -> no_data_found;
decode(<<"P0003">>) -> too_many_rows;
decode(<<"P0004">>) -> assert_failure;
decode(<<"XX000">>) -> internal_error;
decode(<<"XX001">>) -> data_corrupted;
decode(<<"XX002">>) -> index_corrupted;
decode(Bin) ->
  Bin.
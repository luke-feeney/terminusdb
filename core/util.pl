:- module(util, [
              % syntax.pl
              % hmm is this right?
              op(601, xfx, @),
              op(601, xfx, ^^),

              % file_utils.pl
              terminus_path/1,
              db_path/1,
              touch/1,
              ensure_directory/1,
              sanitise_file_name/2,
              subdirectories/2,
              files/2,
              directories/2,
              terminus_schema_path/1,
              file_to_predicate/2,

              % types.pl
              is_literal/1,
              is_uri/1,
              is_id/1,
              is_bnode/1,
              is_prefixed_uri/1,
              is_uri_or_id/1,
              is_object/1,
              is_object_or_id/1,
              is_graph_identifier/1,
              is_prefix_db/1,
              is_database_identifier/1,
              is_empty_graph_name/1,
              is_database/1,
              is_read_obj/1,
              is_write_obj/1,

              % remote_file.pl
              copy_remote/4,

              % utils.pl
              escape_pcre/2,
              get_key/4,
              get_key/3,
              getenv_number/2,
              getenv_default/3,
              getenv_default_number/3,
              get_dict_default/4,
              zip/3,
              intersperse/3,
              interpolate/2,
              interpolate_string/2,
              unique_solutions/3,
              repeat_term/3,
              zero_pad/3,
              pad/4,
              coerce_number/2,
              exhaust/1,
              take/3,
              from_to/4,
              drop/3,
              truncate_list/4,
              sfoldr/4,
              foldm/6,
              mapm/4,
              mapm/5,
              mapm/6,
              exists/2,
              find/3,
              trim/2,
              split_atom/3,
              pattern_string_split/3,
              merge_separator_split/3,
              count/3,
              merge_dictionaries/3,
              command/1,
              coerce_literal_string/2,
              coerce_atom/2,
              coerce_string/2,
              xfy_list/3,
              yfx_list/3,
              snoc/3,
              join/3,
              op(920,fy, *),
              '*'/1,
              op(700,xfy,<>),
              '<>'/2,
              do_or_die/2,
              whole_arg/2,
              random_string/1,
              uri_has_prefix/1,
              uri_has_protocol/1,
              choice_points/1,
              sol_bag/2,
              sol_set/2,
              optional/1,
              member_last/3,

              % speculative_parse.pl
              guess_date/2,
              guess_number/2,
              guess_integer/2,
              guess_integer_range/2,
              guess_decimal_range/2,

              % xsd_parser.pl
              digit//1,
              oneDigitNatural//1,
              twoDigitNatural//1,
              threeDigitNatural//1,
              decimal//1,
              digits//1,
              integer//1,
              double//3,
              positiveInteger//1,
              negativeInteger//1,
              nonPositiveInteger//1,
              nonNegativeInteger//1,
              unsignedDecimal//1,
              year//1,
              date//6,
              dateTime//9,
              gYear//4,
              gYearMonth//5,
              gMonth//4,
              gMonthDay//5,
              gDay//4,
              duration//7,
              yearMonthDuration//3,
              dayTimeDuration//5,
              string/3,
              base64Binary//0,
              language//0,
              whitespace//0,
              anyBut//1,
              time//6,
              coordinatePolygon//1,
              dateRange//2,
              decimalRange//2,
              email//0,
              gYearRange//2,
              integerRange//2,
              point//2,
              url//0,

              % benchmark.pl
              benchmark_start/1,
              benchmark_stop/0,
              benchmark_subject_start/1,
              benchmark_subject_stop/1,
              benchmark/1,
              benchmark/0,

              % http_utils.pl
              basic_authorization/3,
              is_local_https/1

          ]).

% note: test_utils is intentionally omitted
:- use_module(util/syntax).
:- use_module(util/file_utils).
:- use_module(util/types).
:- use_module(util/remote_file).
:- use_module(util/utils).
:- use_module(util/speculative_parse).
:- use_module(util/xsd_parser).
:- use_module(util/benchmark).
:- use_module(util/http_utils).

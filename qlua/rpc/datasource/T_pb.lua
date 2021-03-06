-- Generated by protobuf; do not edit
local module = {}
local protobuf = require 'protobuf'


module.REQUEST = protobuf.Descriptor()
module.REQUEST_DATASOURCE_UUID_FIELD = protobuf.FieldDescriptor()
module.REQUEST_CANDLE_INDEX_FIELD = protobuf.FieldDescriptor()
module.RESULT = protobuf.Descriptor()
module.RESULT_YEAR_FIELD = protobuf.FieldDescriptor()
module.RESULT_MONTH_FIELD = protobuf.FieldDescriptor()
module.RESULT_DAY_FIELD = protobuf.FieldDescriptor()
module.RESULT_WEEK_DAY_FIELD = protobuf.FieldDescriptor()
module.RESULT_HOUR_FIELD = protobuf.FieldDescriptor()
module.RESULT_MIN_FIELD = protobuf.FieldDescriptor()
module.RESULT_SEC_FIELD = protobuf.FieldDescriptor()
module.RESULT_MS_FIELD = protobuf.FieldDescriptor()
module.RESULT_COUNT_FIELD = protobuf.FieldDescriptor()

module.REQUEST_DATASOURCE_UUID_FIELD.name = 'datasource_uuid'
module.REQUEST_DATASOURCE_UUID_FIELD.full_name = '.qlua.rpc.datasource.T.Request.datasource_uuid'
module.REQUEST_DATASOURCE_UUID_FIELD.number = 1
module.REQUEST_DATASOURCE_UUID_FIELD.index = 0
module.REQUEST_DATASOURCE_UUID_FIELD.label = 1
module.REQUEST_DATASOURCE_UUID_FIELD.has_default_value = false
module.REQUEST_DATASOURCE_UUID_FIELD.default_value = ''
module.REQUEST_DATASOURCE_UUID_FIELD.type = 9
module.REQUEST_DATASOURCE_UUID_FIELD.cpp_type = 9

module.REQUEST_CANDLE_INDEX_FIELD.name = 'candle_index'
module.REQUEST_CANDLE_INDEX_FIELD.full_name = '.qlua.rpc.datasource.T.Request.candle_index'
module.REQUEST_CANDLE_INDEX_FIELD.number = 2
module.REQUEST_CANDLE_INDEX_FIELD.index = 1
module.REQUEST_CANDLE_INDEX_FIELD.label = 1
module.REQUEST_CANDLE_INDEX_FIELD.has_default_value = false
module.REQUEST_CANDLE_INDEX_FIELD.default_value = 0
module.REQUEST_CANDLE_INDEX_FIELD.type = 5
module.REQUEST_CANDLE_INDEX_FIELD.cpp_type = 1

module.REQUEST.name = 'Request'
module.REQUEST.full_name = '.qlua.rpc.datasource.T.Request'
module.REQUEST.nested_types = {}
module.REQUEST.enum_types = {}
module.REQUEST.fields = {module.REQUEST_DATASOURCE_UUID_FIELD, module.REQUEST_CANDLE_INDEX_FIELD}
module.REQUEST.is_extendable = false
module.REQUEST.extensions = {}
module.RESULT_YEAR_FIELD.name = 'year'
module.RESULT_YEAR_FIELD.full_name = '.qlua.rpc.datasource.T.Result.year'
module.RESULT_YEAR_FIELD.number = 1
module.RESULT_YEAR_FIELD.index = 0
module.RESULT_YEAR_FIELD.label = 1
module.RESULT_YEAR_FIELD.has_default_value = false
module.RESULT_YEAR_FIELD.default_value = 0
module.RESULT_YEAR_FIELD.type = 5
module.RESULT_YEAR_FIELD.cpp_type = 1

module.RESULT_MONTH_FIELD.name = 'month'
module.RESULT_MONTH_FIELD.full_name = '.qlua.rpc.datasource.T.Result.month'
module.RESULT_MONTH_FIELD.number = 2
module.RESULT_MONTH_FIELD.index = 1
module.RESULT_MONTH_FIELD.label = 1
module.RESULT_MONTH_FIELD.has_default_value = false
module.RESULT_MONTH_FIELD.default_value = 0
module.RESULT_MONTH_FIELD.type = 5
module.RESULT_MONTH_FIELD.cpp_type = 1

module.RESULT_DAY_FIELD.name = 'day'
module.RESULT_DAY_FIELD.full_name = '.qlua.rpc.datasource.T.Result.day'
module.RESULT_DAY_FIELD.number = 3
module.RESULT_DAY_FIELD.index = 2
module.RESULT_DAY_FIELD.label = 1
module.RESULT_DAY_FIELD.has_default_value = false
module.RESULT_DAY_FIELD.default_value = 0
module.RESULT_DAY_FIELD.type = 5
module.RESULT_DAY_FIELD.cpp_type = 1

module.RESULT_WEEK_DAY_FIELD.name = 'week_day'
module.RESULT_WEEK_DAY_FIELD.full_name = '.qlua.rpc.datasource.T.Result.week_day'
module.RESULT_WEEK_DAY_FIELD.number = 4
module.RESULT_WEEK_DAY_FIELD.index = 3
module.RESULT_WEEK_DAY_FIELD.label = 1
module.RESULT_WEEK_DAY_FIELD.has_default_value = false
module.RESULT_WEEK_DAY_FIELD.default_value = 0
module.RESULT_WEEK_DAY_FIELD.type = 5
module.RESULT_WEEK_DAY_FIELD.cpp_type = 1

module.RESULT_HOUR_FIELD.name = 'hour'
module.RESULT_HOUR_FIELD.full_name = '.qlua.rpc.datasource.T.Result.hour'
module.RESULT_HOUR_FIELD.number = 5
module.RESULT_HOUR_FIELD.index = 4
module.RESULT_HOUR_FIELD.label = 1
module.RESULT_HOUR_FIELD.has_default_value = false
module.RESULT_HOUR_FIELD.default_value = 0
module.RESULT_HOUR_FIELD.type = 5
module.RESULT_HOUR_FIELD.cpp_type = 1

module.RESULT_MIN_FIELD.name = 'min'
module.RESULT_MIN_FIELD.full_name = '.qlua.rpc.datasource.T.Result.min'
module.RESULT_MIN_FIELD.number = 6
module.RESULT_MIN_FIELD.index = 5
module.RESULT_MIN_FIELD.label = 1
module.RESULT_MIN_FIELD.has_default_value = false
module.RESULT_MIN_FIELD.default_value = 0
module.RESULT_MIN_FIELD.type = 5
module.RESULT_MIN_FIELD.cpp_type = 1

module.RESULT_SEC_FIELD.name = 'sec'
module.RESULT_SEC_FIELD.full_name = '.qlua.rpc.datasource.T.Result.sec'
module.RESULT_SEC_FIELD.number = 7
module.RESULT_SEC_FIELD.index = 6
module.RESULT_SEC_FIELD.label = 1
module.RESULT_SEC_FIELD.has_default_value = false
module.RESULT_SEC_FIELD.default_value = 0
module.RESULT_SEC_FIELD.type = 5
module.RESULT_SEC_FIELD.cpp_type = 1

module.RESULT_MS_FIELD.name = 'ms'
module.RESULT_MS_FIELD.full_name = '.qlua.rpc.datasource.T.Result.ms'
module.RESULT_MS_FIELD.number = 8
module.RESULT_MS_FIELD.index = 7
module.RESULT_MS_FIELD.label = 1
module.RESULT_MS_FIELD.has_default_value = false
module.RESULT_MS_FIELD.default_value = 0
module.RESULT_MS_FIELD.type = 5
module.RESULT_MS_FIELD.cpp_type = 1

module.RESULT_COUNT_FIELD.name = 'count'
module.RESULT_COUNT_FIELD.full_name = '.qlua.rpc.datasource.T.Result.count'
module.RESULT_COUNT_FIELD.number = 9
module.RESULT_COUNT_FIELD.index = 8
module.RESULT_COUNT_FIELD.label = 1
module.RESULT_COUNT_FIELD.has_default_value = false
module.RESULT_COUNT_FIELD.default_value = 0
module.RESULT_COUNT_FIELD.type = 5
module.RESULT_COUNT_FIELD.cpp_type = 1

module.RESULT.name = 'Result'
module.RESULT.full_name = '.qlua.rpc.datasource.T.Result'
module.RESULT.nested_types = {}
module.RESULT.enum_types = {}
module.RESULT.fields = {module.RESULT_YEAR_FIELD, module.RESULT_MONTH_FIELD, module.RESULT_DAY_FIELD, module.RESULT_WEEK_DAY_FIELD, module.RESULT_HOUR_FIELD, module.RESULT_MIN_FIELD, module.RESULT_SEC_FIELD, module.RESULT_MS_FIELD, module.RESULT_COUNT_FIELD}
module.RESULT.is_extendable = false
module.RESULT.extensions = {}

module.Request = protobuf.Message(module.REQUEST)
module.Result = protobuf.Message(module.RESULT)


module.MESSAGE_TYPES = {'Request','Result'}
module.ENUM_TYPES = {}

return module


local function get_shared_lib_extension()
    local os = jit.os:lower()
    if os == 'osx' or os == 'mac' then
        return '.dylib'
    elseif os == 'windows' then
        return '.dll'
    else
      return '.so'
    end
end

-- Code generated by Rust Lua interface. DO NOT EDIT.

    local ffi = require("ffi")

    ffi.cdef[[
    


typedef struct {
    const char * *ptr;
    size_t len;
    size_t capacity;
} blink_cmp_fuzzy__Vec___string_ptr;
typedef struct {
    const blink_cmp_fuzzy__Vec___string_ptr *ptr;
} blink_cmp_fuzzy__Option_Vec___string_ptr;

typedef struct {
    const int32_t *ptr;
} blink_cmp_fuzzy__Option_int32_t;



            typedef struct {
                    const int8_t use_frecency;
    const blink_cmp_fuzzy__Option_Vec___string_ptr nearby_words;
    const uint16_t min_score;
    const size_t max_items;
    const blink_cmp_fuzzy__Vec___string_ptr sorts;
            } blink_cmp_fuzzy__FuzzyOptions;
            

typedef struct {
    const uint32_t *ptr;
    size_t len;
    size_t capacity;
} blink_cmp_fuzzy__Vec_uint32_t;
typedef struct {
    const char * *ptr;
} blink_cmp_fuzzy__Option___string_ptr;

            typedef struct {
                    const char * label;
    const blink_cmp_fuzzy__Option___string_ptr sort_text;
    const blink_cmp_fuzzy__Option___string_ptr filter_text;
    const uint32_t kind;
    const blink_cmp_fuzzy__Option_int32_t score_offset;
    const char * source;
            } blink_cmp_fuzzy__LspItem;
            
typedef struct {
    const int32_t *ptr;
    size_t len;
    size_t capacity;
} blink_cmp_fuzzy__Vec_int32_t;
int32_t init_db(
        const char *,
    int8_t*);
int32_t __gc_init_db(
        int8_t);
int32_t destroy_db(
        int8_t*);
int32_t __gc_destroy_db(
        int8_t);
int32_t access(
        const blink_cmp_fuzzy__LspItem*,
    int8_t*);
int32_t __gc_access(
        int8_t);
int32_t fuzzy(
        const char *,
    const blink_cmp_fuzzy__Vec___string_ptr*,
    const blink_cmp_fuzzy__Vec_uint32_t*,
    const blink_cmp_fuzzy__Vec_int32_t*,
    const blink_cmp_fuzzy__Vec___string_ptr*,
    const blink_cmp_fuzzy__FuzzyOptions*,
    blink_cmp_fuzzy__Vec_uint32_t**);
int32_t __gc_fuzzy(
        blink_cmp_fuzzy__Vec_uint32_t*);
int32_t get_words(
        const char *,
    blink_cmp_fuzzy__Vec___string_ptr**);
int32_t __gc_get_words(
        blink_cmp_fuzzy__Vec___string_ptr*);

    ]]

    local ok, rust = pcall(function() return ffi.load(debug.getinfo(1).source:match('@?(.*/)') .. '../../../../target/release/libblink_cmp_fuzzy' .. get_shared_lib_extension()) end)
if not ok then
    rust = ffi.load(debug.getinfo(1).source:match('@?(.*/)') .. '../../../../target/release/blink_cmp_fuzzy' .. get_shared_lib_extension())
end

    local M = {}

    

local __const_c_typename_int32_t = ffi.typeof("const int32_t[?]")
local __c_function_argument_int32_t = ffi.typeof("int32_t[?]")
local __c_mut_function_argument_int32_t = ffi.typeof("int32_t[?]")


local __const_c_typename___string_ptr = ffi.typeof("const char *[?]")
local __c_function_argument___string_ptr = ffi.typeof("const char *[?]")
local __c_mut_function_argument___string_ptr = ffi.typeof("char *[?]")


local __typename_Vec___string_ptr = ffi.metatype("blink_cmp_fuzzy__Vec___string_ptr", {})
local __const_c_typename_Vec___string_ptr = ffi.typeof("const blink_cmp_fuzzy__Vec___string_ptr[?]")
local __c_function_argument_Vec___string_ptr = ffi.typeof("const blink_cmp_fuzzy__Vec___string_ptr*[?]")
local __c_mut_function_argument_Vec___string_ptr = ffi.typeof("blink_cmp_fuzzy__Vec___string_ptr*[?]")


local __typename_Option_Vec___string_ptr = ffi.metatype("blink_cmp_fuzzy__Option_Vec___string_ptr", {})
local __const_c_typename_Option_Vec___string_ptr = ffi.typeof("const blink_cmp_fuzzy__Option_Vec___string_ptr[?]")
local __c_function_argument_Option_Vec___string_ptr = ffi.typeof("const blink_cmp_fuzzy__Option_Vec___string_ptr*[?]")
local __c_mut_function_argument_Option_Vec___string_ptr = ffi.typeof("blink_cmp_fuzzy__Option_Vec___string_ptr*[?]")


local __const_c_typename_size_t = ffi.typeof("const size_t[?]")
local __c_function_argument_size_t = ffi.typeof("size_t[?]")
local __c_mut_function_argument_size_t = ffi.typeof("size_t[?]")


local __typename_Option_int32_t = ffi.metatype("blink_cmp_fuzzy__Option_int32_t", {})
local __const_c_typename_Option_int32_t = ffi.typeof("const blink_cmp_fuzzy__Option_int32_t[?]")
local __c_function_argument_Option_int32_t = ffi.typeof("const blink_cmp_fuzzy__Option_int32_t*[?]")
local __c_mut_function_argument_Option_int32_t = ffi.typeof("blink_cmp_fuzzy__Option_int32_t*[?]")


local __const_c_typename_bool = ffi.typeof("const int8_t[?]")
local __c_function_argument_bool = ffi.typeof("int8_t[?]")
local __c_mut_function_argument_bool = ffi.typeof("int8_t[?]")


local __const_c_typename_uint16_t = ffi.typeof("const uint16_t[?]")
local __c_function_argument_uint16_t = ffi.typeof("uint16_t[?]")
local __c_mut_function_argument_uint16_t = ffi.typeof("uint16_t[?]")


local __typename_FuzzyOptions = ffi.metatype("blink_cmp_fuzzy__FuzzyOptions", {})
local __const_c_typename_FuzzyOptions = ffi.typeof("const blink_cmp_fuzzy__FuzzyOptions[?]")
local __c_function_argument_FuzzyOptions = ffi.typeof("const blink_cmp_fuzzy__FuzzyOptions*[?]")
local __c_mut_function_argument_FuzzyOptions = ffi.typeof("blink_cmp_fuzzy__FuzzyOptions*[?]")


local __const_c_typename_uint32_t = ffi.typeof("const uint32_t[?]")
local __c_function_argument_uint32_t = ffi.typeof("uint32_t[?]")
local __c_mut_function_argument_uint32_t = ffi.typeof("uint32_t[?]")


local __typename_Vec_uint32_t = ffi.metatype("blink_cmp_fuzzy__Vec_uint32_t", {})
local __const_c_typename_Vec_uint32_t = ffi.typeof("const blink_cmp_fuzzy__Vec_uint32_t[?]")
local __c_function_argument_Vec_uint32_t = ffi.typeof("const blink_cmp_fuzzy__Vec_uint32_t*[?]")
local __c_mut_function_argument_Vec_uint32_t = ffi.typeof("blink_cmp_fuzzy__Vec_uint32_t*[?]")


local __typename_Option___string_ptr = ffi.metatype("blink_cmp_fuzzy__Option___string_ptr", {})
local __const_c_typename_Option___string_ptr = ffi.typeof("const blink_cmp_fuzzy__Option___string_ptr[?]")
local __c_function_argument_Option___string_ptr = ffi.typeof("const blink_cmp_fuzzy__Option___string_ptr*[?]")
local __c_mut_function_argument_Option___string_ptr = ffi.typeof("blink_cmp_fuzzy__Option___string_ptr*[?]")


local __typename_LspItem = ffi.metatype("blink_cmp_fuzzy__LspItem", {})
local __const_c_typename_LspItem = ffi.typeof("const blink_cmp_fuzzy__LspItem[?]")
local __c_function_argument_LspItem = ffi.typeof("const blink_cmp_fuzzy__LspItem*[?]")
local __c_mut_function_argument_LspItem = ffi.typeof("blink_cmp_fuzzy__LspItem*[?]")


local __typename_Vec_int32_t = ffi.metatype("blink_cmp_fuzzy__Vec_int32_t", {})
local __const_c_typename_Vec_int32_t = ffi.typeof("const blink_cmp_fuzzy__Vec_int32_t[?]")
local __c_function_argument_Vec_int32_t = ffi.typeof("const blink_cmp_fuzzy__Vec_int32_t*[?]")
local __c_mut_function_argument_Vec_int32_t = ffi.typeof("blink_cmp_fuzzy__Vec_int32_t*[?]")

function M.init_db(
    db_path)
    local __typeof = __c_mut_function_argument_bool
    local __ret_ptr = __typeof(1, {})
    local status = rust.init_db(
        (function(value) return value end)(db_path),
    __ret_ptr
    )
    if status ~= 0 then
        error("init_db failed with status "..status)
    end
    local __ret = __ret_ptr[0]
    
    local f = function(value) return value ~= 0 end
    return f(__ret)
end

function M.destroy_db(
    )
    local __typeof = __c_mut_function_argument_bool
    local __ret_ptr = __typeof(1, {})
    local status = rust.destroy_db(
        __ret_ptr
    )
    if status ~= 0 then
        error("destroy_db failed with status "..status)
    end
    local __ret = __ret_ptr[0]
    
    local f = function(value) return value ~= 0 end
    return f(__ret)
end

function M.access(
    item)
    local __typeof = __c_mut_function_argument_bool
    local __ret_ptr = __typeof(1, {})
    local status = rust.access(
        (function(value)
                return __typename_LspItem(
                    (function(value) return value end)(value.label),
    (
function(value)
    local f = function(value)
    return __const_c_typename___string_ptr(1, { value })
end
    if value ~= nil then
        return __typename_Option___string_ptr(f(value))
    else
        return __typename_Option___string_ptr(nil)
    end
end
)(value.sort_text),
    (
function(value)
    local f = function(value)
    return __const_c_typename___string_ptr(1, { value })
end
    if value ~= nil then
        return __typename_Option___string_ptr(f(value))
    else
        return __typename_Option___string_ptr(nil)
    end
end
)(value.filter_text),
    (function(value) return value end)(value.kind),
    (
function(value)
    local f = function(value)
    return __const_c_typename_int32_t(1, { value })
end
    if value ~= nil then
        return __typename_Option_int32_t(f(value))
    else
        return __typename_Option_int32_t(nil)
    end
end
)(value.score_offset),
    (function(value) return value end)(value.source)
                )
            end)(item),
    __ret_ptr
    )
    if status ~= 0 then
        error("access failed with status "..status)
    end
    local __ret = __ret_ptr[0]
    
    local f = function(value) return value ~= 0 end
    return f(__ret)
end

function M.fuzzy(
    needle,
    haystack_labels,
    haystack_kinds,
    haystack_score_offsets,
    haystack_sources,
    opts)
    local __typeof = __c_mut_function_argument_Vec_uint32_t
    local __ret_ptr = __typeof(1, {})
    local status = rust.fuzzy(
        (function(value) return value end)(needle),
    (
function(value)
    if type(value) == "string" then
        return __typename_Vec___string_ptr(value, #value)
    else
        local f = function(value)
    return __const_c_typename___string_ptr(#value, value)
end
        return __typename_Vec___string_ptr(f(value), #value, 0)
    end
end
)(haystack_labels),
    (
function(value)
    if type(value) == "string" then
        return __typename_Vec_uint32_t(value, #value)
    else
        local f = function(value)
    return __const_c_typename_uint32_t(#value, value)
end
        return __typename_Vec_uint32_t(f(value), #value, 0)
    end
end
)(haystack_kinds),
    (
function(value)
    if type(value) == "string" then
        return __typename_Vec_int32_t(value, #value)
    else
        local f = function(value)
    return __const_c_typename_int32_t(#value, value)
end
        return __typename_Vec_int32_t(f(value), #value, 0)
    end
end
)(haystack_score_offsets),
    (
function(value)
    if type(value) == "string" then
        return __typename_Vec___string_ptr(value, #value)
    else
        local f = function(value)
    return __const_c_typename___string_ptr(#value, value)
end
        return __typename_Vec___string_ptr(f(value), #value, 0)
    end
end
)(haystack_sources),
    (function(value)
                return __typename_FuzzyOptions(
                    (function(value) return value and 1 or 0 end)(value.use_frecency),
    (
function(value)
    local f = 
function(value)
    if type(value) == "string" then
        return __typename_Vec___string_ptr(value, #value)
    else
        local f = function(value)
    return __const_c_typename___string_ptr(#value, value)
end
        return __typename_Vec___string_ptr(f(value), #value, 0)
    end
end

    if value ~= nil then
        return __typename_Option_Vec___string_ptr(f(value))
    else
        return __typename_Option_Vec___string_ptr(nil)
    end
end
)(value.nearby_words),
    (function(value) return value end)(value.min_score),
    (function(value) return value end)(value.max_items),
    (
function(value)
    if type(value) == "string" then
        return __typename_Vec___string_ptr(value, #value)
    else
        local f = function(value)
    return __const_c_typename___string_ptr(#value, value)
end
        return __typename_Vec___string_ptr(f(value), #value, 0)
    end
end
)(value.sorts)
                )
            end)(opts),
    __ret_ptr
    )
    if status ~= 0 then
        error("fuzzy failed with status "..status)
    end
    local __ret = __ret_ptr[0]
    ffi.gc(__ret, rust.__gc_fuzzy)
    local f = function(value)
    local ret = {}
    local len = tonumber(value.len)
    local f = function(value) return value end
    for i = 1,len do
        ret[i] = f(value.ptr[i - 1])
    end
    return ret
end
    return f(__ret)
end

function M.get_words(
    text)
    local __typeof = __c_mut_function_argument_Vec___string_ptr
    local __ret_ptr = __typeof(1, {})
    local status = rust.get_words(
        (function(value) return value end)(text),
    __ret_ptr
    )
    if status ~= 0 then
        error("get_words failed with status "..status)
    end
    local __ret = __ret_ptr[0]
    ffi.gc(__ret, rust.__gc_get_words)
    local f = function(value)
    local ret = {}
    local len = tonumber(value.len)
    local f = ffi.string
    for i = 1,len do
        ret[i] = f(value.ptr[i - 1])
    end
    return ret
end
    return f(__ret)
end


    return M
    


# Convert convert keynames from the standard ruby_format to camelCase
# json.first_name 'David'
# # => { "firstName": "David" }
Jbuilder.key_format camelize: :lower

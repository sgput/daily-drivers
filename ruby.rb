# `nil?` can be used on any Ruby object. It returns true only if the object is nil.
nil.nil?   # => true
[].nil?    # => false
{}.nil?    # => false
"".nil?    # => false
" ".nil?   # => false
true.nil?  # => false

# `empty?`` can be used on some Ruby objects including Arrays, Hashes and Strings. It returns true only if the object's length is zero.
nil.empty?   # NoMethodError: undefined method `empty?' for nil:NilClass
{}.empty?    # => true
[].empty?    # => true
"".empty?    # => true
" ".empty?   # => true
true.empty?  # => NoMethodError: undefined method `empty?' for true:TrueClass

# `blank?` is an ActiveSupport extension to Ruby Object and returns true for nil, false, empty, or a white-space string.
[ "", " ", false, nil, [], {} ].all?(&:blank?) # => true

# `present?` is also an ActiveSupport extension to Ruby Object and it is the negation of blank?
[ "", " ", false, nil, [], {} ].any?(&:present?) # => false
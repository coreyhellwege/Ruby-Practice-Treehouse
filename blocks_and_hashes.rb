# Keep_if method - Deletes every element for which the given block evaluates to false.

hash = {name: "Corey", age: 25}

new_hash = hash.keep_if { |key, value| key == :name }
p new_hash

# Reject! method - Deletes every element of self for which the block evaluates to true, if no changes were made returns nil.

second_hash = hash.reject! { |key, value| key == :name }
p second_hash
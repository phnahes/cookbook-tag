Description
===========
Aditional Cookbook to set Chef Tags on Servers using Roles or any other cookbooks.

Usage
=====
Include the icecast2 recipe on the role, how below:

Role - sample.rb
-------------------------

```ruby
name "sample"
description "How use example"

override_attributes(
   "tag" => {
                "name" => [ "TAGTESTONE"]
        },
)

run_list(
    "recipe[tag]"
)
```

License and Author
==================
Author:: Paulo Nahes (<phnahes@gmail.com>)

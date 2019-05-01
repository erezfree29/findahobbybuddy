require 'will_paginate/array'
> numbers = (1..1000).to_a
> total_pages = numbers.paginate(:page => 2, :per_page => 10)
=> [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
> page.total_entries
=> 1000

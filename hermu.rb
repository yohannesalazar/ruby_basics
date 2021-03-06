#!/usr/bin/ruby

# use of stringio is like stringbuffer
s = StringIO.new
s << 'foo'
s << 'bar'
p s.string

#each -  each variant each_with_index for iterating
[4, 8, 15, 16, 23, 42].each_with_index { |e, i| puts "#{e} -- #{i}" }

#map

{:locke => "4", :hugo => "8"}.each_with_index do |kv, i|
  puts "#{kv} -- #{i}"
end


def map_value
  [3, 7, 14, 15, 22, 41].map { |e| e + 1 }
end

p map_value
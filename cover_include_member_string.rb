require 'benchmark/ips'

Benchmark.ips do |x|
  x.report 'cover?' do
    ('a'..'z').cover?('k')
  end
  x.report 'include?' do
    ('a'..'z').include?('k')
  end
  x.report 'member?' do
    ('a'..'z').member?('k')
  end
  x.report 'plain' do
    'a' > 'k' && 'k' < 'z'
  end
  x.compare!
end

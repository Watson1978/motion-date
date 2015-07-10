# motion-date

This is RubyMotion library which provides methods of Date/DateTime/Time which are same as CRuby Standard Library.
You can see APIs in http://ruby-doc.org/stdlib-2.2.2/libdoc/date/rdoc/index.html

## Installation

Add this line to your application's Gemfile:

    gem 'motion-date'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-date

## Usage

```
a = Date.new(1993, 2, 24)
b = Date.parse('1993-02-24')
b += 10

b - a            #=> 10
b.year           #=> 1993
b.strftime('%a') #=> "Sat"

yesterday = Date.today - 1
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

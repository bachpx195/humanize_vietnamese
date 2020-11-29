# HumanizeVietNamese

Converts numbers to strings in Vietnamese.

```ruby
2.humanize_vi  # => "hai"
4.humanize_vi  # => "bốn"
8.humanize_vi  # => "tám"
15.humanize_vi # => "mười lăm"
16.humanize_vi # => "mười sáu"
23.humanize_vi # => "hai ba"
42.humanize_vi # => bốn hai"
```


## Usage

### Clone this repository

```bash
git clone
```

### Run console

```ruby
require 'humanize_vietnamese'
```

### Call the method on the numbers

```ruby
100.humanize_vi => "one hundred"
1001.humanize_vi => "one thousand and one"
0.001.humanize_vi => "zero point zero zero one"
```

## Testing

Install development dependencies by running `bundle install`.

You can run mutation testing by calling `rspec`.


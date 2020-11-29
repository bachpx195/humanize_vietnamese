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
git clone https://github.com/dongta195/humanize_vietnamese.git
```

### Run console

```base 
cd humanize_vietnamese

bin/console
```

### Call the method on the numbers

```ruby
100.humanize_vi => "một trăm"
1001.humanize_vi => "một nghìn, không trăm linh một"
123456789.humanize_vi => "một trăm hai ba triệu, bốn trăm năm sáu nghìn, bảy trăm tám chín"
```

### Screen Shot



## Testing

Install development dependencies by running `bundle install`.

You can run mutation testing by calling `rspec`.


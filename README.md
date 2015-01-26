# racoon-cookbook

Chef cookbook for racoon (ipsec vpn). 

## Supported Platforms

debian

ubuntu

## Usage

### Install and enable via runit racoon daemon


```
racoon 'my-racoon'
  action :create
end

```

## License and Authors

Author:: Tony Nyurkin (<ptqa.mail@gmail.com>)

Some code is based on https://github.com/chef-osx/racoon-ipsec-osx by Joshua Timberman joshua@opscode.com.

# racoon-cookbook

Chef cookbook for racoon (ipsec vpn). 

## Supported Platforms

debian

ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['racoon']['pre_shared_key']</tt></td>
    <td>String</td>
    <td>path to pre_shared_key</td>
    <td><tt>/etc/racoon/psk.txt</tt></td>
  </tr>
  <tr>
    <td><tt>['racoon']['certificate']</tt></td>
    <td>String</td>
    <td>path to pre_shared_key</td>
    <td><tt>/etc/racoon/certs</tt></td>
  </tr>
  <tr>
    <td><tt>['racoon']['listen_addr']</tt></td>
    <td>String</td>
    <td>address to listen</td>
    <td><tt>0.0.0.0</tt></td>
  </tr>
  <tr>
    <td><tt>['racoon']['listen_port']</tt></td>
    <td>String</td>
    <td>port to listen</td>
    <td><tt>500</tt></td>
  </tr>
  <tr>
    <td><tt>['racoon']['lifetime']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>1 hour</tt></td>
  </tr>
  <tr>
    <td><tt>['racoon']['init_style']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>runit</tt></td>
  </tr>
</table>

## Usage

### Install and enable via runit racoon daemon

```
racoon "192.168.173.12" do
  pre_shared_key "11223344-5566-7788-99AA-BBCCDDEEFF11"
end
```

## License and Authors

Author:: Tony Nyurkin (<ptqa.mail@gmail.com>)

Some code is based on https://github.com/chef-osx/racoon-ipsec-osx by Joshua Timberman joshua@opscode.com.

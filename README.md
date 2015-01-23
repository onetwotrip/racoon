# racoon-cookbook

Chef cookbook for racoon (ipsec vpn).

## Supported Platforms

debian
ubuntu

## Attributes
default['racoon']['pre_shared_key']     = '/etc/racoon/psk.txt'
default['racoon']['certificate']        = '/etc/racoon/certs'
default['racoon']['listen_addr']        = '0.0.0.0'
default['racoon']['listen_port']        = 500
default['racoon']['lifetime']           = '1 hour'

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
</table>

## Usage

### racoon::default

Include `racoon` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[racoon::default]"
  ]
}
```

## License and Authors

Author:: Tony Nyurkin (<ptqa.mail@gmail.com>)

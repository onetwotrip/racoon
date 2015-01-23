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
    <td><tt>['racoon']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
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

# sagecrmconnector-cookbook

Cookbook to install Sage CRM Connector

## Supported Platforms

Windows

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['sagecrmconnector']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### sagecrmconnector::default

Include `sagecrmconnector` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[sagecrmconnector::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)

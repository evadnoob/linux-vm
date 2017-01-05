# evadnoob-debian-vm-cookbook

a cookbook for managing packages in my personal linux machine, either a VM or a real machine.

## Testing
install virtualbox
install vagrant (not from a repository), download directly
install vagrant berkshelf plugin:
* vagrant plugin install vagrant-berkshelf

* Install chef-dk
** https://downloads.chef.io/chef-dk

## Supported Platforms

currently just debian 8[jessie]

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['evadnoob-debian-vm']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### evadnoob-debian-vm::default

Include `evadnoob-debian-vm` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[evadnoob-debian-vm::default]"
  ]
}
```

## License and Authors

Author:: David Boon (d_a_v_i_d.b_o_o_n@gmail.com) 

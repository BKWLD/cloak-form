# [@cloak-app/form](https://github.com/BKWLD/cloak-form)

## Textfield

<cloak-form-textfield
  label='Email'
  placeholder='hello@bukwild.com'>
</cloak-form-textfield>

```vue
<cloak-form-textfield
  label='Email'
  placeholder='hello@bukwild.com'>
</cloak-form-textfield>
```

## Password

<cloak-form-password
  label='Password'>
</cloak-form-password>

```vue
<cloak-form-password
  label='Password'>
</cloak-form-password>
```

## Select

<cloak-form-select
  label='Choose One'
  :options='[ { label: "Yes", value: "y" }, { label: "No", value: "n" }, ]'>
</cloak-form-select>

```vue
<cloak-form-select
  label='Choose One'
  :options=`[
    { label: "Yes", value: "y" },
    { label: "No", value: "n" },
  ]`>
</cloak-form-select>
```

## Checkbox

<cloak-form-checkbox
  label='I agree to the <a>terms</a>.'>
</cloak-form-checkbox>

```vue
<cloak-form-checkbox
  label='I agree to the <a>terms</a>.'>
</cloak-form-checkbox>
```

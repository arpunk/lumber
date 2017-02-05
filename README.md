lumber
======

A very thin lager wrapper for LFE

## Rationale

LFE doesn't know how to deal with `parse_transforms`. This wrapper
makes it easier to use lager with LFE without adding any extra
dependencies or layers. You can configure the logger exactly as the
[lager config](https://github.com/erlang-lager/lager) specifies.

For instance, if you want to [enable
colors](https://github.com/erlang-lager/lager#colored-terminal-output)
you need to add the following to your `sys.config`:

```erlang
{colored, true}
```

## Build
```
$ rebar3 compile
```

## Test
```
$ rebar3 eunit
```

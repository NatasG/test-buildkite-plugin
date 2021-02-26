# Test Buildkite Plugin

Display Hello $Message.

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: ls
    plugins:
      - NatasG/test#v1.0.0:
          message: 'World'
```

## Configuration

### `message` (Required, string)

The message to show.

## Developing

To run the tests:

```shell
auto/test
```

## Contributing

1. Fork the repo
2. Make the changes
3. Run the tests
4. Commit and push your changes
5. Send a pull request

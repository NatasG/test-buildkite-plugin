#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Creates an annotation with the file count" {
  export BUILDKITE_PLUGIN_TEST_MESSAGE="World"

  stub buildkite-agent 'annotate "Hello World" : echo Annotation created'

  run "$PWD/hooks/post-command"

  assert_success
  assert_output --partial "Hello World"

  unstub buildkite-agent
}

workflow "New workflow" {
  resolves = ["Hello World"]
  on = "delete"
}

action "Hello World" {
  uses = "./action-a"
  env = {
    MY_NAME = "Kryštof"
  }
  args = "\"Hello world, I'm $MY_NAME!!!\""
}

workflow "New workflow 1" {
  on = "push"
  resolves = ["Hello World-1"]
}

action "Hello World-1" {
  uses = "./action-a"
  args = "\"Hello world, I'm $MY_NAME!!!\""
  env = {
    MY_NAME = "meh"
  }
}

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

function limit-HomeDirectory($path) {
  $path.replace("$home", "~")
}

function prompt {
  $host.UI.write("green", $host.UI.RawUI.BackgroundColor, "PS ");
  $host.UI.writeline("yellow", $host.UI.RawUI.BackgroundColor, $(limit-HomeDirectory("$pwd")));
  "> "
}

function which($command) {
  get-command $command | select-object -expandproperty definition
}
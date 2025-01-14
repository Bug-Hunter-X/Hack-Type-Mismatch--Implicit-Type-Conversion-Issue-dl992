//Explicitly casting float to int
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: float): int {
  if (x > 0.0) {
    return bar((int)x);
  } else {
    return 0;
  }
}

function main(): void {
  var x = 10.0;
  var y = baz(x);
  print(y);
}

//Modifying function signature to accept floats
function foo(x: float): float {
  return x + 1.0;
}

function bar(x: float): float {
  return foo(x) * 2.0;
}

function baz(x: float): float {
  if (x > 0.0) {
    return bar(x);
  } else {
    return 0.0;
  }
}

function main(): void {
  var x = 10.0;
  var y = baz(x);
  print(y);
}
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  if (x > 0) {
    return bar(x);
  } else {
    return 0;
  }
}

function main(): void {
  var x = 10;
  var y = baz(x);
  print(y);
}

//This code will print 22, but if we change the type of x from int to float, it will cause a type error. This is because the function foo is expecting an integer, but we are providing it with a float.

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
/* Demonstration of objc-font-lock, a package that highlights
 * Objective-C method calls. */

void test(NSString * a_string,
          NSString * another_string,
          CGFloat first,
          CGFloat second,
          CGFloat third,
          CGFloat fourth,
          MyType * obj)
{
  /* Method call */
  [my_string length];

  /* Method call with arguments */
  [my_string stringByAppendingString: another_string];

  /* Multiple arguments. Multi-line support. */
  [NSColor colorWithCalibratedRed: first
                            green: second
                             blue: third
                            alpha: fourth];


  /* Method call with list argument */
  [NSArray arrayWithObjects: @"One", @"Two", @"Three", nil];

  /* Nested method calls */
  [[NSAutoreleasePool alloc] init];

  /* Complex expressions */
  [NSColor colorWithCalibratedRed: first + 0.01
                            green: fourth + (second/third)
                             blue: (CGFloat)[my_string length]
                            alpha: fourth];

  /* Block support */
  [obj the_block:^(int x, int y) { ... }];
}

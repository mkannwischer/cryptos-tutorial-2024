.syntax unified


/*
static uint32 rotate(uint32 a, int d)
{
  uint32 t;
  t = a >> (32-d);
  a <<= d;
  return a | t;
}

static void quarterround(uint32 *a, uint32 *b, uint32 *c, uint32 *d)
{
  *a = *a + *b;
  *d = *d ^ *a;
  *d = rotate(*d, 16);

  *c = *c + *d;
  *b = *b ^ *c;
  *b = rotate(*b, 12);

  *a = *a + *b;
  *d = *d ^ *a;
  *d = rotate(*d, 8);

  *c = *c + *d;
  *b = *b ^ *c;
  *b = rotate(*b, 7);
}
*/

// quarterround(uint32 *a, uint32 *b, uint32 *c, uint32 *d)
.global quarterround
.type quarterround,%function
.align 2
quarterround:
    push {r4-r11, r14}


    pop {r4-r11, pc}
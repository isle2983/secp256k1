

gcc -DHAVE_CONFIG_H -I. -I.  -DSECP256K1_BUILD -I../include -fverbose-asm -W -std=c89 -pedantic -Wall -Wextra -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes -Wno-unused-function -Wno-long-long -Wno-overlength-strings -fvisibility=hidden -O3 -MT libsecp256k1_la-secp256k1.lo -MD -MP -MF .deps/libsecp256k1_la-secp256k1.Tpo -c secp256k1.c -S

/ Second cut: rely on a nice overload in part 1...
/ ...and finally cracked part 2 (`i$' has issues atm, but .' works)

i: 0:`18.txt

f:{@[|x; "()"; ")("]}
202553439706=+/.'f'i

SB:-1#B:,'") ("
PB:,,"+"

tokenise:("("{|/"()+*"'(x;y)}':)^" "_
br:{c:+\-1 0 1@B?x
    (o; o+((o:*x?SB)_c)?0)}
eval:{$[=/i:br x
        afold x
        eval@ ,/ @[;1;,eval@] @[;1 2;1_] (0,i)^x]}
afold: {$[(#x)>1+s:-1+*x?PB
          afold@,/(s#x; ,$.,/3#s_x; (s+3)_x)
          $.,/x]}
f: eval tokenise@

88534268715686=+/.'$f'i

\\


/ First cut of part 1

i: 0:`18.txt
+/{splits: ("("{|/"()"'x,y}':)^/:" "\x
202553439706 = . @[,/|,/splits; "()"; ")("]}'i

\\


14=. f"2 * 3 + 4"
3=. f"((1+2))"
11=. f"1+(2*3)+4"
36=. f"(1+2)*(3*4)"
23340=. f"((2 + 4 * 9) * (6 + 9 * 8 + 6) + 6) + 2 + 4 * 2"
51=. f"1 + (2 * 3) + (4 * (5 + 6))"
46=. f"2 * 3 + (4 * 5)"
1445=. f"5 + (8 * 3 + 9 + 3 * 4 * 3)"
669060=. f"5 * 9 * (7 * 3 * 3 + 9 * 3 + (8 + 6 * 4))"

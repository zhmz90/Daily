define <4 x i32> @multiply_four(<4 x i32> %a, <4 x i32> %b) {
       %1 = mul <4 x i32> %a,  %b
       ret <4 x i32> %1
}
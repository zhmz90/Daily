; ModuleID = 'IR_learn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define i32 @square_int(i32 %a) #0 {
entry:
  %mul = mul i32 %a, %a
  ret i32 %mul
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @main() #0 {
entry:
  ret i32 0
}

attributes #0 = { nounwind optsize readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (trunk 244213) (llvm/trunk 244209)"}

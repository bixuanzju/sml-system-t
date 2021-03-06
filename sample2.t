let
  val plus  =
    \(n:nat) \(m:nat) rec m {
      z           => n
    | s(x) with y => s(y)
    }
in
  let
      val times =
        \(n:nat) \(m:nat) rec m {
          z           => z
        | s(x) with y => plus(y)(n)
        }
  in
    let
      val four = s(s(s(s(z))))
    in
      times(four)(four)
    end
  end
end

def test_case
{"RawParseTree"=>
  [:iter,
   [:fcall, :a],
   [:masgn, [:array, [:lasgn, :b], [:lasgn, :c]], [:splat]],
   [:fcall, :p, [:array, [:lvar, :c]]]],
 "Ruby"=>"a { |b, c, *| p(c) }",
 "ParseTree"=>
  s(:iter,
   s(:call, nil, :a, s(:arglist)),
   s(:masgn, s(:array, s(:lasgn, :b), s(:lasgn, :c), s(:splat))),
   s(:call, nil, :p, s(:arglist, s(:lvar, :c))))}
end

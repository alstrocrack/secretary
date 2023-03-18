It 'calls ruby syntax'
  When call ./secretary.sh --ruby if
  The output should eq "if ... elsif ... else ... end"
End
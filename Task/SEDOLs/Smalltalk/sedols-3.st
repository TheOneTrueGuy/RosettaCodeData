|sedol|
sedol := SEDOL new.
{  '710889'.
   'B0YBKJ'.
   '406566'.
   'B0YBLH'.
   '228276'.
   'B0YBKL'.
   '557910'.
   'B0YBKR'.
   '585284'.
   'B0YBKT' } do: [ :c | (sedol checked: c) displayNl ]
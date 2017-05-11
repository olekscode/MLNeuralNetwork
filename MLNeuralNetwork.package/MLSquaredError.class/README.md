The squared error cost function.

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
cost := MLSquaredError  new.
cost value: #(0.2 0.5 0.3) target: #(0 1 0) .
cost derivative: #(0.2 0.5 0.3) target: #(0 1 0) .
-=-=-=-=-=-=-=-=-=-=-=-=
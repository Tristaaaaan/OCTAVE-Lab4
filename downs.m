function [y,n] = downs (x, n1, n2, s)
  n=[(n1./s):(n2./s)];
  y=[downsample(x,s)];
endfunction

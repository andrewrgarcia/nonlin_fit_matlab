function y = monod20(I)
%"Modified Monod model for st.state around 20" fit - Process Engineering
alpha=I(1);
Tm=I(2);

y=4+(16*(Tm/(alpha+Tm)));

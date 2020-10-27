
data initial;
     * M: Margin;\
      M = 100;\
     * r: Retention Rate;\
      r = 0.9;\
     * d: Discount Rate;\
      D = 0.1;\
run;
\
*\
* Customer Lifetime Value model;\
\
data CLV; set initial;\
        CLV = M*(r/(1+d-r));\
run; \
\
* CLV 450;\
*\
\
*\
* Customer Lifetime Value model with initial margin - infinite setting;\
\
data CLV_init; set initial;\
        CLV = M*((1+d)/(1+d-r));\
run;\
\
* CLV 550; \
*\
\
*\
* Customer Lifetime Value model setting up to five years;\
\
data CLV_fin; retain year CLV_year CLV-sum; drop M r d i; set initial;\
     CLV_sum = 0;\
     do i=1 to 5;\
        year = i;\
        CLV_year = M*( r**I / ((1+d)**i) );\
        CLV_sum = CLV_sum + CLV_year;\
        output;\
      end;\
run;\
\
* Year 1 81 and sum 81;\
* Year 2 67 and sum 149;\
* Year 3 55 and sum 204;\
* Year 4 45 and sum 248;\
* Year 5 37 and sum 285;\

\f0 *\

\f2 \

\f1 * Customer Lifetime Value with finite setting with infinite margin up to five years;\
* Starting from zero includes initial margin as opposed to above;\
\
data CLV_fin; retain year CLV_year CLV_sum; drop M r d i; set initiall;\
        CLV_sum=0;\
        do i=0 to 5;  * include 0 for initial margin;\
        year = i; \
        CLV_year = M* ( r**I /((1+d)**i) );\
        CLV_sum = CLV_sum + CLV_year;\
        output;\
      end;\
run;
\f2 \

\f1 \
* Year 0 100 and sum 100;\
* Year 1 82 and sum 182;\
* Year 2 67 and sum 248;\
* Year 3 55 and sum 304;\
* Year 4 45 and sum 348;\
* Year 5 37 and sum 385;
\f2 \

\f0 \
\
\
* \
\
}
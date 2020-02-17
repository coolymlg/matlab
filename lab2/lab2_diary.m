%%Ievads simboliskaja matematika
%Piemers
syms a11 a12 a21 a22 b11 b12 b21 b22
A = [a11 a12 ; a21 a22];
B = [b11 b12 ; b21 b22];
a
{Undefined function or variable 'a'.
} 
A
 
A =
 
[ a11, a12]
[ a21, a22]
 
B
 
B =
 
[ b11, b12]
[ b21, b22]
 
C = A*B
 
C =
 
[ a11*b11 + a12*b21, a11*b12 + a12*b22]
[ a21*b11 + a22*b21, a21*b12 + a22*b22]
 
D = A. * B
 D = A. * B
        ↑
{Error: Invalid use of operator.
} 
D = A. *B
 D = A. *B
        ↑
{Error: Invalid use of operator.
} 
D = A.*B
 
D =
 
[ a11*b11, a12*b12]
[ a21*b21, a22*b22]
 
%% Ka definet simbolisko mainigo
%1.
%definesim x y ka simbolisko mainigo
%izmantojot sym
x = sym('x');
y = sym('y');
%%atradisim kvadratsakni no x
y=x^2;
z=sqrt(y)
 
z =
 
(x^2)^(1/2)
 
x = sym ('x','positive');
y = x^2
 
y =
 
x^2
 
z=sqrt(y)
 
z =
 
x
 
%%Ka definet simbolisko mainigo - 2
syms x y
%saja rinda esam definejusi x y ka simboliskos mainigos
x
 
x =
 
x
 
y
 
y =
 
y
 
z
 
z =
 
x
 
syms x y positive
%saja piemera esam nodefinejusi x y ka simbolisko mainigis
syms a11 a12 a21 a22
A
 
A =
 
[ a11, a12]
[ a21, a22]
 
A`
 A`
  ↑
{Error: Invalid text character. Check for unsupported symbol, invisible character, or pasting of non-ASCII
characters.
} 
A'
 
ans =
 
[ conj(a11), conj(a21)]
[ conj(a12), conj(a22)]
 
%%pateiksim ka matricas elementi nav kompleksi
syms a11 a12 a21 a22 real
A = [a11 a12 ; a21 a22];
A'
 
ans =
 
[ a11, a21]
[ a12, a22]
 
%%Ka definet simbolisko mainigo - 3
A = sym('a',[2 3])
 
A =
 
[ a1_1, a1_2, a1_3]
[ a2_1, a2_2, a2_3]
 
A = sym('a%d%d',[2 3])
 
A =
 
[ a11, a12, a13]
[ a21, a22, a23]
 
%% Atvasinasana
syms x
y = x^2;
%atv veiksim ar funkciju diff
diff(y)
 
ans =
 
2*x
 
%%parcialais atvasinajums
syms x y
z=3*x^5+7*x^6;
diff(z)
 
ans =
 
42*x^5 + 15*x^4
 
z=3*x^5+7*y^6;
diff(z,x)
 
ans =
 
15*x^4
 
diff(z,y)
 
ans =
 
42*y^5
 
%%integresana
syms x
y=x^3
 
y =
 
x^3
 
int(y)
 
ans =
 
x^4/4
 
%%Noteiktais integralis
syms x
int(x,x,0,3)
 
ans =
 
9/2
 
double(int(x,x,0,3))

ans =

    4.5000

%% atbilde nav skaitlis(bet simboliskais skaitlis)
int(x^2,x,-3,3)
 
ans =
 
18
 
%%Robezas
syms x
limit(1/(x-1),x,1,'left')
 
ans =
 
-Inf
 
limit(1/(x-1),x,1,'right')
 
ans =
 
Inf
 
%limite(funkcija,mainigais,limits,no kuras puses tiecas)
%% Vienadojumu risinasana
syms x
%risinasim vienadojumu 
%x^2-7x+12=0, saknem jabut 3,4
solve(x^2-7*x+12==0,x)
 
ans =
 
 3
 4
 
%% Vienadojumu sistemu risinasana
syms x y z
solve(x+y+z==10,x=y+z==4,x+y=z==0)
 solve(x+y+z==10,x=y+z==4,x+y=z==0)
                  ↑
{Error: Incorrect use of '=' operator. To assign a value to a variable, use '='. To compare values for
equality, use '=='.
} 
solve(x+y+z==10,x+y+z==4,x+y=z==0)
 solve(x+y+z==10,x+y+z==4,x+y=z==0)
                             ↑
{Error: Incorrect use of '=' operator. To assign a value to a variable, use '='. To compare values for
equality, use '=='.
} 
solve(x+y+z==10,x-y+z==4,x+y-z==0)

ans = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

x
 
x =
 
x
 

y
 
y =
 
y
 
atb.x
{Undefined variable "atb" or class "atb.x".
} 
atb = solve(x+y+z==10,x+y+z==4,x+y=z==0)
 atb = solve(x+y+z==10,x+y+z==4,x+y=z==0)
                                   ↑
{Error: Incorrect use of '=' operator. To assign a value to a variable, use '='. To compare values for
equality, use '=='.
} 
atb = solve(x+y+z==10,x-y+z==4,x+y-z==0)

atb = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

atb.x
 
ans =
 
2
 
atb.z
 
ans =
 
5
 
atb.y
 
ans =
 
3
 
%%Simboliskie mainigie(simboliskas konstantes)
a=vpa(2)
 
a =
 
2.0
 
b=vpa(pi)
 
b =
 
3.1415926535897932384626433832795
 
c=(vpa(aqrt(2)))
{Undefined function or variable 'aqrt'.
} 
c=(vpa(sqrt(2)))
 
c =
 
1.4142135623730950488016887242097
 
d=a+b+c
 
d =
 
6.5558062159628882872643321074892
 
d=sqer(a)
{Undefined function or variable 'sqer'.
} 
d=sqrt(a)
 
d =
 
1.4142135623730950488016887242097
 
%zimju skaitu mainisana
digits
 
Digits = 32
 
digits(100)
d
 
d =
 
1.4142135623730950488016887242097
 
a
 
a =
 
2.0
 
c
 
c =
 
1.4142135623730950488016887242097
 
pi

ans =

    3.1416

a=vpa(pi)
 
a =
 
3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068
 
%vpa - Variable precision Arithmetic
%%Rezultatu vienkarsosana
syms x
y = 1/((x-1)*(x-2));
diff(y)
 
ans =
 
- 1/((x - 1)*(x - 2)^2) - 1/((x - 1)^2*(x - 2))
 
y = 1/((x-1)*(x-2));
y = 1/(((x-4)*(x-5))/((x-1)*(x-2)));
diff(y)
 
ans =
 
(x - 1)/((x - 4)*(x - 5)) + (x - 2)/((x - 4)*(x - 5)) - ((x - 1)*(x - 2))/((x - 4)*(x - 5)^2) - ((x - 1)*(x - 2))/((x - 4)^2*(x - 5))
 
y_atv = diff(y)
 
y_atv =
 
(x - 1)/((x - 4)*(x - 5)) + (x - 2)/((x - 4)*(x - 5)) - ((x - 1)*(x - 2))/((x - 4)*(x - 5)^2) - ((x - 1)*(x - 2))/((x - 4)^2*(x - 5))
 
%%Meginasim vienkarsot
simplify(y_atv)
 
ans =
 
-(6*(x^2 - 6*x + 7))/(x^2 - 9*x + 20)^2
 
simpl(y_atv)
{Undefined function or variable 'simpl'.
} 
simlp(y_atv)
{Not enough input arguments.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('simlp', '/usr/local/MATLAB/R2018a/toolbox/simulink/simulink/simlp.m', 47)" style="font-weight:bold">simlp</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/simulink/simulink/simlp.m',47,0)">line 47</a>)
[ncstr,nvars]=size(A);
} 
expand(y)
 
ans =
 
2/(x^2 - 9*x + 20) - (3*x)/(x^2 - 9*x + 20) + x^2/(x^2 - 9*x + 20)
 
%%citi vienk
syms x
y=(x-3)*(x-4);
y
 
y =
 
(x - 3)*(x - 4)
 
expand(y)
 
ans =
 
x^2 - 7*x + 12
 
atb=expand(y)
 
atb =
 
x^2 - 7*x + 12
 
factor(atb)
 
ans =
 
[ x - 3, x - 4]
 
horner(atb)
 
ans =
 
x*(x - 7) + 12
 
%%Rezultatu "skaista" attelosana
y = 1/(((x-4)*(x-5))/((x-1)*(x-2)));
pretty(y)
(x - 1) (x - 2)
---------------
(x - 4) (x - 5)

%%Ko darit ar rezultatiem
%Iedomasimies
%dots
y = 1/(((x-4)*(x-5))/((x-1)*(x-2)));
y = (x-4)*((x-5))/((x-1)*(x-2));
%Uzdevums-atrisinat atvasinajumu un uzimet to ar funkciju plot
%%Risinajums:
%%1.definesim simboliskos mainigos
syms x
y = (x-4)*((x-5))/((x-1)*(x-2));
%%2. atvasinasana
x_atv=diff(y)
 
x_atv =
 
(x - 4)/((x - 1)*(x - 2)) + (x - 5)/((x - 1)*(x - 2)) - ((x - 4)*(x - 5))/((x - 1)*(x - 2)^2) - ((x - 4)*(x - 5))/((x - 1)^2*(x - 2))
 
x_atv=simplify(diff(y))
 
x_atv =
 
(6*(x^2 - 6*x + 7))/(x^2 - 3*x + 2)^2
 
%%3.Izteiksmes vektorizacija
%punktu pieliksana pirms *
y_v=vectorize(y)

y_v =

    '((x - 4).*(x - 5))./((x - 1).*(x - 2))'

y_atv_v=vectorize(y_atv)

y_atv_v =

    '(x - 1)./((x - 4).*(x - 5)) + (x - 2)./((x - 4).*(x - 5)) - ((x - 1).*(x - 2))./((x - 4).*(x - 5).^2) - ((x - 1).*(x - 2))./((x - 4).^2.*(x - 5))'

%%4. saformesim x ka vektoru
%x intervals bus uzdots uzdevuma
x=[-2:0.01:2-0.01];
%x pieder intervalam [-2,2)
%%5. pieliksim x,aprekinasim y
%1. risinajums copy-paste
y_n
{Undefined function or variable 'y_n'.
} 
y_n=(x - 4).*(x - 5))./((x - 1).*(x - 2))
 y_n=(x - 4).*(x - 5))./((x - 1).*(x - 2))
                     ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
} 
y_n=(x - 4).*(x - 5)./((x - 1).*(x - 2))

y_n =

   1.0e+03 *

  Columns 1 through 10

    0.0035    0.0035    0.0035    0.0035    0.0035    0.0035    0.0036    0.0036    0.0036    0.0036

  Columns 11 through 20

    0.0036    0.0036    0.0036    0.0036    0.0036    0.0037    0.0037    0.0037    0.0037    0.0037

  Columns 21 through 30

    0.0037    0.0037    0.0037    0.0037    0.0038    0.0038    0.0038    0.0038    0.0038    0.0038

  Columns 31 through 40

    0.0038    0.0038    0.0038    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039    0.0039

  Columns 41 through 50

    0.0039    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0040    0.0041    0.0041

  Columns 51 through 60

    0.0041    0.0041    0.0041    0.0041    0.0041    0.0042    0.0042    0.0042    0.0042    0.0042

  Columns 61 through 70

    0.0042    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0043    0.0044    0.0044

  Columns 71 through 80

    0.0044    0.0044    0.0044    0.0045    0.0045    0.0045    0.0045    0.0045    0.0045    0.0046

  Columns 81 through 90

    0.0046    0.0046    0.0046    0.0046    0.0047    0.0047    0.0047    0.0047    0.0047    0.0048

  Columns 91 through 100

    0.0048    0.0048    0.0048    0.0048    0.0049    0.0049    0.0049    0.0049    0.0050    0.0050

  Columns 101 through 110

    0.0050    0.0050    0.0050    0.0051    0.0051    0.0051    0.0051    0.0052    0.0052    0.0052

  Columns 111 through 120

    0.0052    0.0053    0.0053    0.0053    0.0054    0.0054    0.0054    0.0054    0.0055    0.0055

  Columns 121 through 130

    0.0055    0.0056    0.0056    0.0056    0.0056    0.0057    0.0057    0.0057    0.0058    0.0058

  Columns 131 through 140

    0.0058    0.0059    0.0059    0.0059    0.0060    0.0060    0.0060    0.0061    0.0061    0.0062

  Columns 141 through 150

    0.0062    0.0062    0.0063    0.0063    0.0063    0.0064    0.0064    0.0065    0.0065    0.0066

  Columns 151 through 160

    0.0066    0.0066    0.0067    0.0067    0.0068    0.0068    0.0069    0.0069    0.0070    0.0070

  Columns 161 through 170

    0.0071    0.0071    0.0072    0.0072    0.0073    0.0073    0.0074    0.0074    0.0075    0.0076

  Columns 171 through 180

    0.0076    0.0077    0.0077    0.0078    0.0079    0.0079    0.0080    0.0081    0.0081    0.0082

  Columns 181 through 190

    0.0083    0.0083    0.0084    0.0085    0.0086    0.0086    0.0087    0.0088    0.0089    0.0090

  Columns 191 through 200

    0.0091    0.0091    0.0092    0.0093    0.0094    0.0095    0.0096    0.0097    0.0098    0.0099

  Columns 201 through 210

    0.0100    0.0101    0.0102    0.0103    0.0104    0.0106    0.0107    0.0108    0.0109    0.0110

  Columns 211 through 220

    0.0112    0.0113    0.0114    0.0116    0.0117    0.0119    0.0120    0.0122    0.0123    0.0125

  Columns 221 through 230

    0.0127    0.0128    0.0130    0.0132    0.0134    0.0136    0.0138    0.0140    0.0142    0.0144

  Columns 231 through 240

    0.0146    0.0148    0.0151    0.0153    0.0156    0.0158    0.0161    0.0164    0.0167    0.0169

  Columns 241 through 250

    0.0172    0.0176    0.0179    0.0182    0.0186    0.0189    0.0193    0.0197    0.0201    0.0206

  Columns 251 through 260

    0.0210    0.0215    0.0219    0.0225    0.0230    0.0235    0.0241    0.0247    0.0253    0.0260

  Columns 261 through 270

    0.0267    0.0275    0.0282    0.0291    0.0299    0.0308    0.0318    0.0329    0.0340    0.0351

  Columns 271 through 280

    0.0364    0.0377    0.0392    0.0407    0.0424    0.0442    0.0462    0.0483    0.0506    0.0532

  Columns 281 through 290

    0.0560    0.0591    0.0626    0.0665    0.0708    0.0758    0.0815    0.0880    0.0956    0.1047

  Columns 291 through 300

    0.1155    0.1288    0.1454    0.1668    0.1953    0.2353    0.2952    0.3952    0.5951    1.1951

  Columns 301 through 310

      -Inf   -1.2051   -0.6051   -0.4052   -0.3052   -0.2453   -0.2054   -0.1769   -0.1555   -0.1389

  Columns 311 through 320

   -0.1257   -0.1148   -0.1058   -0.0982   -0.0917   -0.0861   -0.0811   -0.0768   -0.0730   -0.0696

  Columns 321 through 330

   -0.0665   -0.0637   -0.0612   -0.0590   -0.0569   -0.0550   -0.0533   -0.0517   -0.0502   -0.0488

  Columns 331 through 340

   -0.0476   -0.0464   -0.0453   -0.0443   -0.0434   -0.0425   -0.0417   -0.0410   -0.0403   -0.0396

  Columns 341 through 350

   -0.0390   -0.0384   -0.0379   -0.0374   -0.0370   -0.0366   -0.0362   -0.0359   -0.0355   -0.0353

  Columns 351 through 360

   -0.0350   -0.0348   -0.0346   -0.0344   -0.0343   -0.0342   -0.0341   -0.0340   -0.0340   -0.0340

  Columns 361 through 370

   -0.0340   -0.0341   -0.0341   -0.0343   -0.0344   -0.0346   -0.0348   -0.0351   -0.0354   -0.0357

  Columns 371 through 380

   -0.0361   -0.0366   -0.0371   -0.0377   -0.0383   -0.0390   -0.0398   -0.0407   -0.0417   -0.0428

  Columns 381 through 390

   -0.0440   -0.0454   -0.0470   -0.0488   -0.0508   -0.0531   -0.0558   -0.0589   -0.0626   -0.0670

  Columns 391 through 400

   -0.0723   -0.0789   
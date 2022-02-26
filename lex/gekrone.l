space [ ]
tab [ \t]
new_line [\n]
alt [\_]
lp [\(]
rp [\)]
l_brace [\{]
r_brace [\}]
semicolon ;
l_square_bracket [\[]
r_square_bracket [\]]
marks ({lp}|{rp}|{l_brace}|{r_brace}|{semicolon}|{l_square_bracket}|{r_square_bracket})
assignment_operator =
comma ,
dot .
operators [*/%+-]
equality_check (==)
smaller  \<
smaller_or_equal (<=)
bigger \>
bigger_or_equal (>=)
not_equal (!=)
boolean_constant [0|1]
digit   [0-9]
int  [+-]?{digit}+
char [A-Za-z]
float_constant  [+-]?({digit}+\.{digit})+
if (if)
else (else)
elseif ({else}{space}+{if}+)*
read_altitude (read_altitude)
read_temperature (read_temperature)
read_direction (read_direction)
read_tank (read_tank)
read_latitude (read_latitude)
read_longitude (read_longitude)
read_battery (read_battery)
connect_to_drone (connect_to_drone)
nozzle (nozzle)
vertical_movement (vertical_movement)
horizontal_movement (horizontal_movement)
turn (turn)
set_HFS (set_HFS)
set_HBS (set_HBS)
set_VUS (set_VUS)
set_VDS (set_VDS)
set_TS (set_TS)
all_identifiers ({space}|{operators}|{tab}|{assignment_operator}|{comma}|{dot}|{equality_check}|{smaller}|{smaller_or_equal}|{bigger}|{bigger_or_equal}|{not_equal}|{variable_identifier}|{int}|{alt}|{marks})
comment \/\*\*{all_identifiers}*\*\/
variable_identifier [\_]?({char})+[\_]?({char}|{digit})*
%%
{operators} printf("OP ");
{space} ;
{tab} ;
{new_line} ;
{assignment_operator} printf("ASSIGNMENT_OP ");
{comma} printf("COMMA ");
\&\& printf("AND ");
\|\| printf("OR ");
{equality_check} printf("EQUALITY_CHECK ");
{smaller} printf("SMALLER ") ;
{smaller_or_equal}  printf("SMALLER_OR_EQUAL ");
{bigger} printf("GREATER ");
{bigger_or_equal} printf("GREATER_OR_EQUAL ");
{not_equal} printf("NOT_EQUAL ");
{digit} printf("DIGIT ");
{int} printf("INT ");
{float_constant} printf("FLOAT ");
{boolean_constant} printf("BOOLEAN_CONSTANT ");
{lp} printf("LP ");
{rp} printf("RP ");
{l_brace} printf("LBRACE ");
{r_brace} printf("RBRACE ");
{semicolon} printf("SEMI_COLON ");
{l_square_bracket} printf("L_SQUARE_BRACKET ");
{r_square_bracket} printf("R_SQUARE_BRACKET ");
{if} printf("IF ");
{else} printf("ELSE ");
{elseif} printf("ELSE_IF ");
gek printf("GEK ");
while printf("WHILE ");
for printf("FOR ");
read_altitude printf("READ_ALTITUDE ");
read_longitude printf("READ_LONGITUDE ");
read_battery printf("READ_BATTERY ");
connect_to_drone printf("CONNECT_TO_DRONE ");
nozzle printf("NOZZLE ");
vertical_movement printf("VERTICAL_MOVEMENT ");
horizontal_movement printf("HORIZONTAL_MOVEMENT ");
turn printf("TURN ");
set_HFS printf("SET_HFS ");
set_HBS printf("SET_HBS ");
set_VUS printf("SET_VUS ");
set_VDS printf("SET_VDS ");
set_TS printf("SET_TS ");
{comment} printf("COMMENT ");
{variable_identifier} printf("IDENTIFIER ");
%%

int yywrap() {}

int main() {

extern FILE *yyin;
printf("--------------- start of first test ------------------------\n");
yyin = fopen("exampleProgram1.txt", "r");
yylex();

printf("--------------- end of first test ------------------------\n");
printf("--------------- start of second test ------------------------\n");
yyin = fopen("draw_pentagram.txt", "r");
yylex();

printf("--------------- end of second test ------------------------\n");
return 0;
}
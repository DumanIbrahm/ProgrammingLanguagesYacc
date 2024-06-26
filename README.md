# .hehe Programming Language 


## Project Group Members 
- [20200808070 Buse Çoban](https://github.com/busecoban)
- [20200808019 İbrahim Duman](https://github.com/DumanIbrahm)


## Design of Our Language
 Hehe is a programming language encompassing fundamental features such as variable declarations, assignments, arithmetic and logical operations, conditional statements, iterative constructs, function definitions, and input/output capabilities.

 ## .hehe supports :
 
- ✩ Simple PL with statement-by-statement execution:
  
<img width="705" alt="Screenshot 2024-05-06 at 11 44 44" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/c6106bf5-b275-4d86-98aa-13d7e7f35d95">

<img width="727" alt="Screenshot 2024-05-06 at 11 45 18" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/34213910-b3b3-4213-ad13-71f4849bac9d">

<img width="716" alt="Screenshot 2024-05-06 at 12 04 15" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/c0d4828e-2686-4e22-92aa-f7770ce5d793">


- we can run our exampleprog1.hehe file statement by statement
  
<img width="696" alt="Screenshot 2024-05-06 at 12 38 30" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/0ba6e12b-909b-4bf2-8008-0e6e66e452d3">

<img width="996" alt="Screenshot 2024-05-06 at 12 37 28" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/73d74b2a-4c83-4575-a93a-61fb54582d89">

- ✩ Comments: hehe has Single line and Multi line comment support :
  
![WhatsApp Image 2024-05-05 at 17 48 13](https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/e81db109-782e-4ace-9676-6b3a91234705)

- ✩✩ Conditional statements (at least one of if-else, switch, etc.):
  
<img width="740" alt="Screenshot 2024-05-06 at 10 44 43" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/d4f4b634-c882-4f3d-ab98-3fed240d7818">

- ✩✩ Loops (at least one of for, while, do-while, etc.):
  - a. hehe supports WHILE statements succesfully
    
<img width="714" alt="Screenshot 2024-05-05 at 17 57 25" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/e184ddef-7338-469d-a30b-6cf6ec4cd999">

- ✩✩✩ Ability to write functions:
  
<img width="719" alt="Screenshot 2024-05-06 at 10 48 46" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/3de42189-109e-45f4-940a-b01f231349fe">

<img width="714" alt="Screenshot 2024-05-06 at 10 51 09" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/ec902334-789f-4635-a06b-236f609fafca">

- Other features :
  
  - 1.Arithmethric operations:
    
<img width="709" alt="Screenshot 2024-05-05 at 23 48 31" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/f557e40e-7bc7-4aa1-a460-3ef01b839bb4">

   - 2.Comparasions equal or not
     
<img width="712" alt="Screenshot 2024-05-06 at 11 55 12" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/58a052ee-f23e-4da4-afd0-348e91f415fb">

<img width="718" alt="Screenshot 2024-05-06 at 12 06 42" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/34f2bfcd-579f-4b34-994f-f210dbd4fd43">

  - 3.You can Exit with RET expression whenever you want
    
<img width="852" alt="Screenshot 2024-05-06 at 12 26 47" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/44d38143-502f-446b-8387-7f60400915c5">

## BNF
```
<program> ::= <declaration>*

<declaration> ::= <variable_declaration>
                 | <loop>
                 | <conditional_statement>
                 | <inner_operation>
                 | <comparison>
                 | <logical_operation>
                 | <function>

<variable_declaration> ::= <identifier> "=" <expression> ";"

<loop> ::= "WHILE" "(" <expression> ")" <block> "LPW"

<conditional_statement> ::= "IF" "(" <expression> ")" <block> "ELSE" <block>

<inner_operation> ::= <variable_declaration>
                    | <loop>

<comparison> ::= <variable_declaration> "IF" "(" <expression> ")" <block> "ELSE" <block>

<logical_operation> ::= <variable_declaration>

<function> ::= "FUNCTION" <identifier> "(" <identifier> "," <identifier> ")" <block>

<expression> ::= <term>
                | <expression> "+" <term>
                | <expression> "-" <term>
                | <expression> "*" <term>
                | <expression> "/" <term>
                | <expression> "==" <term>
                | <expression> "!=" <term>
                | <expression> ">" <term>
                | <expression> "<" <term>
                | <expression> ">=" <term>
                | <expression> "<=" <term>

<term> ::= <identifier>
          | <number>
          | "(" <expression> ")"

<block> ::= "{" <declaration>* "}"
```


## Design Decision

While we designing Hehe, we made the following decisions:
- Variables can only be assigned values of the same type. For example, an integer variable cannot be assigned a string value.
- We chose to use curly braces to delimit blocks of code, as they are easy to read and commonly used in other programming languages.
- We chose to use the if statement for conditional branching and the while statement for loops, as they are simple and widely used constructs.
- We chose to use print statement for output, as they are easy to understand and commonly used in other programming languages.
- We chose to use the BNF grammar notation to specify the syntax of the language, as it is a standard notation used in language design.

 ## Variable Declarations and Assignments 
 
 - Variables in heh are declared using the following syntax:
```
<identifier> "=" <literal> ";"
```
- To assign a value to an existing variable, use the following syntax:
```
<identifier> "=" <expression> ";"
```
- Here, <identifier> represents the name of the variable, <expression> denotes an arithmetic or logical expression that evaluates to the same type as the variable, and ";" serves as the statement terminator.
- For example,to assign a new value to the variable x, you can write:
```
x = 10;
```

<img width="706" alt="Screenshot 2024-05-06 at 12 11 27" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/5f432710-af91-49a7-8af9-04af0b68b276">


## Language Keywords

- > if
- > else
- > while
  
<img width="716" alt="Screenshot 2024-05-06 at 12 04 15" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/32772a4a-92a9-4a89-bf95-de9dd0561c67">

<img width="769" alt="Screenshot 2024-05-05 at 17 46 30" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/0d9fa7b7-a831-427f-a820-ef72f3f583c7">


## Predefined functions

- > print
  
<img width="705" alt="Screenshot 2024-05-06 at 11 44 44" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/163a4b2f-04db-43bf-872d-5aadc28bf4b4">

## Other Features

- Hehe allows you to add comments to your code using the '--' syntax. Any text that follows '--' on a line is ignored by the compiler
  
<img width="759" alt="Screenshot 2024-05-05 at 00 19 00" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/7856c486-d5cd-433e-be33-fc9716100ac5">

```
--this is single line comment
single line comment at line 1

x=13;     

--this is another comment
single line comment at line 5

y=2;

-*
I can write there

Also there

Also there

hehe support 
s

multi 

line comment

*-
multiline comment ended at line 23

PRINT(x*y);

 ```
<img width="731" alt="Screenshot 2024-05-06 at 12 17 46" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/dd5fd764-07d6-4521-97a1-c9092c68dc72">

- Hehe allows conditional statements in the form of if statements.The basic syntax is like that:
 ```
if (<expression>) <statement> [else <statement>]
 ```
- Here, <expression> represents a logical condition that determines whether to execute the subsequent <statement>. If <expression> evaluates to true, the first <statement> is executed. If <expression> evaluates to false and an else clause is present, the second <statement> is executed instead.
 ```
x=20;
y=10;
z=5;

IF(x==y){
   PRINT(x*y);
}ELSE{
	IF(x!=z){
 	   PRINT(x/z); 
	}ELSE{
    	   PRINT(x*z);
	 }
}
 ```
- Hehe supports while loops, which repeatedly execute a block of statements as long as a specified condition remains true. The basic syntax is:
```
WHILE(x){
PRINT(x);
x=x-1;
}
LPW
```
- Hehe allows you to define and call functions.fnc keyword is used to define a function.
```
  -- Function 
 FUNCTION method( a, b){
    RET a + b;
}
```
- Run the program with a single command
```
make
```
<img width="1091" alt="Screenshot 2024-05-11 at 21 25 58" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/94488767/fe0a8831-ac52-4364-93e6-c535af89bcf8">


# Commands
## 1.Run the program with a single command:
```
make
```
It runs these commands orderly: 
```
lex hehe.l 

yacc -d hehe.y
 
gcc -o hehe_parser 
 
lex.yy.c y.tab.c -ll
 
./hehe_parser. 
 ```

<img width="1091" alt="Screenshot 2024-05-11 at 21 25 58" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/94488767/c608af9b-bd2e-4753-88bc-48347f780098">

## 2.Compiling the Lex File:

```
lex hehe.l
```
The lex command stands for "Lexical Analyzer Generator" and is used in Unix/Linux operating systems.
The command lex hehe.l takes the Lex file hehe.l and generates a C program based on it. This C program parses the tokens of the specified input language according to certain rules and provides these tokens as output.

## 3.Compiling the Yacc/Bison File:

```
yacc -d hehe.y
```
The yacc command generates a parser in C or C++ from grammar rules specified in a .y file.
The -d option tells yacc to generate a header file with token definitions.
The command yacc -d hehe.y generates y.tab.c and y.tab.h files based on the grammar rules defined in hehe.y.

## 4.Compiling the C Program:

```
gcc -o hehe_parser lex.yy.c y.tab.c -ll
```
The gcc command is a compiler driver for the C programming language.
The -o option specifies the output file name.
The -ll option links the program with the Lex library.
The command gcc -o hehe_parser lex.yy.c y.tab.c -ll compiles the lex.yy.c and y.tab.c files into an executable named hehe_parser.

## 5.Running the Compiled Program:

```
./hehe_parser
```
The command ./hehe_parser executes the compiled parser.

## 6.Running an Example Program:

```
./hehe_parser < exampleprog1.hehe
```
The command ./hehe_parser < exampleprog1.hehe runs the compiled parser and redirects the contents of the file exampleprog1.hehe to the standard input of the program.


      
# Compile

<img width="911" alt="Screenshot 2024-05-06 at 12 25 56" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/4d4b9e35-e270-42b2-9178-3c3f5d4451ac">

<img width="696" alt="Screenshot 2024-05-06 at 12 38 30" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/e6a08780-5f57-4a1d-a784-230159531d29">

<img width="996" alt="Screenshot 2024-05-06 at 12 37 28" src="https://github.com/akdenizcse/pl-yacc-assignment-2024-spring-programminglanguages-1970/assets/73944611/72958b85-fbdd-4780-a985-0424ab80740b">




## Conclusion
- Hehe is a straightforward programming language crafted for simplicity in learning and application. It encompasses fundamental programming structures including variables, functions, conditional statements, loops, and output operations. 

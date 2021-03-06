lexer grammar Company;

@header {
package org.softlang.parser;
}

@members {
  @Override
  public void reportError(RecognitionException e) {
    throw new IllegalArgumentException(e);
  }
}

COMPANY     : 'company';
DEPARTMENT  : 'department';
EMPLOYEE    : 'employee';
MANAGER     : 'manager';
ADDRESS     : 'address';
SALARY      : 'salary';
OPEN        : '{';
CLOSE       : '}';
WS          :   (' '|'\r'? '\n'|'\t')+;
STRING      :   '"' (~'"')* '"';
FLOAT       : DIGIT+ ('.' DIGIT+)?;

fragment DIGIT : ('0'..'9'); 

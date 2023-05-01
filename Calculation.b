     Program


    INITIALISE:
     RESULT = "";
     RETURN.ERROR = "";
     RETURN

     DO.BASIC.CHECK:
     DO.PROCESS = 1;
     BEGIN CASE
        CASE NOT(OPERATOR MATCHES "+":@VM:"-":@VM:"*":@VM:"/")
           RETURN.ERROR = 1
           DO.PROCESS = "0"
           ETEXT = "EB-INVALID.OPERATOR"
           CALL STORE.END.ERROR
        CASE NOT(ISDIGIT(OPERAND1))
           RETURN.ERROR = 1
           DO.PROCESS = "0"
           ETEXT = "EB-INVALID.OPERATOR":FM:OPERAND1
           CALL STORE.END.ERROR
        CASE NOT(ISDIGIT(OPERAND2))
           RETURN.ERROR = 1
           DO.PROCESS = "0"
           ETEXT = "EB-INVALID.OPERATOR":FM:OPERAND2
           CALL STORE.END.ERROR
     END CASE
  END
*** Test Cases ***
#Forloop1
 #   FOR    ${i}    IN RANGE    1   10
  #  log to console    ${i}
   # END

#Forloop2
 #   FOR     ${i}    IN    1     2     3     4     5     6     7     8
  #  log to console    ${i}
   # END

#Forloop3WithList
 #   @{items}    create list    1    2   3   4   5
  #  FOR    ${i}     IN    @{items}
   # log to console    ${i}
    #END

#Forloop4
 #   FOR    ${i}     IN    John  David   Dari    Smith   Scott
  #  log to console    ${i}
   # END

#Forloop5
 #   @{nameslist}    CREATE LIST    John  David   Dari    Smith   Scott
  #  FOR    ${i}     IN    @{nameslist}
   # log to console    ${i}
    #END

Forloop6withExit
    @{items}    create list    1    2   3   4   5
    FOR    ${i}     IN    @{items}
    log to console    ${i}
    exit for loop if    ${i}==3
    END
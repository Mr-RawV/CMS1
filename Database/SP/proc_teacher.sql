Alter PROC Proc_Teacher       
(          
@flag  VARCHAR(30),          
@Name  VARCHAR(30)=NULL,           
@address VARCHAR(30)=NULL,         
@Contact varchar(10) = NULL,    
@Department varchar=NULL,    
@Salary int =NULL,     
@joinedDate date =NULL,    
@isActive varchar(3) =NULL,
@gender varchar(20) =NULL   
)          
AS          
      
IF @flag='SelectTeacher'        
BEGIN        
 SELECT * FROM Teacher   
RETURN        
END    
  
IF @flag='SelectStaff'        
BEGIN        
 SELECT * FROM Staff   
RETURN        
END    
  
IF @flag='InsertTeacher'      
BEGIN      
 INSERT INTO Teacher(Name,Address,Contact,Department,Salary,joinedDate,isActive,Gender)      
 VALUES(@Name,@address,@Contact,@Department,@Salary,GETDATE(),'Yes',@gender);      
 SELECT '0' AS code, 'Record Success' as msg       
RETURN      
END 

IF @flag='InsertStaff'      
BEGIN      
 INSERT INTO Teacher(Name,Address,Contact,Department,Salary,joinedDate,isActive,Gender)      
 VALUES(@Name,@address,@Contact,@Department,@Salary,GETDATE(),'Yes',@gender);      
 SELECT '0' AS code, 'Record Success' as msg       
RETURN      
END 
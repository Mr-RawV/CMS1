Alter PROC Proc_Student    
(      
@flag  VARCHAR(30),      
@Name  VARCHAR(30)=NULL,       
@address VARCHAR(30)=NULL,     
@RollNo int=NULL,
@RegNo int=NULL,
@Contact varchar(10) = NULL,
@Faculty varchar=NULL,
@Semester int =NULL,
@Batch varchar(5)=NULL,
@joinedDate date =NULL,
@isActive varchar(3) =NULL
)      
AS      
  
IF @flag='SelectBIM'    
BEGIN    
 SELECT * FROM Student where faculty='BIM'
RETURN    
END

IF @flag='SelectBBM'    
BEGIN    
 SELECT * FROM Student where faculty='BBM'
RETURN    
END

IF @flag='SelectBCA'    
BEGIN    
 SELECT * FROM Student where faculty='BCA'
RETURN    
END

IF @flag='SelectBHM'    
BEGIN    
 SELECT * FROM Student where faculty='BHM'
RETURN    
END

IF @flag='SelectCSIT'    
BEGIN    
 SELECT * FROM Student where faculty='CSIT'
RETURN    
END
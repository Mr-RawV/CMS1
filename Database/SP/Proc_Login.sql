CREATE PROC Proc_Login      
(      
@flag  VARCHAR(30),      
@Name  VARCHAR(30)=NULL,      
@pwd  VARCHAR(30)=NULL,    
@address VARCHAR(30)=NULL,     
@userType VARCHAR(30)=NULL,       
@createdBy VARCHAR(30)=NULL      
)      
AS      
  
IF @flag='SelectData'    
BEGIN    
 SELECT * FROM Faculty   
RETURN    
END
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="ExpertUpdateProfile.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Expert Update Profile</title>

</head>
<body>
    
 
    
    
<div class="container">
  <section id="content">
    <form action="ExpertUpdateProfileServlet">
      <h1>Update Expert Profile</h1>
      <div>
        <input type="text" name= "Name"  placeholder="Username"  id="username" />
      </div>
      
      <div>
        <input type="text" name= "password"  placeholder="Password" id="password" />
      </div>
           <div>
        <input type="text" name= "meetpertime"  placeholder="Price Per Meet" id="meetpertime" />
      </div>
      <div>
        <input type="text" name= "experience"  placeholder="Experience" id="experience" />
      </div>
      
          
      <div>
        <input  href="#expert.jsp" type="submit" value="Done" />
      
      </div>
    </form><!-- form -->
    
  </section><!-- content -->
</div><!-- container -->
</body>
</html>
<!DOCTYPE html>
<html>
    <head>
        <title>Expert</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
$black: #222;
$white: #fff;
$gray: #ccc;
$red: #e74c3c;
$blue: #3498db;
$green: #2ecc71;
$yellow: #f1c40f;
$purple: #9b59b6;
$wetasphalt: #34495e;

html {
  width: 100vw;
  height: 100vh;
  margin: 0;
  padding: 0;
}

body {
  font-size: 16px;
  font-weight: 200;
  background-color: whitesmoke;
  box-sizing: border-box;
  background-image: url('https://cdn5.vectorstock.com/i/1000x1000/25/24/blue-grid-mosaic-background-vector-21312524.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  
  &:before {
    position: absolute;
    content: '';
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba($white,0.5);
  }
}

.form-wrapper {
  position: relative;
  display: block;
  width: 400px;
  margin: 200px auto;
  padding: 40px;
  border-radius: 5px;
  background-color: white;
  box-shadow: 0 0 45px rgba(0,0,0,0.5);
  
  h2 {
  }
  
  p {
    font-size: 14px;
    line-height: 1.75;
  }
  
  form {
    position: relative;
    display: block;
    margin: 0;
    padding: 20px 0;
    border-top: 1px solid lighten($gray,10%);
    
    label {
      position: relative;
      display: block;
      width: 100%;
      margin: 2px 0 0;
      padding: 10px 0;
      
      input[type="radio"] {
        position: relative;
        display: inline-block;
        margin-top: 3px;
        margin-right: 15px;
        font-size: 12px;
        float: left;
        z-index: 1;

        &:checked + div span {
          position: absolute;
          display: inline-block;
          left: 100%;
          top: -5px;
          margin: 0 0 0 20px;
          padding: 8px 15px;
          font-size: 12px;
          font-weight: 400;
          color: $white;
          text-align: center;
          white-space: nowrap;
          background-color: rgba($black,0.9);
          border-radius: 4px;
          box-shadow: 0 0 10px rgba($black,0.2);
          clear: both;
          visibility: visible;
          transform: translateX(0px);
          transition: transform 200ms ease;

          &:before {
            position: absolute;
            content: '';
            top: 4px;
            left: -1px;
            border-top: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 8px solid rgba($black,0.9);
            transform: rotate(45deg);
          }
        }
      }
      
      div {
        position: relative;
        display: inline-block;
        
        span {
          position: absolute;
          visibility: hidden;
          transform: translateX(-10px);
          transition: transform 200ms ease;
        }
      }
      
      &:nth-of-type(1) {
        
        input[type="radio"]:checked + div span {
          background-color: $green;
          
          &:before {
            border-top: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 8px solid rgba($green,0.9);
          }
        }
      }
      
      &:nth-of-type(2) {
        
        input[type="radio"]:checked + div span {
          background-color: $blue;
          
          &:before {
            border-top: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 8px solid rgba($blue,0.9);
          }
        }
      }
      
      &:nth-of-type(3) {
        
        input[type="radio"]:checked + div span {
          background-color: $yellow;
          
          &:before {
            border-top: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 8px solid rgba($yellow,0.9);
          }
        }
      }
      
      &:nth-of-type(4) {
        
        input[type="radio"]:checked + div span {
          background-color: $purple;
          
          &:before {
            border-top: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 8px solid rgba($purple,0.9);
          }
        }
      }
      
      &:nth-of-type(5) {
        
        input[type="radio"]:checked + div span {
          background-color: $red;
          
          &:before {
            border-top: 8px solid transparent;
            border-right: 8px solid transparent;
            border-bottom: 8px solid rgba($red,0.9);
          }
        }
      }
    }
    
    button {
      position: relative;
      display: block;
      margin: 40px auto 0;
      padding: 10px 20px;
      font-size: 14px;
      font-weight: 100;
      //text-transform: uppercase;
      letter-spacing: 1px;
      color: $white;
      border: none;
      border-radius: 5px;
      background-color: $gray;
      z-index: 0;
      
      &:before {
        position: absolute;
        content: '';
        bottom: 0;
        left: 0;
        width: 100%;
        height: 0;
        background-color: $purple;
        border-radius: 5px;
        transition: height, 250ms ease;
        z-index: -1;
      }
      
      &:hover {
        box-shadow: 0 0 10px rgba($black,0.3);
        
        &:before {
          height: 100%;
        }
      }
    }
  }
}
    </style>
    <body>
        <div class="form-wrapper">
  <h1>Update Your Available Day</h1>
  <form action="UpdateTimeSlotServlet">
    <label for="choice-1">
      <input type="radio" id="choice-1" name="choice" value="Monday" /> Monday <br><br>
    </label>
    
    <label for="choice-2">
      <input type="radio" id="choice-2" name="choice" value="Tuesday" />  Tuesday <br><br>
    </label>
    
    <label for="choice-3">
      <input type="radio" id="choice-3" name="choice" value="Wednesday" /> Wednesday <br><br>
    </label>
    
    <label for="choice-4">
      <input type="radio" id="choice-4" name="choice" value="Thursday" /> Thursday <br><br>
    </label>
    
    <label for="choice-5">
      <input type="radio" id="choice-5" name="choice" value="Friday" /> Friday <br><br>
    </label>
    <button type="submit" >Submit</button>
  </form>
</div> <!-- .form-wrapper -->
    </body>
</html>

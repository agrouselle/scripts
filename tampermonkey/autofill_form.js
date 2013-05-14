// ==UserScript==
// @name       Example
// @namespace  http://www.example.com
// @version    0.1
// @description  Fill out user sign up form
// @match      *://*.example.com:3000/pages/index*
// @match      http://localhost:3000/pages/index*
// @match      http://0.0.0.0:3000/users/sign_up*
// @copyright  2013+, agrouselle
// @require    http://code.jquery.com/jquery-latest.min.js
// ==/UserScript==

console.log("Tampermonkey Script - filling out sign up form");
    
$("document").ready(function() {
   var randNum = Math.floor(Math.random() * Math.pow(10,2));
   $("input[name='user[first_name]']").val("Anthony" + randNum); 
   $("input[name='user[last_name]']").val("G."); 
   $("input[name='user[zip]']").val("94100");     
   $("input[name='user[email]']").val("user+" + randNum + "@example.com");
   $("input[name='user[password]']").val("password");  
   $("input[name='user[terms_of_use]']").click();
   $("input[name='user[terms_of_use]']").attr('selected', true);
   $("#user_security_question1").val($($("#user_security_question1").children()[3]).val());
   $("#user_security_question2").val($($("#user_security_question2").children()[4]).val());        
});


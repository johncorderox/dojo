var emails    = ["test.email+alex@viirtue.com", "test.e.mail+bob.cathy@viirtue.com", "testemail+david@lee.tcode.com"];
var temp      = "";
var local     = "";
var domain    = "";
var emailList = [];

filterEmail();
sendEmails();

function filterEmail() {
  for (var i = 0; i < emails.length; i++) {
    // Seperate the email into 2 vars at the "@" mark
    temp   = emails[i].split("@");
    local  = temp[0];
    domain = temp[1];
    temp   = "";

    local = local.split("");


     for ( var j = 0; j < local.length; j++) {

       if (local[j] === ".") {
         local.splice(j, 1);
       }
       // Breaks loop when + is found
       if (local[j] === "+") {
         break;
       }
       temp += local[j];
     }
     local = temp;

   emailList.push(local+"@"+domain);

   resetVars();

    }

}

// Reset Vars for next iteration
function resetVars() {
        temp    = "";
        local   = "";
        domain  = "";
}

// Remove duplicates and log sent emails
function sendEmails() {

let unique = [...new Set(emailList)];

for (var x = 0; x < unique.length; x++) {

      console.log(unique[x]);

  }
}

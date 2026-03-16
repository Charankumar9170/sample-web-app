function handleForm() {

    // get values from form
    let name = document.getElementById("name").value;
    let email = document.getElementById("email").value;

    console.log("Name:", name);
    console.log("Email:", email);

    // optional validation
    if(name === "" || email === ""){
        alert("Please fill all fields");
        return;
    }

    // submit form to JSP
    document.getElementById("userForm").submit();
}

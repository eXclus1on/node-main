async function registerUser(email, password) {
  const body = {
    email,
    password,
  };

  const options = {
    method: "POST",
    body: JSON.stringify(body),
    headers: {
      "Content-type": "application/json; charset=UTF-8",
    },
  };

  console.log(options);

  const url = "http://localhost:3000/register";
  const response = await fetch(url, options);
  const result = await response.json();

  console.log(result);
}
function RegisterUser() {
  function handleSubmit(event) {
    event.preventDefault();
    registerUser("helder@teste.com", "alalalala");
  }

  return (
    <>
      <form onSubmit={handleSubmit}>
        <input type="email" placeholder="E-mail" required />
        <input type="password" placeholder="Password" required />
        <button>Register</button>
      </form>
    </>
  );
}

export default RegisterUser;

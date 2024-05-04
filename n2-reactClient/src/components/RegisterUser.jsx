import { useState } from "react";
import authService from "../services/authService";

function RegisterUser() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  async function handleSubmit(event) {
    event.preventDefault();

    const result = await authService.registerUser(email, password);

    if (result.status === "OK") {
      alert("YAY");
    } else {
      alert("NBOOOOOO...");
    }
  }

  return (
    <>
      <form onSubmit={handleSubmit}>
        <input
          type="email"
          placeholder="E-mail"
          required
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />
        <input
          type="password"
          placeholder="Password"
          required
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
        <button>Register</button>
      </form>
    </>
  );
}

export default RegisterUser;

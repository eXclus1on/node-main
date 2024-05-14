import { useState } from "react";
import authService from "../services/authService";
import storageService from "../services/storageService";

function LoginUser() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  async function handleSubmit(event) {
    event.preventDefault();

    const result = await authService.loginUser(email, password);

    if (result.token) {
      storageService.setAuthToken(result.token);
      console.log(result);
    }
  }

  return (
    <>
      <h2>Login Form</h2>
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
        <button>Login</button>
      </form>
    </>
  );
}

export default LoginUser;

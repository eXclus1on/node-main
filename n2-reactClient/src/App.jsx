import LoginUser from "./components/LoginUser";
import RegisterUser from "./components/RegisterUser";
import networkService from "./services/networkService";
import storageService from "./services/storageService";

function App() {
  async function notesHandler() {
    const result = await networkService.getFetchAuthenticated("/private/notes");
    console.log(result);
  }

  function logoutHandler() {
    storageService.removeAuthToken();
  }

  return (
    <>
      <RegisterUser />
      <LoginUser />
      <button onClick={notesHandler}>Get User Notes!</button>
      <button onClick={logoutHandler}>Logout!</button>
    </>
  );
}

export default App;

function getAuthToken() {
    return localStorage.getItem("at");
}

function setAuthToken(token) {
    localStorage.setItem("at", token);
}

function removeAuthToken() {
    localStorage.removeItem("at");
}

export default {
    getAuthToken,
    setAuthToken,
    removeAuthToken
}
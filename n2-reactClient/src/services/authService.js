import networkService from "./networkService"

async function registerUser(email, password) {
    const body = {
        email,
        password
    }
    return networkService.postFetch("register", body);
}

export default {
    registerUser
}
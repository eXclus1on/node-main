import storageService from "./storageService";

const baseURL = "http://localhost:3000";

async function getFetch(path) {
    const url = baseURL + path;

    const response = await fetch(url);
    const result = await response.json();

    return result;
}

async function getFetchAuthenticated(path) {
    const url = baseURL + path;
    const options = {
        headers: {
            token: storageService.getAuthToken()
        }
    }

    const response = await fetch(url, options);
    const result = await response.json();

    return result;
}

async function postFetch(path, body) {
    const url = baseURL + path;
    const options = {
        method: "POST",
        body: JSON.stringify(body),
        headers: {
            "Content-type": "application/json; charset=UTF-8",
        },
    }

    const response = await fetch(url, options);
    const result = await response.json();

    return result;
}

async function postFetchAuthenticated(path, body) {
    const url = baseURL + path;
    const options = {
        method: "POST",
        body: JSON.stringify(body),
        headers: {
            "Content-type": "application/json; charset=UTF-8",
            token: storageService.getAuthToken
        },
    }

    const response = await fetch(url, options);
    const result = await response.json();

    return result;
}

export default {
    getFetch,
    getFetchAuthenticated,
    postFetch,
    postFetchAuthenticated

}

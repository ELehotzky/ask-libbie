export function apiData() {
    return fetch('http://localhost:3000/api/v1/resources', {
        method: 'GET',
    })
        // .then( res => res.json())
        // .catch( err => {
        //     console.log(err);
        // });
}
export function apiData() {
    let location = '';
    const key = 'AIzaSyDJMqZM25hyGg92ZEqRI669XlS8u5j14Ic';
    const address = `https://maps.googleapis.com/maps/api/geocode/json?address=${location}&key=${key}`
    return fetch(address)
        .then( res => res.json())
        .catch( err => {
            console.log(err);
        });
}
//==========Exercise #1 ===========//
/*
Write a function that parses through the below object and displays all of their
favorite food dishes as shown:
*/

let person3 = {
    pizza:["Deep Dish","South Side Thin Crust"],
    tacos:"Anything not from Taco bell",
    burgers:"Portillos Burgers",
    ice_cream:["Chocolate","Vanilla","Oreo"],
    shakes:[{
        oberwise:"Chocolate",
        dunkin:"Vanilla",
        culvers:"All of them",
        mcDonalds:"Sham-rock-shake",
        cupids_candies:"Chocolate Malt"
    }]
}

function favoriteFoods(object1) {
    for (let i = 0; i < Object.entries(object1).length; i++) {
        console.log(Object.keys(object1)[i], Object.values(object1)[i]);
    }
}

favoriteFoods(person3)

//=======Exercise #2=========//
/*
Write an object prototype for a Person that has a name and age, has a
printInfo method, and also has a method that 
increments the persons age by 1 each time the method is called.
Create two people using the 'new' keyword, and print 
both of their infos and increment one persons
age by 3 years. Use an arrow function for both methods
*/

// Create our Person Prototype
function Person(name,age){
    this.name = name;
    this.age = age;
    // Use an arrow to create the printInfo method
    this.printInfo = () => {
        console.log(`This is ${this.name}, who is ${this.age} years old.`);
    }
    // Create another arrow function for the addAge method that takes a single parameter
    // Adding to the age
    this.addAge = () => {
        this.age += 1
        console.log(`${this.name} is now ${this.age} years old.`)
    }
}

let someone1 = new Person('Shakira', 44)
let someone2 = new Person('DjKhaled', 45)
console.log(someone1.printInfo())
console.log(someone1.addAge())
console.log(someone1.addAge())
console.log(someone1.addAge())
console.log(someone2.printInfo())




// =============Exercise #3 ============//
/*
    Create a Promised based function that will check a string to determine if it's length is greater than 10.
    If the length is greater than ten console log "Big word". 
    If the length of the string is less than 10 console log "Small Number"
*/

const aString = (strings) => {
    return new Promise( (resolve,reject) => {
        if(strings.length >= 10){
            resolve(strings)
        } else {
            reject(strings)
        }
    })
}

aString('Short.')
.then( (strings) => {
    console.log(`Big word: ${strings}`)
})
.catch( (strings) => {
    console.log(`Small word: ${strings}`)
})

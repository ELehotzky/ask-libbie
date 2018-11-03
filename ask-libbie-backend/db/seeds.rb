ResourceCategory.destroy_all
Category.destroy_all
Resource.destroy_all

# Categories
food = Category.create(name: "Food/Meal Services")
women = Category.create(name: "Women's Services")
men = Category.create(name: "Men's Services")
shelter = Category.create(name: "Shelter")
clothing = Category.create(name: "Clothing")
victims = Category.create(name: "Sexual Assault and Domestic Abuse Survivors")
mentally_handicapped = Category.create(name: "Mentally Handicapped Services")
veterans = Category.create(name: "Veterans")
teens = Category.create(name: "Teens")
hiv = Category.create(name: "HIV/AIDS Resources")
health = Category.create(name: "Healthcare")
pets = Category.create(name: "Pet Resources");
career = Category.create(name: "Career/Job Resources");
education = Category.create(name: "Education");
legal = Category.create(name: "Legal Aid");
showers = Category.create(name: "Shower/Bathroom Facilities");
restrooms = Category.create(name: "Restrooms");
laundry = Category.create(name: "Laundry Facilities");
substance = Category.create(name: "Substance Abuse Counseling");
seniors = Category.create(name: "Senior Citizen Resources");
felons = Category.create(name: "Services for Ex-Felons");

#Resources


# ResourcesCategories

ResourceCategory.create(resource_id: 1, category_id: women)
ResourceCategory.create(resource_id: 1, category_id: shelter)
ResourceCategory.create(resource_id: 1, category_id: victims)

ResourceCategory.create(resource_id: 2, category_id: shelter)
ResourceCategory.create(resource_id: 2, category_id: career)

ResourceCategory.create(resource_id: 3, category_id: food)
ResourceCategory.create(resource_id: 3, category_id: legal)
ResourceCategory.create(resource_id: 3, category_id: shelter)
ResourceCategory.create(resource_id: 3, category_id: laundry)

ResourceCategory.create(resource_id: 4, category_id: shelter)
ResourceCategory.create(resource_id: 4, category_id: teens)
ResourceCategory.create(resource_id: 4, category_id: education)
ResourceCategory.create(resource_id: 4, category_id: health)

ResourceCategory.create(resource_id: 5, category_id: food)
ResourceCategory.create(resource_id: 5, category_id: legal)
ResourceCategory.create(resource_id: 5, category_id: career)
ResourceCategory.create(resource_id: 5, category_id: education)
ResourceCategory.create(resource_id: 5, category_id: substance)

ResourceCategory.create(resource_id: 6, category_id: shelter)
ResourceCategory.create(resource_id: 6, category_id: teens)
ResourceCategory.create(resource_id: 6, category_id: victims)
ResourceCategory.create(resource_id: 6, category_id: women)

ResourceCategory.create(resource_id: 7, category_id: men)
ResourceCategory.create(resource_id: 7, category_id: women)
ResourceCategory.create(resource_id: 7, category_id: shelter)
ResourceCategory.create(resource_id: 7, category_id: mentally_handicapped)

ResourceCategory.create(resource_id: 8, category_id: shelter)
ResourceCategory.create(resource_id: 8, category_id: health)

ResourceCategory.create(resource_id: 9, category_id: women)
ResourceCategory.create(resource_id: 9, category_id: shelter)
ResourceCategory.create(resource_id: 9, category_id: substance)

ResourceCategory.create(resource_id: 10, category_id: shelter)

ResourceCategory.create(resource_id: 11, category_id: men)
ResourceCategory.create(resource_id: 11, category_id: education)
ResourceCategory.create(resource_id: 11, category_id: shelter)
ResourceCategory.create(resource_id: 11, category_id: food)

ResourceCategory.create(resource_id: 12, category_id: women)
ResourceCategory.create(resource_id: 12, category_id: shelter)
ResourceCategory.create(resource_id: 12, category_id: food)

ResourceCategory.create(resource_id: 13, category_id: shelter)
ResourceCategory.create(resource_id: 13, category_id: veterans)

ResourceCategory.create(resource_id: 14, category_id: shelter)
ResourceCategory.create(resource_id: 14, category_id: women)

ResourceCategory.create(resource_id: 15, category_id: shelter)
ResourceCategory.create(resource_id: 15, category_id: men)
ResourceCategory.create(resource_id: 15, category_id: women)

ResourceCategory.create(resource_id: 16, category_id: shelter)
ResourceCategory.create(resource_id: 16, category_id: teens)

ResourceCategory.create(resource_id: 17, category_id: women)
ResourceCategory.create(resource_id: 17, category_id: shelter)

ResourceCategory.create(resource_id: 18, category_id: education)
ResourceCategory.create(resource_id: 18, category_id: shelter)

ResourceCategory.create(resource_id: 19, category_id: hiv)
ResourceCategory.create(resource_id: 19, category_id: shelter)

ResourceCategory.create(resource_id: 20, category_id: men)
ResourceCategory.create(resource_id: 20, category_id: shelter)
ResourceCategory.create(resource_id: 20, category_id: substance)

ResourceCategory.create(resource_id: 21, category_id: shelter)
ResourceCategory.create(resource_id: 21, category_id: food)
ResourceCategory.create(resource_id: 21, category_id: education)
ResourceCategory.create(resource_id: 21, category_id: career)
ResourceCategory.create(resource_id: 21, category_id: substance)
ResourceCategory.create(resource_id: 21, category_id: clothing)

ResourceCategory.create(resource_id: 22, category_id: shelter)
ResourceCategory.create(resource_id: 22, category_id: education)
ResourceCategory.create(resource_id: 22, category_id: career)

ResourceCategory.create(resource_id: 23, category_id: shelter)
ResourceCategory.create(resource_id: 23, category_id: hiv)
ResourceCategory.create(resource_id: 23, category_id: mentally_handicapped)

ResourceCategory.create(resource_id: 24, category_id: shelter)
ResourceCategory.create(resource_id: 24, category_id: mentally_handicapped)

ResourceCategory.create(resource_id: 25, category_id: shelter)
ResourceCategory.create(resource_id: 25, category_id: seniors)
ResourceCategory.create(resource_id: 25, category_id: food)

ResourceCategory.create(resource_id: 26, category_id: shelter)
ResourceCategory.create(resource_id: 26, category_id: women)
ResourceCategory.create(resource_id: 26, category_id: legal)
ResourceCategory.create(resource_id: 26, category_id: career)
ResourceCategory.create(resource_id: 26, category_id: substance)

ResourceCategory.create(resource_id: 27, category_id: shelter)

ResourceCategory.create(resource_id: 28, category_id: shelter)
ResourceCategory.create(resource_id: 28, category_id: felons)
ResourceCategory.create(resource_id: 28, category_id: substance)

ResourceCategory.create(resource_id: 29, category_id: shelter)
ResourceCategory.create(resource_id: 29, category_id: women)
ResourceCategory.create(resource_id: 29, category_id: victims)

ResourceCategory.create(resource_id: 30, category_id: shelter)
ResourceCategory.create(resource_id: 30, category_id: victims)
ResourceCategory.create(resource_id: 30, category_id: substance)

ResourceCategory.create(resource_id: 31, category_id: food)
ResourceCategory.create(resource_id: 31, category_id: health)
ResourceCategory.create(resource_id: 31, category_id: shower)
ResourceCategory.create(resource_id: 31, category_id: laundry)
ResourceCategory.create(resource_id: 31, category_id: clothing)

ResourceCategory.create(resource_id: 32, category_id: shelter)
ResourceCategory.create(resource_id: 32, category_id: senior)
ResourceCategory.create(resource_id: 32, category_id: food)
ResourceCategory.create(resource_id: 32, category_id: education)

ResourceCategory.create(resource_id: 33, category_id: shelter)
ResourceCategory.create(resource_id: 33, category_id: women)

ResourceCategory.create(resource_id: 34, category_id: shelter)
ResourceCategory.create(resource_id: 34, category_id: felons)
ResourceCategory.create(resource_id: 34, category_id: veterans)
ResourceCategory.create(resource_id: 34, category_id: men)
ResourceCategory.create(resource_id: 34, category_id: education)
ResourceCategory.create(resource_id: 34, category_id: career)

ResourceCategory.create(resource_id: 35, category_id: shelter)
ResourceCategory.create(resource_id: 35, category_id: victims)

ResourceCategory.create(resource_id: 36, category_id: shelter)

ResourceCategory.create(resource_id: 37, category_id: shelter)
ResourceCategory.create(resource_id: 37, category_id: women)
ResourceCategory.create(resource_id: 37, category_id: career)
ResourceCategory.create(resource_id: 37, category_id: education)

ResourceCategory.create(resource_id: 38, category_id: health)
ResourceCategory.create(resource_id: 38, category_id: teens)

ResourceCategory.create(resource_id: 39, category_id: shelter)

ResourceCategory.create(resource_id: 40, category_id: shelter)
ResourceCategory.create(resource_id: 40, category_id: teens)

ResourceCategory.create(resource_id: 41, category_id: shelter)
ResourceCategory.create(resource_id: 41, category_id: women)
ResourceCategory.create(resource_id: 41, category_id: victims)

ResourceCategory.create(resource_id: 42, category_id: shelter)
ResourceCategory.create(resource_id: 42, category_id: senior)
ResourceCategory.create(resource_id: 42, category_id: mentally_handicapped)

ResourceCategory.create(resource_id: 43, category_id: shelter)
ResourceCategory.create(resource_id: 43, category_id: women)
ResourceCategory.create(resource_id: 43, category_id: victims)

ResourceCategory.create(resource_id: 44, category_id: shelter)
ResourceCategory.create(resource_id: 44, category_id: senior)
ResourceCategory.create(resource_id: 44, category_id: mentally_handicapped)

ResourceCategory.create(resource_id: 45, category_id: shelter)
ResourceCategory.create(resource_id: 45, category_id: women)
ResourceCategory.create(resource_id: 45, category_id: legal)
ResourceCategory.create(resource_id: 45, category_id: victims)



















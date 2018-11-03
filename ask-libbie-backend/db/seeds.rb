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
allResources = {
  "resources": [
    { "name": "Houston Area Women's Center",
      "address": "1010 Waugh",
      "city": "Houston",
      "state": "TX",
      "zipcode": 77019,
      "website": "http://www.hawc.org/",
      "phone": "713-528-2121",
      "description": "Shelter and support services to survivors of domestic and sexual violence. Individuals and families fleeing from abuse can find safety and support our 120-bed shelter and residential facility. The Houston Area Women's Center shelter is at an undisclosed location and supports 24-hour surveillance and security personnel."
    }, {
      "name": "SEARCH Homeless Services",
      "address": "2505 Fannin St.",
      "city": "Houston",
      "state": "TX",
      "zipcode": 77002,
      "website": "www.searchhomeless.org/",
      "phone": "713-739-7752",
      "description": "SEARCH Homeless Services helps thousands of men, women and children each year move from the streets, into jobs and safe, stable housing. SEARCH meets clients where they are and gets them back on their feet through services that engage, stabilize, educate, employ and house."
    }, {
      "name": "The Beacon", 
      "address": "1212 Prairie St.",
      "city": "Houston", 
      "state": "TX", 
      "zipcode": 77002, 
      "website": "http://www.beaconhomeless.org",
      "phone": "713-220-9737", 
      "description": "Our Mission Our mission is to provide services that restore dignity, self-respect and hope to Houston's poor and homeless. THE BEACON is a 501(c)3 nonprofit organization established by Christ Church Cathedral." 
	  }, { 
	  	"name": "Covenant House Texas", 
	  	"address": "1111 Lovett Blvd.",
	  	"city": "Houston", 
	  	"state": "TX", 
	  	"zipcode": 77006, 
	  	"website": "http://www.covenanthouse.org/homeless-charity/texas",
	  	"phone": "713-523-2231", 
	  	"description": "Provides a shelter for homeless youth. Residents are provided with room, food, clothing, crisis intervention counseling, health services (both on site and through referral), short-term casework, counseling, substance abuse counseling, mental health counseling, GED program, education and vocational counseling and referral." 
	  }, { 
	  	"name": "Bread of Life Houston Homeless Support Services",
	  	"address": "1703 Gray St.", 
	  	"city": "Houston", 
	  	"state": "TX", 
	  	"zipcode": 77003, 
	  	"website": "www.breadoflifeinc.org",
	  	"phone": "713-659-3237", 
	  	"description": "The Daybreak program welcomes homeless guests five days a week, beginning at 6:00 am. Additional Services include substance abuse counseling/case management and daily job training/employment assistance. We also have a Culinary Arts Program that prepares guests for certifications. Laundry/Shower/Hygiene Services." 
	  }, { 
	  	"name": "Salvation Army Houston Family Residence", 
	  	"address": "1603 McGowen",
	  	"city": "Houston", 
	  	"state": "TX", 
	  	"zipcode": 77004, 
	  	"website": "http://salvationarmyhouston.org/family-residence/",
	  	"phone": "713-650-6530", 
	  	"description": "Provides comprehensive total care for women and families needing temporary emergency shelter or transitional living. The Family Residence provides a place of safety and healing for women and children, many of whom are victims of domestic violence, crime, and generational poverty." 
	  }, { 
	  	"name": "Magnificat Houses", 
	  	"address": "3300 Caroline St.",
	  	"city": "Houston", 
	  	"state": "TX", 
	  	"zipcode": 77004, 
	  	"website": "http://magnificathousesinc.org/",
	  	"phone": "713-520-0461", 
	  	"description": "We have houses for men, women and houses targeted to those with special needs. All are safe, secure, and supervised 24/7. Provided are nutritious home-cooked meals every day, basic laundry services, bed linens, towels, etc." 
	  }, { 
	  	"name": 
	  	"Salvation Army Houston - Harbor Light Center and Red Shield Lodge", 
	  	"address": "2407 North Main St.",
	  	"city": "Houston", 
	  	"state": "TX", 
	  	"zipcode": 77009, 
	  	"website": "http://salvationarmyhouston.org/harbor-light/",
	  	"phone": "713-224-2875", 
	  	"description": "Offers access to immediate and long term shelter, medical screening and referral, and a spiritual approach to recovery and self sufficiency. Minimum age 18." 
	  }, { 
	  	"name": "Sally's House - Salvation Army Houston", 
	  	"address": "1717 Congress",
	  	"city": "Houston",
	  	"state": "TX", 
	  	"zipcode": 77002, 
	  	"website": "http://salvationarmyhouston.org/sallys-house/",
	  	"phone": "713-223-8889", 
	  	"description": "Sally's House assists women in obtaining the strength, capability, and means to perform effectively without drugs and alcohol. Since 1999, a 60-bed recovery program has provided individualized care to women recovering from various addictions. In 2012, The  Army opened The Anne and Hugh Roff Safe Harbor for Women, a 20-bed emergency shelter serving women from all walks of life who find themselves homeless and in need of shelter." 
	  }, { 
	  	"name": "New Hope Housing Inc.", 
	  	"address": "320 Hamilton St.",
	  	"city": "Houston", 
	  	"state": "TX", 
	  	"zipcode": 77002, 
	  	"website": "http://newhopehousing.com/",
	  	"phone": "713-223-1995", 
	  	"description": "Transitional housing for low income families." 
	  }, { 
	  	"name": "Doris and Carlos Morris Mens Development Center", 
	  	"address": "1811 Ruiz",
	  	"city": "Houston", 
	  	"state": "TX", 
	  	"zipcode": 77002, 
	  	"website": "https://www.sohmission.org/our-services/mens-development-center/",
	  	"phone": "713-227-8900", 
	  	"description": "Provides a walk-in day shelter and overnight shelter for homeless, transient men as well as a six-month program for men committed to changing their lives through spiritual and educational counseling." 
	  }, { 
		"name": "Miryam's Hostel - Loaves and Fishes", 
		"address": "2009 Congress St.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77002, 
		"website": "http://www.magnificathousesinc.org/Miryams.html",
		"phone": "713-224-1373", 
		"description": "Women who live on the street have special needs not always addressed by agencies. We offer a clean, secure dormitory bed for up to four nights, a hot bath, clean pajamas, and breakfast. We do not need her explanation for being on the street - we just care about her safety and well-being. Women needing this temporary service are also eligible to apply for residency in one of our regular women's houses." 
	}, { 
		"name": "U.S. Veterans Initiative - Veterans Seeking Housing", 
		"address": "4640 Main St. #213",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77002, 
		"website": "http://www.usvetsinc.org/houston/",
		"phone": "713-797-2912", 
		"description": "Housing resources for veterans." 
	}, { 
		"name": "Star of Hope - Women & Family Emergency Shelter", 
		"address": "419 Dowling",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77003, 
		"website": "https://www.sohmission.org/our-services/women-and-family-development-center/",
		"phone": "713-222-2220", 
		"description": "Provides a continuum of care including crisis services through intensive programs offering stability, personal development and hope. Each day at the Women & Family Development Center we house up to 130 families and 160 single women which starts them on the path to stability. We provide programs to help residents break the generational cycle of abuse, neglect and addiction that traps so many single women and families." 
	}, { 
		"name": "Star of Hope Homeless Shelter", 
		"address": "419 Dowling St.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77003, 
		"website": "https://www.sohmission.org/",
		"phone": "713-748-0700", 
		"description": "Star of Hope is a Christ-centered community dedicated to meeting the needs of homeless men, women and their children. Positive life changes are encouraged through structured programs which focus on spiritual growth, education, employment, life management and recovery from substance abuse." 
	}, { 
		"name": "The Westfield Residential Treatment Center For Teens", 
		"address": "5501 Austin St.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77004, 
		"website": "www.thewestfieldhouse.org",
		"phone": "713-528-2008", 
		"description": "We are a 24-hour residential treatment center for boy teens ages 10-18 with emotional disorders." 
	}, { 
		"name": "Madge Bush Transitional Living Center", 
		"address": "3410 Drew St.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77004, 
		"website": "http://wheelera5cs.org/",
		"phone": "832-541-1986", 
		"description": "Transitional housing for single women, over the age of 22 years, with 1-2 children in a homeless situation." 
	}, { 
		"name": "Lil Audrey's Safe Place", 
		"address": "2505 Southmore",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77004, 
		"website": "http://www.lilaudreysafeplace.com/",
		"phone": "713-529-2344", 
		"description": "Lil Audrey's Safe Place Foundation is a safe environment within a transitional homeless facility and emergency shelter that house alumni of the foster care system seeking a Post Secondary Education." 
	}, { 
		"name": "AIDS Housing Coalition Houston-AHCH-inc.", 
		"address": "502 W. 24th",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77008, 
		"website": "http://ahchinc.webs.com",
		"phone": "713-864-1795", 
		"description": "Guest household for males with HIV, AIDS, Cancer, etc. People who are classified as disabled and are low income. West Heights House can serve a guest 30, 60 or 90 days. Shared kitchen and bath - private bedroom. This is a fee based program with no deposit required. No alcohol or illegal drugs permitted. These are not apartments just private bedrooms. Limited food pantry and free HIV mentorship provided." 
	}, { 
		"name": "The Open Door Mission", 
		"address": "5803 Harrisburg Blvd.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77011, 
		"website": "http://www.opendoorhouston.org/",
		"phone": "713-921-7520", 
		"description": "A Christ-centered emergency relief and rehabilitation shelter dedicated to meeting the needs of men in our community who are homeless, addicted, destitute and disabled." 
	}, { 
		"name": "The Life Center for the Homeless", 
		"address": "4516 Old Yale St.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77018, 
		"website": "http://www.lifecenterhouston.com",
		"phone": "832-292-3295", 
		"description": "The Life Center operates as a 24-hour refuge for those who are in need. There is also a 90-day Rehabilitation Program." 
	}, { 
		"name": "Modest Family Health Care Center", 
		"address": "1008 Danube",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77051, 
		"phone": "713-733-2458", 
		"description": "Emergency - Single Adults" 
	}, { 
		"name": "Turning Point Center", 
		"address": "1701 Jacquelyn Dr.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77055, 
		"website": "www.turningpointcenter.org",
		"phone": "713-957-0099", 
		"description": "The Turning Point Center offers food, shelter, and other rehabilitative services to meet the physical and emotional needs of a neglected segment of society: underprivileged individuals, aged 50 and over." 
	}, { 
		"name": "Santa Maria Hostel", 
		"address": "2005 Jacquelyn",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77055, 
		"website": "http://www.santamariahostel.org/",
		"phone": "713-957-2413", 
		"description": "The mission of Santa Maria Hostel is to empower women and their families to lead healthy, successful, productive and self-fulfilling lives. Santa Maria is Texas' largest multi-site residential and outpatient substance abuse treatment center and one of a very few to provide a comprehensive continuum for pregnant and parenting women and their children." 
	}, { 
		"name": "Harris County Protective Services for Children and Adults - Chimney Rock Center", 
		"city": "Houston", 
		"address": "6300 Chimney Rock",
		"state": "TX", 
		"zipcode": 77081, 
		"website": "http://www.hc-ps.org/triad_prevention.htm",
		"phone": "713-295-2600", 
		"description": "Emergency shelter services." 
	}, { 
		"name": "Bonita Street House of Hope", 
		"city": "Houston", 
		"address": "2005 Jacquelyn",
		"state": "TX", 
		"zipcode": 77093, 
		"website": "http://www.santamariahostel.org/",
		"phone": "713-691-0900", 
		"description": "Transitional housing with support services for persons who are homeless, chemically dependent, and ex-felons.Insurance accepted: $80.00 fee to live in shelter, with all bills paid.The Bonita Hope Transitional Housing complex consists of eight buildings with 60 apartment units" 
	}, { 
		"name": "Bethel Home for Women (Renewed Innovations Inc.)", 
		"city": "Houston", 
		"address": "2005 Jacquelyn",
		"state": "TX", 
		"zipcode": 77055, 
		"website": "http://www.santamariahostel.org/",
		"phone": "832-894-9348", 
		"description": "Emergency Shelter / Transitional Housing for women who are homeless or faced with a crisis situation. " 
	}, { 
		"name": "Project Hope Recovery Center", 
		"city": "Houston", 
		"address": "2005 Jacquelyn",
		"state": "TX", 
		"zipcode": 77017, 
		"website": "http://www.santamariahostel.org/",
		"phone": "877-491-3816", 
		"description": "12 to 18 month residential facility for men and women struggling with life controlling situations ranging from addiction to abuse. This faith-based residential program assists individuals in recovering from drug and alcohol addiction and the life-controlling problems associated with it." 
	}, { 
		"name": "Crossroads At Park Place, Inc.", 
		"city": "Houston", 
		"address": "2005 Jacquelyn",
		"state": "TX", 
		"zipcode": 77017, 
		"website": "http://www.santamariahostel.org/",
		"phone": "713-252-3604", 
		"description": "What We Do: Crossroads are open each Tuesday and Thursday from 7:00 a.m. to 1 p.m. We serve breakfast and lunch along with a generous portion of friendship. Shower facilities are available for women and men, we offer laundry services, a clothing closet, hygiene and first aid p" 
	}, { 
		"name": "Grace and Joy Transitional Living", 
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77035, 
		"phone": "832-890-9253", 
		"description": "Transitional Living for the elderly and disabled women we also serve disabled males as well income-based program that offers 3 meals per day educational programs and to help those to be come back productive in society" 
	}, { 
		"name": "Mission of Yahweh", 
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77041, 
		"phone": "713-466-4785", 
		"description": "Provides emergency shelter for homeless women and women and their young children. Faith-based shelter located in Houston, Texas that empowers, enriches and restores the lives of homeless women and children and provides outreach services to low income families in our neighborhood. Eligib" 
	}, { 
		"name": "Spirit Key Transitional Housing", 
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77086, 
		"phone": "281-971-0014", 
		"description": "Transitional housing and work facility for homeless, ex-offenders and veterans. After care re-entry program.Spirit Key is a transitional work facility for men located in Houston, north Harris County. Our services include: housing, mentoring and job and life skills training.  We&nbs" 
	}, { 
		"name": "Bridge Over Troubled Water Inc", 
		"city": "Pasadena", 
		"state": "TX", 
		"zipcode": 77504, 
		"phone": "713-472-0753", 
		"description": "Hours: Monday hours 8:30 am - 5:30 am The Bridge Over Troubled Waters, Inc., (The Bridge) a comprehensive crisis center, assists survivors of domestic and/or sexual violence and those who are homeless due to these circumstances or another crisis. As the only center of its kind in south" 
	}, { 
		"name": "Sarah's House", 
		"city": "Pasadena", 
		"state": "TX", 
		"zipcode": 77502, 
		"phone": "713-475-1480", 
		"description": "7 day ER Shelter, must be employed or seeking employment." 
	}, { 
		"name": "Roz House Transitional Housing For Women", 
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77076, 
		"phone": "281-405-0096", 
		"description": "Our mission is to create a haven for women by being a place of healing and encouragement. We will be the rebirth point for their personal growth, spiritual support, economic literacy, life skills and employment resources. Transitional housing.The Roz House provides 4 bedrooms and 3 bath" 
	}, { 
		"name": "FamilyTime Crisis and Counseling Center", 
		"city": "Humble", 
		"state": "TX", 
		"zipcode": 77347, 
		"phone": "281-446-2615", 
		"description": "Counseling ServicesFamilyTime offers professional counseling services for:    Individuals    Families    Couples    Teens    Group Counseling    Play Therapy for Childr" 
	}, { 
		"name": "Northwest Assistance Ministries", 
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77090, 
		"phone": "281-885-4575", 
		"description": "Long term emergency (3 months) shelters for homeless families (only)." 
	}, { 
		"name": "Family Promise of Lake Houston", 
		"city": "Humble", 
		"state": "TX", 
		"zipcode": 77338, 
		"phone": "281-441-3754", 
		"description": " Family Promise of Lake Houston will provide a caring and positive environment for homeless children and their families while they design and execute a plan to break the cycle of homelessness in their lives. While utilizing the energy of over 2,800 community volunteers, together we are dedicate" 
	}, { 
		"name": "The Love House", 
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77289, 
		"phone": "832-607-1716", 
		"description": "Shelter for ladies that are transition due to homeless or in need of a crisis intervention." 
	}, { 
		"name": "Desire To Live Assisted Living", 
		"city": "Alvin", 
		"state": "TX", 
		"zipcode": 77511, 
		"phone": "832-512-3863", 
		"description": "We offer transitional services for elderly and needy people. For those of you who are able to work We offer jobs temporary shelter. We will assist you in getting back on your feet! Times are extremely hard these days please do not feel alone. We are here to help!" 
	}, { 
		"name": "Bay Area Turning Point", 
		"city": "Webster", 
		"state": "TX", 
		"zipcode": 77598, 
		"phone": "281-286-2525", 
		"description": "Emergency Domestic Violence Women and Children Shelter - Provides shelter to Homeless Families Victims of Domestic Violence.BATP is a non-profit; community based social service agency providing a variety of assistance services, including shelter, to families in need and community educati" 
	}, { 
		"name": "Bay Area Homeless Services", 
		"city": "Baytown", 
		"state": "TX", 
		"zipcode": 77520, 
		"phone": "281-837-1654", 
		"description": "Emergency Shelter ServicesBAHS provides emergency homeless shelter services for low-income clients in the East Harris County, Baytown, Liberty County & Chambers County area. A safe, secure, drug/alcohol-free community geared to promoting employment opportunities. We are a weapon-free campus." 
	}, { 
		"name": "Fort Bend County Women's Center", 
		"city": "Richmond", 
		"state": "TX", 
		"zipcode": 77406, 
		"phone": "281-342-4357", 
		"description": "Emergency Domestic violence shelter for Women and Children - undisclosed locationOur services include our 24 hour crisis hotline, emergency shelter, counseling, legal and medical support and much more. We also offer community education and outreach designed to reduce domestic violence a" 
	}, { 
		"name": "Rescue Bank Houston", 
		"city": "Richmond", 
		"state": "TX", 
		"zipcode": 77406, 
		"phone": "281-342-4357", 
		"description": "Emergency Domestic violence shelter for Women and Children - undisclosed locationOur services include our 24 hour crisis hotline, emergency shelter, counseling, legal and medical support and much more. We also offer community education and outreach designed to reduce domestic violence a" 
	}
	]
}

allResources[:resources].each do |resource|
  Resource.create(resource)
end

# ResourcesCategories

ResourceCategory.create(resource_id: 1, category: women)
ResourceCategory.create(resource_id: 1, category: shelter)
ResourceCategory.create(resource_id: 1, category: victims)

ResourceCategory.create(resource_id: 2, category: shelter)
ResourceCategory.create(resource_id: 2, category: career)

ResourceCategory.create(resource_id: 3, category: food)
ResourceCategory.create(resource_id: 3, category: legal)
ResourceCategory.create(resource_id: 3, category: shelter)
ResourceCategory.create(resource_id: 3, category: laundry)

ResourceCategory.create(resource_id: 4, category: shelter)
ResourceCategory.create(resource_id: 4, category: teens)
ResourceCategory.create(resource_id: 4, category: education)
ResourceCategory.create(resource_id: 4, category: health)

ResourceCategory.create(resource_id: 5, category: food)
ResourceCategory.create(resource_id: 5, category: legal)
ResourceCategory.create(resource_id: 5, category: career)
ResourceCategory.create(resource_id: 5, category: education)
ResourceCategory.create(resource_id: 5, category: substance)

ResourceCategory.create(resource_id: 6, category: shelter)
ResourceCategory.create(resource_id: 6, category: teens)
ResourceCategory.create(resource_id: 6, category: victims)
ResourceCategory.create(resource_id: 6, category: women)

ResourceCategory.create(resource_id: 7, category: men)
ResourceCategory.create(resource_id: 7, category: women)
ResourceCategory.create(resource_id: 7, category: shelter)
ResourceCategory.create(resource_id: 7, category: mentally_handicapped)

ResourceCategory.create(resource_id: 8, category: shelter)
ResourceCategory.create(resource_id: 8, category: health)

ResourceCategory.create(resource_id: 9, category: women)
ResourceCategory.create(resource_id: 9, category: shelter)
ResourceCategory.create(resource_id: 9, category: substance)

ResourceCategory.create(resource_id: 10, category: shelter)

ResourceCategory.create(resource_id: 11, category: men)
ResourceCategory.create(resource_id: 11, category: education)
ResourceCategory.create(resource_id: 11, category: shelter)
ResourceCategory.create(resource_id: 11, category: food)

ResourceCategory.create(resource_id: 12, category: women)
ResourceCategory.create(resource_id: 12, category: shelter)
ResourceCategory.create(resource_id: 12, category: food)

ResourceCategory.create(resource_id: 13, category: shelter)
ResourceCategory.create(resource_id: 13, category: veterans)

ResourceCategory.create(resource_id: 14, category: shelter)
ResourceCategory.create(resource_id: 14, category: women)

ResourceCategory.create(resource_id: 15, category: shelter)
ResourceCategory.create(resource_id: 15, category: men)
ResourceCategory.create(resource_id: 15, category: women)

ResourceCategory.create(resource_id: 16, category: shelter)
ResourceCategory.create(resource_id: 16, category: teens)

ResourceCategory.create(resource_id: 17, category: women)
ResourceCategory.create(resource_id: 17, category: shelter)

ResourceCategory.create(resource_id: 18, category: education)
ResourceCategory.create(resource_id: 18, category: shelter)

ResourceCategory.create(resource_id: 19, category: hiv)
ResourceCategory.create(resource_id: 19, category: shelter)

ResourceCategory.create(resource_id: 20, category: men)
ResourceCategory.create(resource_id: 20, category: shelter)
ResourceCategory.create(resource_id: 20, category: substance)

ResourceCategory.create(resource_id: 21, category: shelter)
ResourceCategory.create(resource_id: 21, category: food)
ResourceCategory.create(resource_id: 21, category: education)
ResourceCategory.create(resource_id: 21, category: career)
ResourceCategory.create(resource_id: 21, category: substance)
ResourceCategory.create(resource_id: 21, category: clothing)

ResourceCategory.create(resource_id: 22, category: shelter)
ResourceCategory.create(resource_id: 22, category: mentally_handicapped)

ResourceCategory.create(resource_id: 223, category: shelter)
ResourceCategory.create(resource_id: 223, category: seniors)
ResourceCategory.create(resource_id: 223, category: food)

ResourceCategory.create(resource_id: 24, category: shelter)
ResourceCategory.create(resource_id: 24, category: women)
ResourceCategory.create(resource_id: 24, category: legal)
ResourceCategory.create(resource_id: 24, category: career)
ResourceCategory.create(resource_id: 24, category: substance)

ResourceCategory.create(resource_id: 25, category: shelter)

ResourceCategory.create(resource_id: 26, category: shelter)
ResourceCategory.create(resource_id: 26, category: felons)
ResourceCategory.create(resource_id: 26, category: substance)

ResourceCategory.create(resource_id: 27, category: shelter)
ResourceCategory.create(resource_id: 27, category: women)
ResourceCategory.create(resource_id: 27, category: victims)

ResourceCategory.create(resource_id: 28, category: shelter)
ResourceCategory.create(resource_id: 28, category: victims)
ResourceCategory.create(resource_id: 28, category: substance)

ResourceCategory.create(resource_id: 29, category: food)
ResourceCategory.create(resource_id: 29, category: health)
ResourceCategory.create(resource_id: 29, category: showers)
ResourceCategory.create(resource_id: 29, category: laundry)
ResourceCategory.create(resource_id: 29, category: clothing)

ResourceCategory.create(resource_id: 30, category: shelter)
ResourceCategory.create(resource_id: 30, category: seniors)
ResourceCategory.create(resource_id: 30, category: food)
ResourceCategory.create(resource_id: 30, category: education)

ResourceCategory.create(resource_id: 31, category: shelter)
ResourceCategory.create(resource_id: 31, category: women)

ResourceCategory.create(resource_id: 32, category: shelter)
ResourceCategory.create(resource_id: 32, category: felons)
ResourceCategory.create(resource_id: 32, category: veterans)
ResourceCategory.create(resource_id: 32, category: men)
ResourceCategory.create(resource_id: 32, category: education)
ResourceCategory.create(resource_id: 32, category: career)

ResourceCategory.create(resource_id: 33, category: shelter)
ResourceCategory.create(resource_id: 33, category: victims)

ResourceCategory.create(resource_id: 34, category: shelter)

ResourceCategory.create(resource_id: 35, category: shelter)
ResourceCategory.create(resource_id: 35, category: women)
ResourceCategory.create(resource_id: 35, category: career)
ResourceCategory.create(resource_id: 35, category: education)

ResourceCategory.create(resource_id: 36, category: health)
ResourceCategory.create(resource_id: 36, category: teens)

ResourceCategory.create(resource_id: 37, category: shelter)

ResourceCategory.create(resource_id: 38, category: shelter)
ResourceCategory.create(resource_id: 38, category: teens)

ResourceCategory.create(resource_id: 39, category: shelter)
ResourceCategory.create(resource_id: 39, category: women)
ResourceCategory.create(resource_id: 39, category: victims)

ResourceCategory.create(resource_id: 40, category: shelter)
ResourceCategory.create(resource_id: 40, category: seniors)
ResourceCategory.create(resource_id: 40, category: mentally_handicapped)

ResourceCategory.create(resource_id: 41, category: shelter)
ResourceCategory.create(resource_id: 41, category: women)
ResourceCategory.create(resource_id: 41, category: victims)

ResourceCategory.create(resource_id: 42, category: shelter)
ResourceCategory.create(resource_id: 42, category: seniors)
ResourceCategory.create(resource_id: 42, category: mentally_handicapped)

ResourceCategory.create(resource_id: 43, category: shelter)
ResourceCategory.create(resource_id: 43, category: women)
ResourceCategory.create(resource_id: 43, category: legal)
ResourceCategory.create(resource_id: 43, category: victims)












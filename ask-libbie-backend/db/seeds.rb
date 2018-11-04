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
		"address": "6300 Chimney Rock",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77081, 
		"website": "http://www.hc-ps.org/triad_prevention.htm",
		"phone": "713-295-2600", 
		"description": "Emergency shelter services." 
	}, { 
		"name": "Project Hope Recovery Center", 
		"address": "7805 Kimble St.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77017, 
		"website": "http://www.prohope.net/",
		"phone": "877-491-3816", 
		"description": "12 to 18-month residential facility for men and women struggling with life controlling situations ranging from addiction to abuse. This faith-based residential program assists individuals in recovering from drug and alcohol addiction and the life-controlling problems associated with it." 
	}, { 
		"name": "Crossroads At Park Place, Inc.", 
		"city": "Houston", 
		"address": "3827 Broadway",
		"state": "TX", 
		"zipcode": 77017, 
		"website": "http://www.crossroadsatparkplace.org",
		"phone": "713-252-3604", 
		"description": "We serve breakfast and lunch along with a generous portion of friendship. Shower facilities are available for women and men, we offer laundry services, a clothing closet, hygiene and first aid products, haircuts, computer terminals and our community partners provide medical and social services." 
	}, { 
		"name": "Grace and Joy Transitional Living", 
		"address": "6342 Ludington Dr.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77035, 
		"phone": "832-890-9253", 
		"description": "Transitional Living for the elderly and disabled women; we also serve disabled males and have an income-based program that offers 3 meals per day and educational programs." 
	}, { 
		"name": "Mission of Yahweh", 
		"address": "10247 Algiers Rd.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77041, 
		"website": "http://www.missionofyahweh.org/",
		"phone": "713-466-4785", 
		"description": "Provides emergency shelter for homeless women and their young children." 
	}, { 
		"name": "Spirit Key Transitional Housing", 
		"address": "13617 Kaltenbrun Rd.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77086, 
		"website": "http://www.spiritkey.org/",
		"phone": "281-971-0014", 
		"description": "Transitional housing and work facility for homeless, ex-offenders and veterans. After care re-entry program." 
	}, { 
		"name": "Bridge Over Troubled Water Inc.", 
		"address": "3811 Allen-Genoa Rd.",
		"city": "Pasadena", 
		"state": "TX", 
		"zipcode": 77504, 
		"website": "http://www.thebridgeovertroubledwaters.org",
		"phone": "713-472-0753", 
		"description": "Assists survivors of domestic and/or sexual violence and those who are homeless due to these circumstances or another crisis." 
	}, { 
		"name": "Sarah's House", 
		"address": "2210 Wichita",
		"city": "Pasadena", 
		"state": "TX", 
		"zipcode": 77502, 
		"website": "http://www.thebridgeovertroubledwaters.org",
		"phone": "713-475-1480", 
		"description": "7-day emergency shelter." 
	}, { 
		"name": "Roz House Transitional Housing For Women", 
		"address": "11901 Meadow Pass Dr.",
		"city": "Houston", 
		"state": "TX", 
		"zipcode": 77076, 
		"website": "http://mincholbert.wix.com/rozhouse",
		"phone": "281-405-0096", 
		"description": "The Roz House provides 4 bedrooms and 3 bathrooms that accommodate 8 women. The bedrooms are grouped around a common living area, kitchen, and private counseling area. There is an acitivity center which includes laundry facilities, computer lab, resource center and Salon on the Go." 
	}, { 
		"name": "FamilyTime Crisis and Counseling Center", 
		"address": "1203 S. Houston Ave.",
		"city": "Humble", 
		"state": "TX", 
		"zipcode": 77347, 
		"website": "https://familytimeccc.org/",
		"phone": "281-446-2615", 
		"description": "Professional counseling services for individuals, families, and children." 
	}, { 
		"name": "Family Promise of Lake Houston", 
		"address": "111 South Ave. G",
		"city": "Humble", 
		"state": "TX", 
		"zipcode": 77338, 
		"website": "http://www.fplh.org/",
		"phone": "281-441-3754", 
		"description": "We serve low-income families that become homeless due to an unfortunate circumstance, such as a fire, flood, the death of a spouse, loss of a job, an eviction, or a foreclosure of a home. Our families include infants, children, teenagers, and couples. Single men and anyone with serious psychiatric problems or those with current drug or alcohol addiction problems are not appropriate; however, we work closely with other shelters in the area to ensure that those we are unable to serve find shelter elsewhere." 
	}, { 
		"name": "Desire To Live Assisted Living", 
		"address": "2220 Cr. 144",
		"city": "Alvin", 
		"state": "TX", 
		"zipcode": 77511, 
		"website": "http://www.desiretolive.org",
		"phone": "832-512-3863", 
		"description": "We offer transitional services for elderly and needy people." 
	}, { 
		"name": "Bay Area Turning Point", 
		"address": "210 S. Walnut",
		"city": "Webster", 
		"state": "TX", 
		"zipcode": 77598, 
		"website": "http://www.bayareaturningpoint.org/",
		"phone": "281-286-2525", 
		"description": "Provides a variety of services to victims of Domestic Violence and their families. Services include Emergency and Transitional Shelter, Emergency Medical Care and Personal Care, Safety Planning, Legal and Financial Assistance, Support group and individual counseling, Employment Assistance, and Crisis Follow-up Services." 
	}, { 
		"name": "Bay Area Homeless Services", 
		"address": "3406 Wisconsin St.",
		"city": "Baytown", 
		"state": "TX", 
		"zipcode": 77520, 
		"website": "http://bahs-shelter.org/",
		"phone": "281-837-1654", 
		"description": "Bay Area Homeless Services provides housing and intensive case management services to intact homeless families who require supportive services in order to transition into more permanent housing within the community." 
	}, { 
		"name": "Fort Bend County Women's Center", 
		"address": "P.O. Box 183",
		"city": "Richmond", 
		"state": "TX", 
		"zipcode": 77406, 
		"website": "http://www.fbwc.org/",
		"phone": "281-342-4357", 
		"description": "Our services include our 24 hour crisis hotline, emergency shelter, counseling, legal and medical support and much more. We also offer community education and outreach designed to reduce domestic violence and sexual assault." 
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

ResourceCategory.create(resource_id: 23, category: shelter)
ResourceCategory.create(resource_id: 23, category: seniors)
ResourceCategory.create(resource_id: 23, category: food)

ResourceCategory.create(resource_id: 24, category: shelter)
ResourceCategory.create(resource_id: 24, category: women)
ResourceCategory.create(resource_id: 24, category: legal)
ResourceCategory.create(resource_id: 24, category: career)
ResourceCategory.create(resource_id: 24, category: substance)

ResourceCategory.create(resource_id: 25, category: shelter)

ResourceCategory.create(resource_id: 26, category: shelter)
ResourceCategory.create(resource_id: 26, category: victims)
ResourceCategory.create(resource_id: 26, category: substance)

ResourceCategory.create(resource_id: 27, category: food)
ResourceCategory.create(resource_id: 27, category: health)
ResourceCategory.create(resource_id: 27, category: showers)
ResourceCategory.create(resource_id: 27, category: laundry)
ResourceCategory.create(resource_id: 27, category: clothing)

ResourceCategory.create(resource_id: 28, category: shelter)
ResourceCategory.create(resource_id: 28, category: seniors)
ResourceCategory.create(resource_id: 28, category: food)
ResourceCategory.create(resource_id: 28, category: education)

ResourceCategory.create(resource_id: 29, category: shelter)
ResourceCategory.create(resource_id: 29, category: women)

ResourceCategory.create(resource_id: 30, category: shelter)
ResourceCategory.create(resource_id: 30, category: felons)
ResourceCategory.create(resource_id: 30, category: veterans)
ResourceCategory.create(resource_id: 30, category: men)
ResourceCategory.create(resource_id: 30, category: education)
ResourceCategory.create(resource_id: 30, category: career)

ResourceCategory.create(resource_id: 31, category: shelter)
ResourceCategory.create(resource_id: 31, category: victims)

ResourceCategory.create(resource_id: 32, category: shelter)

ResourceCategory.create(resource_id: 33, category: shelter)
ResourceCategory.create(resource_id: 33, category: women)
ResourceCategory.create(resource_id: 33, category: career)
ResourceCategory.create(resource_id: 33, category: education)

ResourceCategory.create(resource_id: 34, category: health)
ResourceCategory.create(resource_id: 34, category: teens)

ResourceCategory.create(resource_id: 35, category: shelter)
ResourceCategory.create(resource_id: 35, category: teens)

ResourceCategory.create(resource_id: 36, category: shelter)
ResourceCategory.create(resource_id: 36, category: seniors)
ResourceCategory.create(resource_id: 36, category: mentally_handicapped)

ResourceCategory.create(resource_id: 37, category: shelter)
ResourceCategory.create(resource_id: 37, category: women)
ResourceCategory.create(resource_id: 37, category: victims)

ResourceCategory.create(resource_id: 38, category: shelter)
ResourceCategory.create(resource_id: 38, category: seniors)
ResourceCategory.create(resource_id: 38, category: mentally_handicapped)

ResourceCategory.create(resource_id: 39, category: shelter)
ResourceCategory.create(resource_id: 39, category: women)
ResourceCategory.create(resource_id: 39, category: legal)
ResourceCategory.create(resource_id: 39, category: victims)












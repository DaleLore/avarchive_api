User.destroy_all
Collection.destroy_all
Item.destroy_all


#USER
lorena = User.create(username: "Lorena", password: "avgeek")
ashley = User.create(username: "Ashley", password: "archive")
dave = User.create(username: "Dave", password: "ricecapades")

#COLLECTION
lrlHMV = Collection.create(collection_name:"Lorena's Home Movies", user_id: lorena.id,  description: "Lorena's home movies")
paraguay = Collection.create(collection_name:"Paraguay 2008", user_id: lorena.id, description: "Summer 2008 in Paraguay")
test1 = Collection.create(collection_name:"Test1", user_id: lorena.id, description: "Testing for frontend")
test2 = Collection.create(collection_name:"Test2", user_id: lorena.id, description: "Testing for frontend")
test3 = Collection.create(collection_name:"Test3", user_id: lorena.id, description: "Testing for frontend")
test4 = Collection.create(collection_name:"Test4", user_id: lorena.id, description: "Testing for frontend")
test5 = Collection.create(collection_name:"Test5", user_id: lorena.id, description: "Testing for frontend")
test6 = Collection.create(collection_name:"Test6", user_id: lorena.id, description: "Testing for frontend")
test7 = Collection.create(collection_name:"Test7", user_id: lorena.id, description: "Testing for frontend")


ricecapades = Collection.create(collection_name:"Rice's kids", user_id: dave.id, description: "Andrew and Isaac")
hiking = Collection.create(collection_name:"Rice's hiking trip", user_id: dave.id, description: "Family hiking trip")
test1 = Collection.create(collection_name:"Test1", user_id: dave.id, description: "Testing for frontend")
test2 = Collection.create(collection_name:"Test2", user_id: dave.id, description: "Testing for frontend")
test3 = Collection.create(collection_name:"Test3", user_id: dave.id, description: "Testing for frontend")
test4 = Collection.create(collection_name:"Test4", user_id: dave.id, description: "Testing for frontend")
test5 = Collection.create(collection_name:"Test5", user_id: dave.id, description: "Testing for frontend")
test6 = Collection.create(collection_name:"Test6", user_id: dave.id, description: "Testing for frontend")
test7 = Collection.create(collection_name:"Test7", user_id: dave.id, description: "Testing for frontend")

cats = Collection.create(collection_name:"Verlaine and Bear", user_id: ashley.id, description: "cats cats cats")
conference = Collection.create(collection_name:"Ashley's Conference travels", user_id: ashley.id, description: "SAA Austin 2019")
test1 = Collection.create(collection_name:"Test1", user_id: ashley.id, description: "Testing for frontend")
test2 = Collection.create(collection_name:"Test2", user_id: ashley.id, description: "Testing for frontend")
test3 = Collection.create(collection_name:"Test3", user_id: ashley.id, description: "Testing for frontend")
test4 = Collection.create(collection_name:"Test4", user_id: ashley.id, description: "Testing for frontend")
test5 = Collection.create(collection_name:"Test5", user_id: ashley.id, description: "Testing for frontend")
test6 = Collection.create(collection_name:"Test6", user_id: ashley.id, description: "Testing for frontend")
test7 = Collection.create(collection_name:"Test7", user_id: ashley.id, description: "Testing for frontend")

#ITEMS
Item.create(title:"Paraguay 2008", collection: paraguay, media_type:"Video")
Item.create(title:"Lorena's 5th birthday", collection_id: lrlHMV.id, media_type:"Video")
Item.create(title: "Testing for frontend1", collection_id: lrlHMV.id, media_type:"Video")
Item.create(title: "Testing for frontend2", collection_id: lrlHMV.id, media_type:"Video")
Item.create(title: "Testing for frontend3", collection_id: lrlHMV.id, media_type:"Video")
Item.create(title: "Testing for frontend4", collection_id: lrlHMV.id, media_type:"Video")
Item.create(title: "Testing for frontend5", collection_id: lrlHMV.id, media_type:"Video")
Item.create(title: "Testing for frontend6", collection_id: lrlHMV.id, media_type:"Video")


Item.create(title:"Virgnia Hike", collection_id: hiking.id, media_type:"Film")
Item.create(title:"PA Hike", collection_id: hiking.id, media_type:"Film")
Item.create(title:"New Mexico Hike", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend1", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend2", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend3", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend4", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend5", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend6", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend7", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend8", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend9", collection_id: hiking.id, media_type:"Film")


Item.create(title:"Verlaine", collection_id: cats.id, media_type:"Video")
Item.create(title:"Verlaine", collection_id: cats.id, media_type:"Film")
Item.create(title:"Bear", collection_id: cats.id, media_type:"Video")
Item.create(title:"Verlaine and Bear", collection_id: cats.id, media_type:"Video")
Item.create(title:"Conference Chronicles", collection_id: conference.id, media_type:"Audio")
Item.create(title: "Testing for frontend1", collection_id: hiking.id, media_type:"Film")
Item.create(title: "Testing for frontend2", collection_id: conference.id, media_type:"Film")
Item.create(title: "Testing for frontend3", collection_id: conference.id, media_type:"Film")
Item.create(title: "Testing for frontend4", collection_id: conference.id, media_type:"Film")
Item.create(title: "Testing for frontend5", collection_id: conference.id, media_type:"Film")
Item.create(title: "Testing for frontend6", collection_id: conference.id, media_type:"Film")
Item.create(title: "Testing for frontend7", collection_id: conference.id, media_type:"Film")
Item.create(title: "Testing for frontend8", collection_id: conference.id, media_type:"Film")
Item.create(title: "Testing for frontend9", collection_id: conference.id, media_type:"Film")

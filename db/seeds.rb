User.destroy_all
Collection.destroy_all
Item.destroy_all


#USER
lorena = User.create(username: "Lorena", password: "avgeek")
ashley = User.create(username: "Ashley", password: "archive")
dave = User.create(username: "Dave", password: "ricecapades")

#COLLECTION
lrlHMV = Collection.create(collection_name:"Lorena's Home Movies", user_id: lorena.id,  description: "Lorena's home movies")
balletRecital = Collection.create(collection_name:"Lorena's Ballet Recital", user_id: lorena.id, description: "Lorena's doing ballet")
paraguay = Collection.create(collection_name:"Paraguay 2008", user_id: lorena.id, description: "Summer 2008 in Paraguay")
ricecapades = Collection.create(collection_name:"Rice's kids", user_id: dave.id, description: "Andrew and Isaac")
hiking = Collection.create(collection_name:"Rice's hiking trip", user_id: dave.id, description: "Family hiking trip")
cats = Collection.create(collection_name:"Verlaine and Bear", user_id: ashley.id, description: "cats cats cats")
conference = Collection.create(collection_name:"Ashley's Conference travels", user_id: ashley.id, description: "SAA Austin 2019")

#ITEMS
Item.create(title:"Paraguay 2008", collection: paraguay, media_type:"Video")
Item.create(title:"Lorena's 5th birthday", collection_id: lrlHMV.id, media_type:"Video")
Item.create(title:"Virgnia Hike", collection_id: hiking.id, media_type:"Film")
Item.create(title:"PA Hike", collection_id: hiking.id, media_type:"Film")
Item.create(title:"New Mexico Hike", collection_id: hiking.id, media_type:"Film")
Item.create(title:"Verlaine", collection_id: cats.id, media_type:"Video")
Item.create(title:"Verlaine", collection_id: cats.id, media_type:"Video")
Item.create(title:"Bear", collection_id: cats.id, media_type:"Video")
Item.create(title:"Verlaine and Bear", collection_id: cats.id, media_type:"Video")
Item.create(title:"Conference Chronicles", collection_id: conference.id, media_type:"Audio")

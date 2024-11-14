/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("o4zf27s36es6wmo")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "mbj6v27f",
    "name": "parents",
    "type": "relation",
    "required": false,
    "presentable": false,
    "unique": false,
    "options": {
      "collectionId": "o4zf27s36es6wmo",
      "cascadeDelete": false,
      "minSelect": null,
      "maxSelect": null,
      "displayFields": null
    }
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("o4zf27s36es6wmo")

  // remove
  collection.schema.removeField("mbj6v27f")

  return dao.saveCollection(collection)
})

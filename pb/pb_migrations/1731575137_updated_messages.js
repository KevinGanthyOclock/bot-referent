/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("rthvoq6r0jqnaw3")

  // remove
  collection.schema.removeField("rxj2aag6")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "qwjnbkon",
    "name": "discord_ref",
    "type": "text",
    "required": false,
    "presentable": false,
    "unique": false,
    "options": {
      "min": null,
      "max": null,
      "pattern": ""
    }
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("rthvoq6r0jqnaw3")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "rxj2aag6",
    "name": "discord_ref",
    "type": "text",
    "required": false,
    "presentable": false,
    "unique": false,
    "options": {
      "min": null,
      "max": null,
      "pattern": ""
    }
  }))

  // remove
  collection.schema.removeField("qwjnbkon")

  return dao.saveCollection(collection)
})

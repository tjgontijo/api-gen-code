import { randomUUID } from "node:crypto"
import { Database } from "./database.js"
import { buildRoutePath } from "./utils/build-route-path.js"


const database = new Database()

export const routes = [
  {
    method: 'GET',
    path: buildRoutePath('/types'),
    handler: (req, res) => {
      const { type } = req.query
    
      const types = database.select('types', type ? {
        type: type
      } : null)
      return res.end(JSON.stringify(types))
    }
  },
  {
    method: 'POST',
    path: buildRoutePath('/types'),
    handler: (req, res) => {
      const { type } = req.body
      const createType = {
        id: randomUUID(),
        type,
      }    
      database.insert('types', createType)
      return res.writeHead(201).end()
    }
  },
  {
    method: 'PUT',
    path: buildRoutePath('/types/:id'),
    handler: (req, res) => {
      const { id } = req.params
      const { name } = req.body

      database.update('types', id, {
        name
      })

      return res.writeHead(204).end()
    }
  },
  {
    method: 'DELETE',
    path: buildRoutePath('/types/:id'),
    handler: (req, res) => {
      const { id } = req.params

      database.delete('types', id)

      return res.writeHead(204).end()
    }
  },
  {
    method: 'GET',
    path: buildRoutePath('/groups'),
    handler: (req, res) => {
      const types = database.select('groups')
      return res.end(JSON.stringify(types))
    }
  },
  {
    method: 'POST',
    path: buildRoutePath('/groups'),
    handler: (req, res) => {
      const { group } = req.body
      const createGroup = {
        id: randomUUID(),
        group,
      }    
      database.insert("groups", createGroup)
      return res.writeHead(201).end()
    }
  },
   {
    method: 'GET',
    path: buildRoutePath('/classes'),
    handler: (req, res) => {
      const types = database.select('classes')
      return res.end(JSON.stringify(types))
    }
  },
   {
    method: 'GET',
    path: buildRoutePath('/items'),
    handler: (req, res) => {
      const types = database.select('items')
      return res.end(JSON.stringify(types))
    }
  },
  {
  method: 'GET',
  path: buildRoutePath('/group-type/:id'),
  handler: (req, res) => {
    const { id } = req.params    
    const groups = database.select('groups', { type_id: id });
    const filteredGroups = groups.filter((item) => item.type_id === id);
    return res.end(JSON.stringify(filteredGroups))
  }
},
  {
  method: 'GET',
  path: buildRoutePath('/class-group/:id'),
  handler: (req, res) => {
    const { id } = req.params;
    const classes = database.select('classes');
    const filteredClasses = classes.filter((item) => item.group_id === id);
    return res.end(JSON.stringify(filteredClasses));
  }
},
  {
  method: 'GET',
  path: buildRoutePath('/item-class/:id'),
  handler: (req, res) => {
    const { id } = req.params    
     const items = database.select('items', { class_id: id });
     const filteredItems = items.filter((item) => item.class_id === id);     
     return res.end(JSON.stringify(filteredItems))
  }
},
  {
  method: 'GET',
  path: buildRoutePath('/items/:id'),
  handler: (req, res) => {
    const { id } = req.params    
     const items = database.select('items');
     const filteredItems = items.filter((item) => item.id === id);     
     return res.end(JSON.stringify(filteredItems))
  }
}
]
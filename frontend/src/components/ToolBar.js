import React, { Component } from 'react';
import axios from 'axios'
import update from 'immutability-helper'

class ToolBar extends Component {

  constructor(props) {
    super(props)
    this.state = {
      employees: [],
      addButton: true,
      editButton: true,
      deleteButton: true
    }

    // GET request
    axios.get('http://localhost:3001/api/v1/employees.json')
    .then(response => {
      console.log(response)
      this.setState({employees: response.data})
    })
    .catch(error => console.log(error))

}



newEmployee = () => {

// POST request
  axios.post(
    'http://localhost:3001/api/v1/employees',
    { employee:
      {
        first_name: 'John',
        last_name: 'Cordero',
        title: 'Rails Developer',
        manager_id: 5
      }
    }
  )
  .then(response => {
     console.log(response)
     const employees = update(this.state.employees, {
         $splice: [[0, 0, response.data]]
     })
     this.setState({
       employees: employees,
       addButton: false
     })
   })
   .catch(error => console.log(error))
  }


  editEmployee = () => {

  // put request
  axios.put(`http://localhost:3001/api/v1/employees/10`,{

    first_name: "fasdfsf",
    last_name: "LMfsadfasfsafasAO",
    title: "CE OH OH",
    manager_id: 2
    })
    .then(response => {
      console.log(response.data);
    })
    .catch(error => console.log(error))
  }


  deleteEmployee = () => {

  // delete request
    axios.delete('http://localhost:3001/api/v1/employees/77')
    .then(response => {

      const employeeIndex = this.state.employees.findIndex(x => x.id === 77)
      const employeess = update(this.state.employees, { $splice: [[employeeIndex, 1]]})

       this.setState({
         deleteButton: false,
         employees: employeess
       })
     })

     .catch(error => console.log(error))
    }



  render() {
    return (
      <div>
        <center className="mt-5">
        
        { this.state.addButton &&
        <button type="button" className="btn btn-primary" onClick={this.newEmployee}>Add New Employee</button>
        }
        { this.state.editButton &&
        <button type="button" className="btn btn-primary" onClick={this.editEmployee}>Edit Employee</button>
        }
        { this.state.deleteButton &&
        <button type="button" className="btn btn-danger" onClick={this.deleteEmployee}>Delete Employee</button>
        }
        </center>
        {this.state.employees.map((employees) => {
          return(
            <div key={employees.id} >
             <h5>{employees.id}{employees.first_name} {employees.last_name} - {employees.title}</h5>
           </div>
          )

     })}
        <hr />
        </div>
    );
  }
}

export default ToolBar;

import React from "react"
import PropTypes from "prop-types"
import Button from 'react-bootstrap/Button'

class Dashboard extends React.Component {
  render () {
    return (
      <div>
     <h2>hello{this.props.user.name}</h2>

     
     {!this.props.currentProgram ? 
      <div>
        <p>No current program set!</p>
        <Button onClick={() => axios.get('programs/new')}>Create program</Button>
      </div>
      :
      <Button>Start new session</Button>
      }
      </div>
    );
  }
}

export default Dashboard

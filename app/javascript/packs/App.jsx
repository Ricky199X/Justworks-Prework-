import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'

// component imports
import Welcome from '../components/Welcome'

class App extends React.Component {


    render() {
        return (
            <Router>
                <div>
                    <Switch>
                        <Route exact path='/' component={Welcome} />
                    </Switch>
                </div>
            </Router>
        )
    }
}

export default App
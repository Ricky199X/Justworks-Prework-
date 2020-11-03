import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'

// component imports
import Welcome from '../components/Welcome'
import Articles from '../components/Articles'

class App extends React.Component {


    render() {
        return (
            <Router>
                <div>
                    <Switch>
                        <Route exact path='/' component={Welcome} />
                        <Route exact path='/articles' component={Articles} />
                    </Switch>
                </div>
            </Router>
        )
    }
}

export default App
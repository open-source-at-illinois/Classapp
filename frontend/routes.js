import React from 'react';
import {Route, Switch} from 'react-router-native';
import Auth from './components/Auth';
import Home from './components/Home';


export default(
    <Switch>
      <Route path='/auth' component={Auth}/>
      <Route path='/' component={Home}/>
    </Switch>
);


import React from 'react';
import {Route, Switch} from 'react-router-native';
import Auth from './components/Auth';
import Home from './components/Home';
import Apps from './components/Apps';
import Display from './components/Display';


export default(
    <Switch>
      <Route path='/display' component={Display}/>
      <Route path='/apps' component={Apps}/>
      <Route path='/auth' component={Auth}/>
      <Route path='/' component={Home}/>
    </Switch>
);


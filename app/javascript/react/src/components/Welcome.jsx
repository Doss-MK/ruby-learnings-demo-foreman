import React from 'react';
import ReactDOM from 'react-dom/client';
import Login from './Login';
import Profile from './Profile';

import { configureStore } from '@reduxjs/toolkit';
import { Provider } from 'react-redux';

import userReducer from '../features/User'

const store = configureStore({
  reducer: {
    user: userReducer
  }
});

const Welcome = (props) => {
  return(
    <>
      <Profile />
      <Login />
    </>
  );
}

const container = document.getElementById("root");
if(container) {
  const root = ReactDOM.createRoot(container);
  root.render(
    <Provider store={store}>
      <Welcome />
    </Provider>
  );
}

export default Welcome;
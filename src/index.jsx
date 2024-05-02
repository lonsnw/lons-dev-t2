import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './components/App/App.jsx'
import { Provider } from 'react-redux';
import storeInstance from './store.js';
import './index.css'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <Provider store={storeInstance}>
      <App />
    </Provider>
  </React.StrictMode>,
)

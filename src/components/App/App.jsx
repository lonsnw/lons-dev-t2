import { useState } from 'react'
import './App.css'
import axios from 'axios';
import { useDispatch } from 'react-redux';
import { useEffect } from 'react';

function App() {

  const dispatch = useDispatch();

  const fetchPortfolio = () => {
    axios.get('/api/writing').then((response) => {

      
    }).catch((error) => {
      console.error(error);
      alert('Something went wrong loading this page.')
    });
  }

  useEffect(() => {
    fetchPortfolio();
  }, []);

  return (
    <header>
      <h1>Lons Nadziejka Waller</h1>
      <h2>This website is under construction</h2>
      <nav >
        <ul>
          <li><a href="/">Home</a></li>
          <li><a href="https://lons.dev/about.html">Resume</a></li>
          <li><a href="https://www.linkedin.com/in/lonsnw/">LinkedIn</a></li>
          <li><a href="https://github.com/lonsnw">GitHub</a></li>
        </ul>
      </nav>
    </header>
  )
}

export default App

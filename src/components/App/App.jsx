import { useState } from 'react'
import './App.css'
import axios from 'axios';
import { useEffect } from 'react';
import Header from '../Header/Header.jsx';
import Hero from '../Hero/Hero.jsx';
import Gallery from '../Gallery/Gallery.jsx';


function App() {
  const [writingArray, setWritingArray] = useState([]);
  const [codeArray, setCodeArray] = useState([]);

  const fetchPortfolio = () => {
    axios.get('/api/writing').then((response) => {
      setWritingArray(response.data);
    }).catch((error) => {
      console.error(error);
      alert('Something went wrong loading the writing portfolio.')
    });
  }

  const fetchCode = () => {
    axios.get('/api/code').then((response) => {
      setCodeArray(response.data);
    }).catch((error) => {
      console.error(error);
      alert('Something went wrong loading the code portfolio.')
    });
  }

  useEffect(() => {
    fetchPortfolio();
    fetchCode();
  }, []);

  return (
    <div>
      <header>
        <Header />
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
      <main>
        <ul>
          {writingArray.map((item) => {
            return <li key={item.id}>{item.title}</li>
          })
          }
        </ul>
        <Hero />
        <Gallery />
      </main>
    </div>
  )
}

export default App

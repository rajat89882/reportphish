import React, { useEffect, useState } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';
import './assets/scss/main.css';

import Home from './pages/Home';
import Register from './pages/Register';
import Faq from './pages/Faq';
import Loader from './components/Loader'; // 👈 Import loader

function App() {
  const [loading, setLoading] = useState(true);

  // Show loader on initial mount
  useEffect(() => {
    const timer = setTimeout(() => {
      setLoading(false);
    }, 1000); // 1 second loading effect (you can adjust or remove)

    return () => clearTimeout(timer);
  }, []);

  return (
    <Router>
      {loading ? (
        <Loader />
      ) : (
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/registration" element={<Register />} />
          <Route path="/faq" element={<Faq />} />
        </Routes>
      )}
    </Router>
  );
}

export default App;

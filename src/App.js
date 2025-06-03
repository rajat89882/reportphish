import React, { useEffect, useState } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';
import './assets/scss/main.css';

import Home from './pages/Home';
import Register from './pages/Register';
import Faq from './pages/Faq';
import Phishing from './pages/WhatPhishing';
import WhyReportphish from './pages/WhyReportphish';
import ScamAlerts from './pages/ScamAlerts';
import Loader from './components/Loader';
import ScamAdvisories from './pages/ScamAdvisories';
import WhatIsScam from './pages/WhatIsScam';


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
          <Route path="/what-is-phishing" element={<Phishing />} />
          <Route path="/why-reportphish-ai" element={<WhyReportphish />} />
          <Route path="/scam-alerts" element={<ScamAlerts />} />
          <Route path="/scam-advisories/:country" element={<ScamAdvisories />} />
          <Route path="/what-is-scam" element={<WhatIsScam />} />
        </Routes>
      )}
    </Router>
  );
}

export default App;

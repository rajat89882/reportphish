
import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import ReactDOM from 'react-dom/client';
import Header from '../components/Header';
import Footer from '../components/Footer';
import axios from 'axios';


export default function ScanResults() {

  const { id } = useParams();

  const [scanData, setScanData] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchScanData = async () => {
      try {
        const response = await axios.post(
          'https://server.reportphish.ai/api/tiket/scan/getScanResult', // OR try 'getResult'
          { id }
        );
        console.log('✅ Result:', response.data);
        setScanData(response.data);
      } catch (error) {
        console.error('❌ Fetch error:', error);
      } finally {
        setLoading(false);
      }
    };

    if (id) fetchScanData();
  }, [id]);


  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-purple-900 to-indigo-800 text-white">
        <p className="text-2xl animate-pulse">Loading...</p>
      </div>
    );
  }

  if (!scanData) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-purple-900 to-indigo-800 text-white">
        <p className="text-2xl">No data found for Scan ID: {id}</p>
      </div>
    );
  }

  return (

    <div className="min-h-screen bg-gradient-to-br from-purple-900 to-indigo-800 text-white">
      <Header />
      {/* Main Content */}
      <main className="p-6  h-screen">
        <div className='container mx-auto px-4 py-4 sm:px-6 lg:px-8'>
          <div className='flex flex-col lg:flex-row gap-6'>
            <section className="lg:w-2/3 h-fit bg-white/10 p-6 rounded-lg backdrop-blur-lg">
              <h2 className="text-2xl font-semibold mb-4">Scan Overview</h2>
              <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div>
                  <p className="text-sm text-gray-300">Scanned URL</p>
                  <p className="text-lg">{scanData.scannedUrl || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">Effective URL</p>
                  <p className="text-lg">{scanData.effectiveUrl || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">IP Address</p>
                  <p className="text-lg">{scanData.ipAddress || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">Submission Date</p>
                  <p className="text-lg">{scanData.submissionDate || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">Brand Targeted</p>
                  <p className="text-lg">{scanData.ipAddress || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">Location</p>
                  <p className="text-lg">{scanData.submissionDate || 'N/A'}</p>
                </div>
              </div>
              <div className="mt-6 flex items-center py-5">
                <div className="w-24 h-24 flex items-center justify-center rounded-full bg-green-500/20 text-green-400 font-bold text-xl">
                  {scanData.status || 'SAFE'}
                </div>
                <p className="ml-4 text-lg">The scanned URL is {scanData.status?.toLowerCase() || 'safe'}</p>
              </div>
            </section>

            {/* Right Section: Additional Info */}
            <section className="lg:w-1/3 flex flex-col gap-6">
              <div className="bg-white/10 p-6 rounded-lg backdrop-blur-lg">
                <h3 className="text-xl font-semibold mb-4">Detected Technologies</h3>
                <p>{scanData.technologies || 'No technologies detected.'}</p>
                <button className="mt-4 px-4 py-2 bg-purple-600 rounded-lg hover:bg-purple-700">
                  Login for full access
                </button>
              </div>
              <div className="bg-white/10 p-6 rounded-lg backdrop-blur-lg">
                <h3 className="text-xl font-semibold mb-4">External Domains</h3>
                <p>{scanData.externalDomains || 'No external domains found.'}</p>
                <button className="mt-4 px-4 py-2 bg-purple-600 rounded-lg hover:bg-purple-700">
                  Login for full access
                </button>
              </div>
            </section>
          </div>
        </div>
      </main>
      <Footer />
    </div>
  )
}

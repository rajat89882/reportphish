import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import Header from '../components/Header';
import Footer from '../components/Footer';
import axios from 'axios';
import Unsafe from '../assets/images/security.png';
import Safe from '../assets/images/shield.png';
import { useLocation, useNavigate, Link } from 'react-router-dom';

export default function ScanResults() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [scanData, setScanData] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchScanData = async () => {
      try {
        const response = await axios.post(
          'https://server.reportphish.ai/api/tiket/scan/getRecentTopPublicScan',
          { id }
        );

        const matchedData = response.data.find(item => item._id === id);

        if (matchedData) {
          console.log('✅ Matched:', matchedData);
          setScanData(matchedData);
        } else {
          setScanData(null);
        }
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


  const scanResult = scanData.scan_result?.page || {};

  // 🟢 Compute isSafe
  const isSafe =
    scanData.vt?.scan_result?.verdict > 0 ? false : true;

  const scanStatus = isSafe ? Safe : Unsafe;

  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-900 to-indigo-800 text-white">
      <Header />
      <main className="p-6 h-screen">
        <div className='container mx-auto px-4 py-4 sm:px-6 lg:px-8'>
          <div className='flex flex-col lg:flex-row gap-6'>


            <section className="lg:w-2/3 bg-white/10 p-6 rounded-lg backdrop-blur-lg">
              <h2 className="text-2xl font-semibold mb-4">Scan Overview</h2>
              <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div>
                  <p className="text-sm text-gray-300">Scanned URL</p>
                  <p className="text-lg break-all">{scanData.url || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">Effective URL</p>
                  <p className="text-lg break-all">{scanResult.url || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">IP Address</p>
                  <p className="text-lg">{scanResult.ip || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">Submission Date</p>
                  <p className="text-lg font-[inter]">
                    {new Date(scanData.last_scanned).toLocaleString() || 'N/A'}
                  </p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">Brand Targeted</p>
                  <p className="text-lg">{scanData.keyword || 'N/A'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-300">Country</p>
                  <p className="text-lg">{scanData.scan_response?.country || 'N/A'}</p>
                </div>
              </div>
              <div className="mt-6 flex items-center py-5">
                <div
                  className={`w-24 h-24 flex items-center justify-center rounded-full font-bold text-xl ${isSafe
                    ? 'bg-green-500/20 text-green-400'
                    : 'bg-red-500/20 text-red-400'
                    }`}
                >
                  <img
                    src={scanStatus}
                    alt={isSafe ? 'Safe' : 'Unsafe'}
                    className="w-12 h-12"
                  />
                </div>
                <p className="ml-4 text-lg">
                  The scanned URL is {isSafe ? 'safe' : 'potentially unsafe or malicious'}
                </p>
              </div>

            </section>


            <section className="lg:w-1/3 flex flex-col gap-6">
              <div className="bg-white/10 p-6 rounded-lg backdrop-blur-lg">
                <h3 className="text-xl font-semibold mb-4">Detected Technologies</h3>
                <p>{scanResult.techstack?.length ? scanResult.techstack.join(', ') : 'No technologies detected.'}</p>
                <a
                  href="https://client.reportphish.ai/sys/login"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="mt-4 inline-block px-4 py-2 bg-purple-600 rounded-lg hover:bg-purple-700"
                >
                  Login for full access
                </a>
              </div>
              <div className="bg-white/10 p-6 rounded-lg backdrop-blur-lg">
                <h3 className="text-xl font-semibold mb-4">External Domains</h3>
                <p>{scanResult.externalDomains?.length ? scanResult.externalDomains.join(', ') : 'No external domains found.'}</p>
                <a
                  href="https://client.reportphish.ai/sys/login"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="mt-4 inline-block px-4 py-2 bg-purple-600 rounded-lg hover:bg-purple-700"
                >
                  Login for full access
                </a>
              </div>
            </section>
          </div>
        </div>
      </main>
      <Footer />
    </div>
  );
}

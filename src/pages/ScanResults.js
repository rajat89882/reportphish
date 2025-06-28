import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import Header from '../components/Header';
import Footer from '../components/Footer';
import axios from 'axios';
import Unsafe from '../assets/images/security.png';
import Safe from '../assets/images/shield.png';
import { useLocation, useNavigate, Link } from 'react-router-dom';
import ErrorPopup from '../components/ErrorPopup';

export default function ScanResults() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [scanData, setScanData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [url, setUrl] = useState('');
  const [brand, setBrand] = useState('');
  const [brandOptions, setBrandOptions] = useState([]);
  const [ValueLoader, setValueLoader] = useState(false);
  const [errorVisible, setErrorVisible] = useState(false);
  const [Message, setMessage] = useState('');

  useEffect(() => {
    getBrands();
  }, []);

  const getBrands = async () => {
    try {
      const response = await axios.get(
        'https://server.reportphish.ai/api/tiket/keywords/getMany'
      );
      setBrandOptions(response.data);
    } catch (error) {
      console.error('❌ Failed to load brand keywords:', error);
    }
  };

  const handleScan = async () => {
    if (!url) {
      setErrorVisible(true);
      setMessage('Please enter URL.');
      return;
    }

    try {
      setValueLoader(true);
      const res = await axios.post(
        'https://server.reportphish.ai/api/tiket/scan/addPublicScan',
        { url, keyword: brand }
      );
      setValueLoader(false);
      if (res.data && res.data._id) {
        navigate(`/scan-results/${res.data._id}`);
        fetchScanData();
      } else {
        alert('Scan failed. Try again.');
      }
    } catch (error) {
      setValueLoader(false);
      console.error('❌ Scan error:', error);
    }
  };

  const handleClear = () => {
    setUrl('');
    setBrand('');
  };

  useEffect(() => {
    if (id) {
      setLoading(true);
      fetchScanData();
    }
  }, [id]);



  const fetchScanData = async () => {
    setLoading(true);
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
      <ErrorPopup
        message={Message}
        show={errorVisible}
        onClose={() => setErrorVisible(false)}
      />
      <main className="p-6 min-h-screen">
        <div className='container mx-auto px-2 py-4 sm:px-6 lg:px-8'>
          <div className='flex flex-col gap-6'>

            <div className="mt-8 flex flex-col md:flex-row justify-center items-center gap-4">
              <input
                type="text"
                placeholder="Enter full URL to scan including http:// or https://"
                className="w-full md:w-96 p-3 rounded-lg bg-gray-100 text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-purple-500"
                value={url}
                onChange={(e) => setUrl(e.target.value)}
              />
              <select
                className="w-full md:w-48 p-3 rounded-lg bg-gray-100 text-gray-900 focus:outline-none focus:ring-2 focus:ring-purple-500"
                value={brand}
                onChange={(e) => setBrand(e.target.value)}
              >
                <option value="">Select Targeted Brand</option>
                {brandOptions.map((option, i) => (
                  <option key={i} value={option.name}>
                    {option.name}
                  </option>
                ))}
                <option value="other">Other</option>
              </select>
              <div className="flex items-center gap-3">
                <button
                  onClick={handleScan}
                  className="px-6 py-3 bg-purple-600 text-white flex items-center gap-2 rounded-lg hover:bg-purple-700 transition duration-300"
                >
                  <span>Scan</span>
                  {ValueLoader && (
                    <div className="inset-0 flex items-center justify-center flex flex-col gap-y-3 z-50 py-1">
                      <div className="animate-spin rounded-full h-4 w-4 border-t-2 border-[#fff] border-opacity-100" style={{ animationDuration: '0.5s' }}></div>
                    </div>
                  )}
                </button>
                <button
                  onClick={handleClear}
                  className="px-6 py-3 bg-gray-400 text-white rounded-lg hover:bg-gray-500 transition duration-300"
                >
                  Clear
                </button>
              </div>
            </div>
            <section className=" bg-white/10 p-6 rounded-lg backdrop-blur-lg">
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
                  <p className="text-sm text-gray-300">Location</p>
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
            <section className="flex md:flex-row  h-full flex-col gap-6">
              <div className="bg-white/10 p-10 rounded-lg backdrop-blur-lg shadow-md w-full">
                <h2 className="text-lg font-semibold text-white mb-4">Removal Process</h2>

                <div className="flex items-center gap-4 mb-4">
                  <div className="text-purple-400">
                    <svg xmlns="http://www.w3.org/2000/svg" className="w-8 h-8" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                      <path d="M4.93 4.93a10.05 10.05 0 0114.14 0M2 12h.01M7.76 7.76a6 6 0 018.48 0M12 20v-4M12 16a4 4 0 100-8 4 4 0 000 8z" />
                    </svg>
                  </div>
                  <div className="flex-1 text-white text-sm">
                    <div className="grid grid-cols-3 gap-2">
                      <span className="font-medium">ASN</span>
                      <span className="font-medium">ASN NAME</span>
                      <span className="font-medium">SERVER</span>
                    </div>

                  </div>
                </div>

                <div className="flex items-center justify-between mt-6">
                  <div className="flex flex-col items-center">
                    <div className="w-8 h-8 rounded-full bg-gray-300 text-black flex items-center justify-center text-sm font-bold">1</div>
                    <span className="text-sm text-white mt-1">Scanned</span>
                  </div>
                  <div className="flex-1 h-0.5 bg-gray-400 mx-2"></div>
                  <div className="flex flex-col items-center">
                    <div className="w-8 h-8 rounded-full bg-gray-300 text-black flex items-center justify-center text-sm font-bold">2</div>
                    <span className="text-sm text-white mt-1">Contacting Host</span>
                  </div>
                  <div className="flex-1 h-0.5 bg-gray-400 mx-2"></div>
                  <div className="flex flex-col items-center">
                    <div className="w-8 h-8 rounded-full bg-gray-300 text-black flex items-center justify-center text-sm font-bold">3</div>
                    <span className="text-sm text-white mt-1">Removed</span>
                  </div>
                </div>
              </div>
              <div className="bg-white/10 p-6 rounded-lg backdrop-blur-lg text-center w-full">
                <h3 className="text-xl font-semibold text-white mb-6">Detected Technologies</h3>

                <div className="bg-white/5 p-6 rounded-xl border-l-4 border-purple-500">
                  <div className="flex justify-center mb-4">
                    <div className="w-20 h-20 bg-purple-600 rounded-full flex items-center justify-center">
                      <img src={require("../assets/images/sad.png")} alt="" />
                    </div>
                  </div>

                  <p className="text-sm text-white/90 mb-4">
                    {scanResult.techstack?.length
                      ? scanResult.techstack.join(', ')
                      : 'Sorry, but you cannot view advanced information in the free version.'}
                  </p>

                  <a
                    href="https://client.reportphish.ai/sys/login"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="mt-4 inline-block px-6 py-2 bg-purple-600 rounded-lg hover:bg-purple-700"
                  >
                    Login for full access
                  </a>
                </div>
              </div>
              <div className="bg-white/10 p-6 rounded-lg backdrop-blur-lg text-center w-full">
                <h3 className="text-xl font-semibold text-white mb-6">External Domains</h3>

                <div className="bg-white/5 p-6 rounded-xl border-l-4 border-purple-500">
                  <div className="flex justify-center mb-4">
                    <div className="w-20 h-20 bg-purple-600 rounded-full flex items-center justify-center">
                      <img src={require("../assets/images/sad.png")} alt="" />
                    </div>
                  </div>

                  <p className="text-sm text-white/90 mb-4">
                    {scanResult.externalDomains?.length ? scanResult.externalDomains.join(', ')
                      : 'Sorry, but you cannot view advanced information in the free version.'}
                  </p>

                  <a
                    href="https://client.reportphish.ai/sys/login"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="mt-4 inline-block px-6 py-2 bg-purple-600 rounded-lg hover:bg-purple-700"
                  >
                    Login for full access
                  </a>
                </div>
              </div>


            </section>
          </div>
        </div>
      </main>
      <Footer />
    </div>
  );
}

import React, { useState } from 'react'
import Header from '../components/Header'

export default function Home() {
  const [url, setUrl] = useState('');
  const [brand, setBrand] = useState('');

  const handleScan = () => {
    if (!url || !brand) {
      alert('Please select at least one option.');
      return;
    }
    console.log('Scanning URL:', url, 'for Brand:', brand);
  };

  const handleClear = () => {
    setUrl('');
    setBrand('');
  };

  const reports = [
    { url: 'https://example1.com', keyword: 'TH-MT-0502 (India Standard Time)', date: 'May 14 2025 08:54:02', safe: true },
    { url: 'https://example2.com', keyword: 'GH-MT-0502 (India Standard Time)', date: 'May 14 2025 08:48:43', safe: false },
    { url: 'https://example1.com', keyword: 'TH-MT-0502 (India Standard Time)', date: 'May 14 2025 08:54:02', safe: true },
    { url: 'https://example2.com', keyword: 'GH-MT-0502 (India Standard Time)', date: 'May 14 2025 08:48:43', safe: false },
    { url: 'https://example1.com', keyword: 'TH-MT-0502 (India Standard Time)', date: 'May 14 2025 08:54:02', safe: true },
    { url: 'https://example2.com', keyword: 'GH-MT-0502 (India Standard Time)', date: 'May 14 2025 08:48:43', safe: false },
    { url: 'https://example1.com', keyword: 'TH-MT-0502 (India Standard Time)', date: 'May 14 2025 08:54:02', safe: true },
    { url: 'https://example2.com', keyword: 'GH-MT-0502 (India Standard Time)', date: 'May 14 2025 08:48:43', safe: false },
  ];

  return (
    <div className="min-h-screen bg-white text-gray-900">
      <Header />
      <div className='container mx-auto px-4 sm:px-6 lg:px-8'>

        <div className="text-center py-16 px-4">
          <h1 className="text-4xl md:text-5xl font-bold tracking-tight text-gray-900">
            ReportPhish.AI is World's First Only AUTOMATED Phishing Page Scanning and Enforcement Platform
          </h1>
          <p className="mt-4 text-lg md:text-xl text-gray-600">
            Keeping the Internet Free of Phishing!
          </p>

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
              <option value="brand1">Brand 1</option>
              <option value="brand2">Brand 2</option>
            </select>
            <button
              onClick={handleScan}
              className="px-6 py-3 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition duration-300"
            >
              Scan
            </button>
            <button
              onClick={handleClear}
              className="px-6 py-3 bg-gray-400 text-white rounded-lg hover:bg-gray-500 transition duration-300"
            >
              Clear
            </button>
          </div>

          <div className="mt-12 flex flex-col md:flex-row justify-center gap-6">
            <div className="p-6 bg-gray-100 rounded-lg shadow-lg">
              <p className="text-lg font-semibold text-gray-900">Is that a phishing page or a general scam?</p>
              <p className="mt-2 text-gray-600">Report scams to <a href='#' className="text-purple-600">ScamAdviser</a></p>
            </div>
            <div className="p-6 bg-gray-100 rounded-lg shadow-lg">
              <p className="text-lg font-semibold text-gray-900">How many can you scan? How many enforcement takedowns?</p>
              <p className="mt-2 text-gray-600">Click <a href='' className="text-purple-600">here</a></p>
            </div>
          </div>
        </div>

        <div className="block pb-10">
          <h2 className="text-2xl font-semibold mb-6 text-gray-900">Recent URLs Submitted</h2>
          <div className="overflow-x-auto">
            <table className="w-full table-auto bg-gray-100 rounded-lg">
              <thead>
                <tr className="bg-gray-200">
                  <th className="p-4 text-left text-gray-900">Submitted URL</th>
                  <th className="p-4 text-left text-gray-900">Keyword</th>
                  <th className="p-4 text-left text-gray-900">Last Scanned</th>
                  <th className="p-4 text-left text-gray-900">Safe / Not Safe</th>
                </tr>
              </thead>
              <tbody>
                {reports.map((report, index) => (
                  <tr key={index} className="border-t border-gray-300">
                    <td className="p-4 text-gray-900">{report.url}</td>
                    <td className="p-4 text-gray-900">{report.keyword}</td>
                    <td className="p-4 text-gray-900">{report.date}</td>
                    <td className="p-4">
                      {report.safe ? (
                        <span className="text-green-600">✔ Safe</span>
                      ) : (
                        <span className="text-red-600">✘ Not Safe</span>
                      )}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
            <button className="mt-4 px-4 py-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition">
              Load More
            </button>
          </div>
        </div>

        <footer className="bg-gray-100 py-8 px-4 md:px-16">
          <div className="flex flex-col md:flex-row justify-between items-center">
            <div className="text-center md:text-left">
              <h3 className="text-xl font-bold text-purple-600">ReportPhish.AI</h3>
              <p className="text-gray-600 mt-2">
                ReportPhish.AI is world's first and only automated phishing page scanning and enforcement platform.
              </p>
            </div>
            <div className="mt-4 md:mt-0 flex flex-col md:flex-row gap-4">
              <a href="#" className="text-gray-600 hover:text-purple-600 transition">Home</a>
              <a href="#" className="text-gray-600 hover:text-purple-600 transition">Registration</a>
              <a href="#" className="text-gray-600 hover:text-purple-600 transition">FAQ</a>
              <a href="#" className="text-gray-600 hover:text-purple-600 transition">Why ReportPhish.AI?</a>
              <a href="#" className="text-gray-600 hover:text-purple-600 transition">Scam Alerts</a>
              <a href="#" className="text-gray-600 hover:text-purple-600 transition">Contact Us</a>
            </div>
          </div>
          <div className="flex flex-col md:flex-row justify-between items-center mt-6 text-gray-500">
            <p>© Copyright 2019 - 2025 ReportPhish.AI</p>
            <div className="flex flex-col md:flex-row gap-2 mt-4 md:mt-0">
              <a href="#" className="hover:text-purple-600 transition">Privacy Policy</a>
              <a href="#" className="hover:text-purple-600 transition">Terms of Use</a>
              <p>info@ingresum.com | +61 7 307 8799 | 9 Bell Rd, VIC, Australia, 3004</p>
            </div>
          </div>
        </footer>
      </div>
    </div>
  )
} 
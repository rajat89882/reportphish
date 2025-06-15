import React, { useEffect, useState } from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import axios from 'axios';
import { useLocation, useNavigate, Link } from 'react-router-dom';

export default function Home() {
  const [url, setUrl] = useState('');
  const [brand, setBrand] = useState('');
  const [loader, setLoader] = useState(false);
  const [reports, setReports] = useState([]);
  const [valueONload, setValueONload] = useState("11");
  const [brandOptions, setBrandOptions] = useState([]);

  const navigate = useNavigate();

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
    if (!url || !brand) {
      alert('Please enter URL and select a brand.');
      return;
    }

    try {
      setLoader(true);
      const res = await axios.post(
        'https://server.reportphish.ai/api/tiket/scan/addPublicScan',
        { url, keyword: brand }
      );
      setLoader(false);
      if (res.data && res.data._id) {
        navigate(`/scan-results?id=${res.data._id}`);
      } else {
        alert('Scan failed. Try again.');
      }
    } catch (error) {
      setLoader(false);
      console.error('❌ Scan error:', error);
      alert('Scan failed.');
    }
  };

  const handleClear = () => {
    setUrl('');
    setBrand('');
  };

  const handleLoadmore = () => {
    const nextValue = parseInt(valueONload) + 10;
    setValueONload(nextValue.toString());
    getReports(nextValue);
  };

  const getReports = async (value) => {
    setLoader(true);
    try {
      const response = await axios.post(
        'https://server.reportphish.ai/api/tiket/scan/getRecentTopPublicScan',
        { top: value }
      );
      setLoader(false);
      setReports((prev) => {
        const newItems = response.data.slice(prev.length);
        return [...prev, ...newItems];
      });
    } catch (error) {
      setLoader(false);
      console.error('❌ Error loading reports:', error);
    }
  };

  useEffect(() => {
    getReports(valueONload);
    getBrands();
  }, []);

  return (
    <div className="min-h-screen bg-white text-gray-900">
      <Header />

      <div className="container mx-auto px-4 py-4 sm:px-6 lg:px-8">
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
              {brandOptions.map((option, i) => (
                <option key={i} value={option.name}>
                  {option.name}
                </option>
              ))}
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
        </div>

        <div className="block pb-10">
          <h2 className="text-2xl font-semibold mb-6 text-gray-900">Recent URLs Submitted</h2>
          <div className="overflow-x-auto">
            <table className="w-full table-auto bg-gray-100 rounded-lg overflow-hidden">
              <thead>
                <tr className="bg-gray-200 text-left text-md font-medium text-gray-900">
                  <th className="p-4 w-[40%]">Submitted URL</th>
                  <th className="p-4 w-[15%]">Keyword</th>
                  <th className="p-4 w-[25%]">Last Scanned</th>
                  <th className="p-4 w-[20%]">Safe / Not Safe</th>
                </tr>
              </thead>
              <tbody>
                {reports.map((report, index) => {
                  const isSafe =
                    report?.vt?.scan_result && report.vt.scan_result.verdict > 0
                      ? false
                      : true;
                  return (
                    <tr key={index} className="border-t border-gray-300 text-md">
                      <td className="p-4 break-all text-gray-900 w-[40%]">
                        <Link className="text-[#7e22ce] font-medium" target="_blank" to={`/scan-results?id=${report._id}`}>
                          {report.url}
                        </Link>
                      </td>
                      <td className="p-4 text-gray-900 w-[15%]">{report.keyword || '-'}</td>
                      <td className="p-4 text-gray-900 w-[25%]">
                        {new Date(report.last_scanned).toLocaleString('en-IN')}
                      </td>
                      <td className="p-4 w-[20%]">
                        {isSafe ? (
                          <span className="text-green-600 font-semibold">✔ Safe</span>
                        ) : (
                          <span className="text-red-600 font-semibold">✘ Not Safe</span>
                        )}
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
            {loader && (
              <div className=" inset-0 flex items-center justify-center flex flex-col gap-y-3 bg-white z-50 pt-10">
                <div className="animate-spin rounded-full h-16 w-16 border-t-4 border-[#8922fc] border-opacity-50"></div>
                <p>Please wait...</p>
              </div>
            )}
            <button
              onClick={handleLoadmore}
              className="mt-4 px-4 py-2 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition"
            >
              Load More
            </button>
          </div>
        </div>
      </div>
      <Footer />
    </div>
  );
}

import React from 'react';
import { Link } from 'react-router-dom';
import Header from '../components/Header';
import Footer from '../components/Footer';

export default function ScamAlerts() {
    return (
        <div className="min-h-screen bg-gradient-to-br from-purple-50 to-indigo-100">
            <Header />
            <header className="pt-16 text-center">
                <h1 className="text-5xl font-extrabold text-purple-800 ">Scam Alerts</h1>
            </header>
            <section className="container mx-auto px-4 py-12">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <Link to="/what-is-scam" className="bg-white p-6 rounded-2xl shadow-lg hover:shadow-xl transition-shadow">
                        <h2 className="text-2xl font-semibold text-purple-700 mb-4">What is a Scam?</h2>
                        <div className="w-32 h-32 mx-auto bg-image bg-purple-200 rounded-full flex items-center justify-center mb-4 p-3">
                            <img className='w-full h-full' src={require("../assets/images/virus.png")} alt="image" />
                        </div>
                    </Link>
                    <Link to="/what-is-phishing" className="bg-white p-6 rounded-2xl shadow-lg hover:shadow-xl transition-shadow ">
                        <h2 className="text-2xl font-semibold text-purple-700 mb-4">What is Phishing?</h2>
                        <div className="w-32 h-32 mx-auto bg-image bg-purple-200 rounded-full flex items-center justify-center mb-4 p-3">
                            <img className='w-full h-full' src={require("../assets/images/phishing.png")} alt="image" />
                        </div>
                    </Link>
                </div>
            </section>

            <section className="container mx-auto px-4 py-12">
                <h2 className="text-4xl font-bold text-purple-700 mb-6 text-center">Scam Advisories per Country</h2>
                <p className="text-lg text-gray-600 mb-8 text-center">
                    Scam advisories per country are growing fast – if there is an important advisory for your location – please share it here
                </p>
                <div className="grid grid-cols-2 md:grid-cols-4 gap-6">
                    {[
                        { name: "Australia", path: "/scam-advisories/australia" },
                        { name: "General Info", path: "/scam-advisories/generalinfo" },
                        { name: "India", path: "/scam-advisories/india" },
                        { name: "Malaysia", path: "/scam-advisories/malaysia" },
                        { name: "New Zealand", path: "/scam-advisories/new-zealand" },
                        { name: "Philippines", path: "/scam-advisories/philippines" },
                        { name: "Singapore", path: "/scam-advisories/singapore" },
                        { name: "United Kingdom", path: "/scam-advisories/united-kingdom" },
                        { name: "USA", path: "/scam-advisories/usa" },
                    ].map((country, index) => (
                        <Link
                            to={country.path}
                            key={index}
                            className="bg-gradient-to-br from-purple-500 to-indigo-500 text-white p-6 rounded-xl shadow-lg hover:scale-105 transition-transform text-center"
                        >
                            <h3 className="text-xl font-semibold">{country.name}</h3>
                        </Link>
                    ))}
                </div>
            </section>

            <Footer />
        </div>
    );
}
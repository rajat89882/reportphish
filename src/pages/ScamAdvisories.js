// ScamAdvisories.js
import React from 'react';
import { useParams, Link } from 'react-router-dom';
import Header from '../components/Header';
import Footer from '../components/Footer';
import scamImage from '../assets/images/scam.jpg';


export default function ScamAdvisories() {
    const { country } = useParams(); // Get the country from the URL

    // Sample data for advisories (you can replace this with an API call or database)
    const advisories = {
        india: [
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
        ],
        australia: [
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
        ],
        generalinfo: [
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
        ],
        malaysia: [
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
            {
                date: "October 31st",
                title: "Threats",
                description: "Tips to safely open emails and avoid banking frauds. Report phishing scams to reportphish.ai",
                details: "Protecting your finances: Tips to safely open emails and avoid banking frauds. Times of India",
                extra: "Don't Get Scammed: News Banking frauds. In, to keep your finances secure, here are some vital tips to safely open emails and avo",
                link: "https://www.toi.in",
                image: scamImage, // Placeholder image URL
            },
        ],
    };

    const countryAdvisories = advisories[country.toLowerCase()] || [];

    return (
        <>
            <Header />
            <div className="min-h-screen bg-gradient-to-br from-purple-50 via-indigo-50 to-blue-50">
                {/* Header Section */}
                <header className="py-20 text-center relative overflow-hidden">
                    <div className="absolute inset-0 bg-gradient-to-r from-purple-600 to-indigo-600 opacity-20"></div>
                    <h1 className="text-5xl md:text-6xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-purple-700 to-indigo-700 mb-4 relative z-10">
                        {country.charAt(0).toUpperCase() + country.slice(1)}
                    </h1>
                    <p className="text-lg text-gray-600 max-w-lg mx-auto relative z-10">
                        Stay informed about the latest scam advisories in your region.
                    </p>
                </header>

                {/* Scam Advisories Section */}
                <section className="container mx-auto px-4 py-16">
                    <div className=" mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
                        {countryAdvisories.length > 0 ? (
                            countryAdvisories.map((advisory, index) => (
                                <div
                                    key={index}
                                    className="bg-white rounded-3xl shadow-xl overflow-hidden transform transition-all duration-300 hover:scale-105 hover:shadow-2xl mb-8"
                                >
                                    <div className="p-6">
                                        <div className="flex items-center space-x-3 mb-4">
                                            <span className="text-2xl">🎣</span>
                                            <div>
                                                <span className="text-purple-700 font-semibold text-sm">ReportPhish.ai</span>
                                                <span className="text-gray-500 text-xs ml-2">• {advisory.date}</span>
                                            </div>
                                        </div>
                                        <h2 className="text-2xl font-bold text-gray-800 mb-3">
                                            ({country.charAt(0).toUpperCase() + country.slice(1)}) - {advisory.title}
                                        </h2>
                                        <p className="text-gray-600 text-sm mb-4">{advisory.description}</p>
                                    </div>

                                    <div className="border-t border-gray-100">
                                        <a
                                            href={advisory.link}
                                            target="_blank"
                                            rel="noopener noreferrer"
                                            className="block relative group"
                                        >
                                            <div className="relative">
                                                <img
                                                    src={advisory.image}
                                                    alt="Cyber fraud illustration"
                                                    className="w-full h-48 object-cover"
                                                />
                                                <div className="absolute inset-0 bg-gradient-to-r from-purple-600 to-indigo-600 opacity-0 group-hover:opacity-20 transition-opacity duration-300"></div>
                                            </div>
                                            <div className="p-6">
                                                <h3 className="text-purple-700 font-semibold text-sm mb-2 group-hover:underline">
                                                    {advisory.details}
                                                </h3>
                                                <p className="text-gray-600 text-xs">{advisory.extra}</p>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            ))
                        ) : (
                            <div className="text-center text-gray-600 bg-white p-6 rounded-2xl shadow-md">
                                <p>No advisories available for {country.charAt(0).toUpperCase() + country.slice(1)}</p>
                            </div>
                        )}
                    </div>
                </section>
            </div>
            <Footer />
        </>
    );
}
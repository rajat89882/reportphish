import React from 'react';
import { Link } from 'react-router-dom';
import Header from '../components/Header';
import Footer from '../components/Footer';

const profiles = [
    {
        number: '1',
        title: 'Public Users',
        points: [
            'No Login required',
            'Enter malicious URL in New Scan',
            'URL will be scanned and results shown',
            'No Enforcement/Takedown included',
            'Submission of URL is free',
        ],
    },
    {
        number: '2',
        title: 'Public Users (With Social Login)',
        points: [
            'Login with your Google / Facebook account',
            'Enter malicious URL in New Scan',
            'URL will be scanned and results shown',
            'Initiate Abuse Report Process to initiate incident review workflow',
            'Unlimited enforcements - time delayed, low priority',
        ],
        to: '/register/organization', // Added a registration link for consistency
    },
    {
        number: '3',
        title: 'Subscribed Organizations / Brands (Allocated Username)',
        points: [
            'Login with your allocated username',
            'Enter malicious URL in New Scan',
            'URL will be scanned and results shown',
            'Initiate Abuse Report Process to create incident enforcement',
            'Unlimited phishing enforcements - real time, high priority',
        ],
        to: '/register/organization',
    },
    {
        number: '4',
        title: 'Subscribed - Enterprise $POA',
        points: [
            'Login with your allocated username',
            'Enter malicious URL in New Scan',
            'URL will be scanned and results shown',
            'Initiate Abuse Report Process to create incident enforcement',
            'Unlimited phishing enforcements - real time, high priority',
            'Ticketing system with automatic closure',
            'Regular monitoring of incident status',
            'Comprehensive Enforcement process - hosting provider, website owner, CERT, social media',
            'Rogue mobile app monitoring',
            'Fake Social Media monitoring',
            'Brand Abuse monitoring',
        ],
        to: '/register/enterprise',
    },
];

export default function Register() {
    return (
        <div className="flex flex-col min-h-screen bg-gradient-to-br from-[#8922fc] to-[#42047e]">
            <Header />

            <main className="flex-grow py-16 px-4">
                <div className='container mx-auto'>
                    <h1 className="text-white text-center text-3xl md:text-4xl font-bold mb-12 drop-shadow-md">
                        Which profile best suits you?
                    </h1>

                    <div className="w-full mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
                        {profiles.map((profile, index) => (
                            <div
                                key={index}
                                className="backdrop-blur-md bg-white/10 border border-white/20 rounded-2xl p-6 shadow-xl text-white hover:scale-[1.02] transition-all duration-300"
                            >
                                <div className="flex items-start gap-3 mb-4">
                                    <span className="text-green-400 text-[22px] font-bold mt-[-5px]">{profile.number}</span>
                                    <h2
                                        className={`text-xl font-semibold ${profile.title === 'Subscribed - Enterprise $POA'
                                            ? 'text-[#d4a5ff]'
                                            : 'text-[#f9f9f9]'
                                            }`}
                                    >
                                        {profile.title}
                                    </h2>
                                </div>
                                <ul className="list-inside text-sm text-white/80 space-y-2">
                                    {profile.points.map((point, idx) => (
                                        <li key={idx} className="flex items-start">
                                            <span className="text-green-400 mr-2">▶</span>
                                            <span>{point}</span>
                                        </li>
                                    ))}
                                </ul>

                                {profile.to && (
                                    <div className="mt-6 text-center">
                                        <Link
                                            to={profile.to}
                                            className="inline-block bg-transparent text-[#d4a5ff] px-5 py-2 rounded-full border border-[#d4a5ff] hover:bg-[#d4a5ff]/50 transition-all"
                                        >
                                            Initiate Registration Process Here
                                        </Link>
                                    </div>
                                )}
                            </div>
                        ))}
                    </div>
                </div>
            </main>

            <Footer />
        </div>
    );
}
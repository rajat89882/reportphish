import React from 'react'
import { Link } from 'react-router-dom';
import Header from '../components/Header';
import Footer from '../components/Footer';

export default function WhyReportphish() {
    return (
        <div>
            <Header />
            <header className="py-8 md:py-16 text-center">
                <h1 className="text-3xl md:text-5xl font-extrabold text-[#7d15f1] mb-4">
                    Why ReportPhish.ai?
                </h1>
                <p className="text-xl text-gray-600 max-w-3xl mx-auto">
                    ReportPhish.ai is the world's first and only automated phishing page scanning and enforcement platform.
                </p>
            </header>

            {/* About Us Section */}
            <section className="container mx-auto px-4 py-12">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
                    <div>
                        <h2 className="text-3xl font-bold text-[#7d15f1] mb-6">About Us</h2>
                        <p className="text-gray-700 leading-relaxed mb-4">
                            On average, according to the Anti Phishing Working Group (apwg.org), approximately 50,000 websites are compromised with phishing content <strong className='text-[#7d15f1]'> EVERY MONTH </strong> ! It is estimated that 95% of <strong className='text-[#7d15f1]'> ALL </strong> data breaches originate from activity associated with phishing or other scam websites. Machine Learning and Artificial Intelligence (AI) play an important role to identify and analyse millions of <strong className='text-[#7d15f1]'> URLS </strong> every month to determine if they are malicious or safe. Anti Malware software, browser extensions and other addons provide an exceptional service to detect and categorise URLS as friend or foe. They are excellent at blocking and stopping potential abuse. Blocking a user from accessing a phishing website is part of the solution. <strong className='text-[#7d15f1]'> Reportphish.ai </strong> is focussed on solving the cause of this issue – the removal of the phishing content from the website and assisting the website owners to remove any vulnerabilities. Reportphish.ai is the world’s first only automated phishing page scanning and enforcement platform.
                        </p>

                        <p className="text-indigo-600 font-semibold italic">
                            "Our goal is to keep the internet free of phishing and other malicious websites."
                        </p>
                    </div>
                    <div className="relative mx-auto">
                        <div className="w-full mx-auto">
                            <img className='shadow-lg' src={require("../assets/images/ilustrat-1.png")} alt="image" />
                        </div>
                    </div>
                </div>
            </section>

            {/* How It Works Section */}
            <section className="container mx-auto px-4 py-12">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
                    <div className="relative mx-auto">
                        <div className="w-full mx-auto">
                            <img className='shadow-lg p-4' src={require("../assets/images/Illust-2.png")} alt="image" />
                        </div>
                    </div>
                    <div>
                        <h2 className="text-3xl font-bold text-[#7d15f1] mb-6">
                            How it works</h2>
                        <p className="text-gray-700 leading-relaxed mb-4">

                            Every hosting provider wants to provide fast, reliable and high-performance infrastructure. They also need to follow certain government mandated requirements that forbid for any customers to send spam emails, execute malicious software, display, store, distribute or otherwise make available any content or material that you are not authorized to, whether because prohibited by law such as copyrighted material, personally identifiable or protected confidential information and trade secrets.
                        </p>
                        <p className="text-gray-700 leading-relaxed mb-4">
                   The website owner is responsible to maintain the webpage with uptodate software.
                        </p>
                        <p className="text-indigo-600 font-semibold italic">
                        Reportphish.ai reports malicious, phishing, scam URLs to the hosting provider and website owner.
                        </p>
                    </div>

                </div>
            </section>
            <Footer />
        </div>
    )
}

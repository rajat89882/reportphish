// WhatIsScam.js
import React from 'react';
import { Link } from 'react-router-dom';
import DataTable from 'react-data-table-component';
import Header from '../components/Header';
import Footer from '../components/Footer';

export default function WhatIsScam() {
    // Data for the DataTable
    const scamReportData = [
        { country: "Global", organization: "Scamadviser", contact: "https://www.scamadviser.com/" },
        { country: "Australia", organization: "Australian Cyber Security Centre", contact: "https://www.cyber.gov.au/acsc/report" },
        { country: "Australia", organization: "Crime Stoppers", contact: "https://crimestoppers.com.au/report-a-scam" },
        { country: "Australia", organization: "ACCC / Scamwatch", contact: "https://www.scamwatch.gov.au/report-a-scam" },
        { country: "Australia", organization: "Australian Tax Office", contact: "https://www.ato.gov.au/general/online-services/identity-security-and-scams/report-a-scam" },
        { country: "Australia", organization: "Service NSW", contact: "https://www.service.nsw.gov.au/transaction/report-identity-theft-or-scam" },
        { country: "Canada", organization: "Royal Canadian Mounted Police", contact: "https://www.rcmp-grc.gc.ca/en/centre-fraud-report" },
        { country: "Canada", organization: "Canadian Anti-Fraud Centre", contact: "https://www.antifraudcentre-centreantifraude.ca/report-signalez-eng.htm" },
        { country: "Canada", organization: "Reporting Economic Crime On-Line", contact: "https://www.recol.ca/" },
        { country: "Canada", organization: "Office of the Superintendent of Financial Institutions", contact: "https://www.osfi-bsif.gc.ca/spwscv/default.html" },
        { country: "Canada", organization: "Competition Bureau Canada Fraud Prevention Forum", contact: "https://www.competitionbureau.gc.ca/eic/site/cb-bc.nsf/eng/h_00129.html" },
        { country: "Canada", organization: "Canadian Council of Better Business Bureaus", contact: "https://www.bbb.org/" },
        { country: "Canada", organization: "People's Online Aspirations and Complaints Service (LAPOR!)", contact: "https://www.lapor.go.id/" },
        { country: "Indonesia", organization: "Crime Victims Helpline", contact: "https://www.crimestoppers-uk.org/report-a-crime/cyber-crime" },
        { country: "Ireland", organization: "Competition and Consumer Protection", contact: "https://www.ccpc.ie/consumers/money/scams/" },
    ];

    // DataTable columns
    const columns = [
        {
            name: 'Country',
            selector: row => row.country,
            sortable: true,
            cell: row => <span className="text-gray-800 font-medium">{row.country}</span>,
        },
        {
            name: 'Organization',
            selector: row => row.organization,
            sortable: true,
            cell: row => <span className="text-gray-800">{row.organization}</span>,
        },
        {
            name: 'Contact',
            selector: row => row.contact,
            sortable: false,
            cell: row => (
                <a href={row.contact} target="_blank" rel="noopener noreferrer" className="text-purple-600 hover:underline">
                    {row.contact}
                </a>
            ),
        },
    ];

    // Custom styles for DataTable
    const customStyles = {
        headCells: {
            style: {
                backgroundColor: '#f3e8ff',
                color: '#6b21a8',
                fontWeight: 'bold',
                fontSize: '16px',
                padding: '16px',
            },
        },
        cells: {
            style: {
                padding: '16px',
                fontSize: '14px',
            },
        },
        rows: {
            style: {
                '&:hover': {
                    backgroundColor: '#f9f5ff',
                    cursor: 'pointer',
                },
            },
        },
    };

    return (
        <>
            <Header />
            <div className="min-h-screen bg-gradient-to-br from-purple-50 to-indigo-100">
                {/* Header Section */}
                <header className="py-20 text-center relative overflow-hidden">
                    <div className="absolute inset-0 bg-gradient-to-r from-purple-600 to-indigo-600 opacity-20"></div>
                    <h1 className="text-5xl md:text-6xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-purple-700 to-indigo-700 mb-4 relative z-10">
                        What is a Scam?
                    </h1>
                    <p className="text-lg text-gray-600 max-w-2xl mx-auto relative z-10">
                        Many around the world become victims to online scams. Here is an important guide to help identify a scam and what to do about it.
                    </p>
                </header>

                {/* Main Content Section */}
                <section className="container mx-auto px-4 py-16">
                    <div className=" mx-auto">
                        {/* Introduction */}
                        <div className="bg-white p-8 rounded-3xl shadow-xl mb-12">
                            <p className="text-gray-700 leading-relaxed mb-4">
                                Scams are malicious techniques that are used to steal consumers personal information and ultimately their money.
                            </p>
                            <ul className="list-disc list-inside text-gray-700 space-y-2">
                                <li>
                                    <strong>Dating and romance scams</strong> – scammers create fake profiles on legitimate dating websites, mobile apps, or social media. Facebook photos and identities are often used by other people. They use these profiles to try to enter a relationship with you that seems genuine, asking for money for travel expenses to visit you, medical expenses for the sale or purchase of shares or property.
                                </li>
                                <li>
                                    <strong>Investment scams</strong> – Scammers dress up opportunities with professional-looking brochures and websites to mask their fraudulent operations.
                                </li>
                                <li>
                                    <strong>Threat and penalty scams</strong> – scammers may call you and threaten you with arrest or send you an email claiming you owe money on a speeding fine, a tax debt or an unpaid bill.
                                </li>
                                <li>
                                    <strong>Unexpected money scams</strong> – such as fake prizes and lotteries. The scammer will ask you to pay a small fee to claim your prize or ask for payment as part of an investment in a new business venture.
                                </li>
                                <li>
                                    <strong>Job and employment scams</strong> – work from home opportunities or investment scams that may ask for payment for a small fee so that you can start working.
                                </li>
                                <li>
                                    <strong>Phishing scams</strong> are focused in the attempts to steal your online login credentials and personal data in important financial organizations. Typically initiated via emails, this technique grew over the last few decades as computer and email adoption grew in recent financial organizations. PLEASE REFER TO OUR POST “What is phishing?”
                                </li>
                            </ul>
                        </div>

                        {/* What Can You Do Section */}
                        <div className="bg-white p-8 rounded-3xl shadow-xl mb-12">
                            <h2 className="text-3xl font-bold text-purple-800 mb-6">What can you do about scams?</h2>
                            <p className="text-gray-700 leading-relaxed mb-4">
                                Scams come in the form of an email, SMS, phone call or even someone at your front door. Regardless of how the scam is sent to you, please follow these simple steps to protect yourself.
                            </p>
                            <p className="text-gray-700 leading-relaxed mb-4">
                                <strong>Be alert to scams</strong> and be aware when things “too good to be true” scenario.
                            </p>
                            <ul className="list-disc list-inside text-gray-700 space-y-2">
                                <li>
                                    <strong>Keep your personal details secure</strong> – use multifactor authentication where possible from the financial institution, utility or government agency.
                                </li>
                                <li>
                                    <strong>If you are not sure on the authenticity</strong> – DO NOT OPEN suspicious texts, popup windows or emails – delete them. If you feel pressured from a caller, hang up and visit the institution’s physical branch or alternatively call the main bank and call the contact center directly for assistance.
                                </li>
                                <li>
                                    <strong>Keep your computer and mobile software updated</strong> with the latest patches and make sure you have ACTIVE anti-virus software loaded.
                                </li>
                            </ul>
                        </div>

                        {/* Where to Report Scams Section */}
                        <div className="bg-white p-8 rounded-3xl shadow-xl">
                            <h2 className="text-3xl font-bold text-purple-800 mb-6">Where to report scams?</h2>
                            <p className="text-gray-700 leading-relaxed mb-6">
                                The table below provides key organizations per country that can assist with any type of scam. This list isn’t comprehensive as there are many more contacts available from banks, financial institutions in general, utilities and online shopping websites. Please share any organization that you feel should be included via our Contacts page.
                            </p>
                            <DataTable
                                columns={columns}
                                data={scamReportData}
                                customStyles={customStyles}
                                pagination
                                highlightOnHover
                                pointerOnHover
                                responsive
                                className="rounded-lg shadow-md"
                            />
                        </div>
                    </div>
                </section>
            </div>
            <Footer />
        </>
    );
}
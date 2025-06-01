import React, { useState } from 'react';
import Header from '../components/Header';
import Footer from '../components/Footer';
import { IconPlus, IconCircleDashedMinus } from '@tabler/icons-react';
import { Link } from 'react-router-dom';

const faqData = [
    {
        title: 'Getting Started',
        items: [
            {
                question: 'What is Reportphish ?',
                answer: [
                    "ReportPhish.ai is World’s First and only AUTOMATED phishing page scanning and enforcement platform.",
                    "It is no longer enough just to identify malicious websites; it is now imperative that action is taken to remove them based on their Terms of Use.",
                ],
            },
            {
                question: 'What URL can I submit for Scanning ?',
                answer: [
                    "Every consumer can scan any URL to determine if it is 'Safe or Not Safe'.",
                    "Not all submissions are permissible.",
                    "There are domains that have been restricted from being scanned on request from their domain owners, typically social media platforms.",
                    "Only standard http or https protocols must be submitted.",
                ],
            },
            {
                question: 'What is Enforcement ?',
                answer: [
                    "Enforcement / takedown is the process of notifying the website owner and specific hosting provider of the malicious webpage.",
                    "Typically the webpage would be compromised – hacked – and malicious content installed.",
                    "Enforcement means that a registered consumer or organization submits a URL (webpage) for removal / takedown to the hosting provider by clicking on the button 'Initiate Abuse Reporting Process'.",
                    "Reportphish validates the URL is malicious and allows the notification to be initiated.",
                    "Enforcement or takedown is simply a reporting notification sent to the hosting provider’s 'Report Abuse' process that requests a review of a specific URL.",
                    "There are no legal implications that are created with the consumer or organization that initiates the notification process.",
                    "Hosting providers have Terms of Use that specifically state what is NOT acceptable content and gives them broad discretion for taking action.",
                    "Content that is NOT acceptable includes:",
                    "Anything illegal, or promotes or encourages illegal activity.",
                    "Promotes, encourages or engages in the exploitation of children, or any activity related to the proliferation of child sexual abuse material (CSAM).",
                    "Promotes, encourages or engages in terrorism, violence against people, animals, or property.",
                    "Promotes, encourages or engages in any spam or other unsolicited bulk email, or computer or network hacking.",
                    "Infringes on the intellectual property rights of another User or any other person or entity.",
                    "Violates the privacy or publicity rights of another User or any other person or entity, or breaches any duty of confidentiality that you owe to another User or any other person or entity.",
                    "Contains or installs any viruses, worms, bugs, Trojan horses or other code, files or programs designed to, or capable of, disrupting, damaging or limiting the functionality of any software or hardware.",
                ],
            },
            {
                question: 'Is there a fee for Submission or Enforcement',
                answer: [
                    "Submission is FREE – today, tomorrow, forever !",
                    "Enforcement is limited to 2 incidents per Brand per month as part of our Community Support Guidelines. ",
                    "> 2 incidents per month – each Brand is encouraged to Register with ReportPhish and to access wider support features.",
                ],
            },
            {
                question: 'Accredited Charities and Not-for-profit Organizations',
                answer: [
                    "Enforcement is FREE – please register and authorize ReportPhish to act as your authorized agent.",
                ],
            },
        ],
    },
    {
        title: 'General Information',
        content: [
            {
                question: 'What is Phishing ?',
                answer: [
                    "Phishing is a technique, typically in the form of an email that is sent to trick people into falling for a scam. Typically, the purpose is to capture sensitive data such as credit card or other financial account information or user credentials such as usernames and passwords.",
                    "How Phishing Works",
                    "Confirm an order.",
                    "The phishing attack will typically start with a malicious email message, sent to many thousands of recipients. The email would impersonate a well-known brand or organization using the organization’s logos, formatting, or even specific phrases.",
                ],
                link: "Read More",
                redirect: "/phishing"
            },
        ],
    },
    {
        title: 'Troubleshooting',
        items: [
            {
                question: 'Is Verdict Incorrect ?',
                answer: [
                    "Sometimes the submitted URL fails to produce the expected outcome even though it is checked against 80 anti virus platforms.",
                    "Please wait for the scan to finish",
                    "Consumers – please click on “Is this verdict not correct ?” to send notification to the Support team",
                    "Subscribers – please click on “Initiate Abuse Report Process” and then",
                    "Click on “Is the verdict not correct ?” to send notification to the Support team to update the incident.",
                ],
            },
            {
                question: 'No Verdict is showing',
                answer: [
                    "Sometimes the submitted URL fails to produce the expected outcome even though it is checked against 80 anti virus platforms..",
                    "Please wait for the scan to finish",
                    "Consumers – please click on “Is this verdict not correct ?” to send notification to the Support team",
                    "Subscribers – please click on “Initiate Abuse Report Process” and then",
                    "Click on “Is the verdict not correct ?” to send notification to the Support team to update the incident."
                ],
            },
            {
                question: 'Verdict originally shows Safe (Green) but changes to Not Safe (Red)',
                answer: [
                    "The verdict will change as more information is collated.",
                    "ReportPhish performs its own analysis and also receives information from over 80 anti virus platforms.",
                    "There is a small possibility that this scan would be the first scan for this URL and it produces a Safe verdict.",
                    "The abuse reporting process will share the outcome with many relevant internet agents and cyber authorities and therefore will change the status of the URL for future scans."
                ],
            },
        ],
    },
];

export default function FAQ() {
    const [openItems, setOpenItems] = useState({});

    const toggleFAQ = (indexKey) => {
        setOpenItems((prev) => ({
            ...prev,
            [indexKey]: !prev[indexKey],
        }));
    };

    return (
        <div className="flex flex-col min-h-screen bg-gradient-to-br from-[#8922fc] to-[#42047e]">
            <Header />

            <main className="flex-grow py-20 px-6">
                <h1 className="text-4xl md:text-6xl font-extrabold text-center text-white mb-16 tracking-tight drop-shadow-xl">
                    Frequently Asked Questions
                </h1>

                <section className="max-w-5xl mx-auto space-y-10">
                    {faqData.map((section, sectionIndex) => (
                        <article key={sectionIndex} className="bg-[#2a234f]/80 backdrop-blur-lg rounded-3xl p-8 shadow-2xl border border-[#4b3a82]/30">
                            <div className="flex items-center mb-4">
                                <span className="text-[#a78bfa] text-3xl mr-4">⟐</span>
                                <h2 className="text-3xl font-bold text-white tracking-wide">{section.title}</h2>
                            </div>
                            <div className='flex flex-col gap-3'>
                                {(section.items || section.content)?.map((item, itemIndex) => {
                                    const indexKey = `${sectionIndex}-${itemIndex}`;
                                    const isOpen = !!openItems[indexKey];
                                    const question = item.question;
                                    const answer = item.answer;
                                    const link = item.link;
                                    const redirect = item.redirect;

                                    return (
                                        <div
                                            key={indexKey}
                                            className={`rounded-2xl p-5 transition-all duration-500 ${isOpen
                                                ? 'bg-gradient-to-r from-[#a78bfa]/20 to-[#d8b4fe]/20 shadow-lg'
                                                : 'bg-[#3b2a82]/50 hover:bg-[#4b3a82]/70'
                                                }`}
                                        >
                                            <button
                                                onClick={() => toggleFAQ(indexKey)}
                                                className="flex items-center w-full text-left focus:outline-none group"
                                                aria-expanded={isOpen}
                                                aria-controls={`faq-answer-${indexKey}`}
                                            >
                                                <span className="text-[#34d399] mr-4 text-xl">✸</span>
                                                <h3 className="text-lg font-semibold text-white flex-1 group-hover:text-[#a78bfa] transition-colors duration-300">
                                                    {question}
                                                </h3>
                                                <span
                                                    className={`text-[#a78bfa] text-2xl font-semibold transition-transform duration-500 ${isOpen ? 'rotate-90' : ''
                                                        }`}
                                                >
                                                    {isOpen ? <IconPlus /> : <IconCircleDashedMinus />}
                                                </span>
                                            </button>
                                            <div
                                                id={`faq-answer-${indexKey}`}
                                                className={`text-gray-200 text-sm transition-all duration-500 ease-in-out overflow-hidden ${isOpen ? ' opacity-100 mt-4' : 'max-h-0 opacity-0'
                                                    }`}
                                            >
                                                <ul className="pl-10 list-disc list-outside space-y-2">
                                                    {answer.map((point, idx) => (
                                                        <li key={idx}>{point}</li>
                                                    ))}
                                                </ul>
                                                {item.link && item.redirect && (
                                                    <div className="mt-4 pl-10">
                                                        <Link to={item.redirect} className="text-[#a78bfa] underline hover:text-white transition-colors duration-300">
                                                            {item.link}
                                                        </Link>
                                                    </div>
                                                )}
                                            </div>

                                        </div>
                                    );
                                })}
                            </div>
                        </article>
                    ))}
                </section>
            </main>

            <Footer />
        </div>
    );
}
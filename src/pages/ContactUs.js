// Contact.js
import React from 'react';
import { Link } from 'react-router-dom';
import Header from '../components/Header'
import Footer from '../components/Footer';

export default function Contact() {
    return (
        <div className="min-h-screen bg-gradient-to-br from-purple-50 via-indigo-50 to-blue-50">
            {/* Navigation Bar */}
            <Header />

            {/* Header Section */}
            <header className="py-20 text-center relative overflow-hidden px-3">
                <div className="absolute inset-0 bg-gradient-to-r from-purple-600 to-indigo-600 opacity-20"></div>
                <h1 className="text-5xl md:text-6xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-purple-700 to-indigo-700 mb-4 relative z-10">
                    Contact Us
                </h1>
                <p className="text-lg text-gray-600 max-w-lg mx-auto relative z-10">
                    Have questions or need assistance? Reach out to us, and we’ll get back to you as soon as possible!
                </p>
            </header>

            {/* Contact Section */}
            <section className="container mx-auto px-4 py-16">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-12 max-w-5xl mx-auto">
                    {/* Contact Information */}
                    <div className="space-y-8">
                        <div className="bg-white md:block none p-8 rounded-3xl shadow-xl">
                            <img src={require("../assets/images/contact.png")} alt="image" />
                        </div>
                        <div className="bg-white/60 backdrop-blur-md p-8 rounded-3xl shadow-lg">
                            <h2 className="text-3xl font-bold text-purple-800 mb-4">Get in Touch</h2>
                            <p className="text-gray-600 mb-6">
                                We’re here to help! Reach out via any of the methods below or send us a message.
                            </p>

                            <div className="space-y-4">
                                {/* Email */}
                                <div className="flex items-center space-x-3">
                                    <span className="inline-flex items-center justify-center w-10 h-10 bg-purple-100 text-purple-700 rounded-full">
                                        {/* You can replace with an <svg> mail icon or import from Heroicons */}
                                        📧
                                    </span>
                                    <div>
                                        <p className="text-gray-800 font-medium">Email Us</p>
                                        <a
                                            href="mailto:support@reportphish.ai"
                                            className="text-purple-600 hover:underline text-sm"
                                        >
                                            support@reportphish.ai
                                        </a>
                                    </div>
                                </div>

                                {/* Phone */}
                                <div className="flex items-center space-x-3">
                                    <span className="inline-flex items-center justify-center w-10 h-10 bg-purple-100 text-purple-700 rounded-full">
                                        ☎️
                                    </span>
                                    <div>
                                        <p className="text-gray-800 font-medium">Call Us</p>
                                        <a href="tel:+1234567890" className="text-purple-600 hover:underline text-sm">
                                            +1 (234) 567-890
                                        </a>
                                    </div>
                                </div>

                                {/* Address */}
                                <div className="flex items-center space-x-3">
                                    <span className="inline-flex items-center justify-center w-10 h-10 bg-purple-100 text-purple-700 rounded-full">
                                        📍
                                    </span>
                                    <div>
                                        <p className="text-gray-800 font-medium">Office Address</p>
                                        <p className="text-gray-600 text-sm">
                                            Suite 412, 566 St Kilda Rd,<br />
                                            Melbourne, VIC, Australia, 3004
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        {/* Optional: Social Media Links */}

                    </div>


                    {/* Contact Form */}
                    <div className="bg-white p-8 rounded-3xl shadow-xl">
                        <h2 className="text-3xl font-bold text-purple-800 mb-6">Send Us a Message</h2>
                        <div className="space-y-6">
                            <div>
                                <label htmlFor="name" className="block text-gray-700 font-medium mb-2">
                                    Name
                                </label>
                                <input
                                    type="text"
                                    id="name"
                                    className="w-full p-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-purple-600 focus:border-transparent transition-all"
                                    placeholder="Your Name"
                                />
                            </div>
                            <div>
                                <label htmlFor="email" className="block text-gray-700 font-medium mb-2">
                                    Email
                                </label>
                                <input
                                    type="email"
                                    id="email"
                                    className="w-full p-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-purple-600 focus:border-transparent transition-all"
                                    placeholder="Your Email"
                                />
                            </div>
                            <div>
                                <label htmlFor="phone" className="block text-gray-700 font-medium mb-2">
                                    Phone Number
                                </label>
                                <input
                                    type="tel"
                                    id="phone"
                                    className="w-full p-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-purple-600 focus:border-transparent transition-all"
                                    placeholder="Your Phone Number"
                                />
                            </div>
                            <div>
                                <label htmlFor="message" className="block text-gray-700 font-medium mb-2">
                                    Message
                                </label>
                                <textarea
                                    id="message"
                                    className="w-full p-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-purple-600 focus:border-transparent transition-all"
                                    rows="4"
                                    placeholder="Your Message"
                                ></textarea>
                            </div>
                            <button
                                type="button"
                                className="w-full bg-gradient-to-r from-purple-600 to-indigo-600 text-white py-3 rounded-lg font-semibold hover:from-purple-700 hover:to-indigo-700 transition-all"
                            >
                                Send Message
                            </button>
                        </div>
                    </div>
                </div>
            </section>

            {/* Footer Section */}
            <Footer />
        </div>
    );
}
import React from 'react';
import { Link } from 'react-router-dom';
import Header from '../components/Header';
import Footer from '../components/Footer';

export default function WhatPhishing() {
  return (
    <div>
      <Header />
      <main className="container mx-auto px-4 py-12">
        {/* How Phishing Works */}
        <section className="mb-12">
          <h2 className="text-5xl font-bold text-[#7709f5] text-center pb-10 pt-5">What is Phishing ?</h2>
          <p className="text-gray-700 leading-relaxed font-semibold mb-6 text-center md:w-[60%] mx-auto w-[100%]">
            Phishing is a technique, typically in the form of an email that is sent to trick people into falling for a scam. Typically, the purpose is to capture sensitive data such as credit card or other financial account information or user credentials such as usernames and passwords.
          </p>
        </section>
        <section className='flex md:flex-row flex-col items-center gap-5 md:h-[500px] pb-10 pt-5'>
          <div className='block w-full h-full'>
            <img className='w-full h-full object-contain' src={require("../assets/images/phishing-email.jpg")} alt='image' />
          </div>
          <div className='block w-full h-full'>
            <img className='w-full h-full object-contain' src={require("../assets/images/phishing-email.jpg")} alt='image' />
          </div>
        </section>
        <section className="mb-12">
          <h2 className="text-4xl font-semibold text-[#7709f5] mb-4">How Phishing Works</h2>
          <p className="text-gray-700 leading-relaxed mb-6">
            The phishing attack will typically start with a malicious email message, sent to many thousands of recipients. The email would impersonate a well-known brand or organization using the organization’s logos, formatting, or even specific phrases.
            The purpose of the phishing email is to create a need to take urgent action and to click on a url or internet link that would direct the consumer to a fake webpage impersonating the actual organization’s login page. The topic of the phishing email may include topics such as threatening account suspension or money loss for your bank account, credit card, utility provider or even your favorite online store. On the fake webpage, the consumer would be encouraged to enter their credentials such as username and password and quickly learn that nothing further occurs. The consumer would then leave the website and think nothing further but unfortunately the malicious phisher has captured important personal details of the consumer allowing them to subsequently steal money by using their user credentials to login to their actual bank account and transfer money out to an external destination controlled by them.
          </p>
        </section>

        {/* Phishing Components */}
        <section className="mb-12">
          <h2 className="text-3xl font-semibold text-[#7709f5] mb-4">Phishing has a number of components:</h2>
          <ul className="list-disc list-inside text-gray-700 space-y-2">
            <li><strong>Phishing email</strong></li>
            <li><strong>Phishing Website</strong> - a direct copy of your internet banking login page</li>
            <li><strong>Drop Email Address</strong> - 1 use email addresses for the credentials to be sent to</li>
          </ul>
        </section>

        {/* Warning Section */}
        <section className="bg-red-50 border-l-4 border-red-500 p-6 rounded-lg">
          <ul>
            <li className="text-gray-700 mt-2 text-[20px]"> 
              <strong>Most Phishing sites are hosted deep on hacked websites – the site owners do not even know they have been hacked</strong>
            </li>
            <li className="text-gray-700 mt-2 text-[20px]"><strong>If you  are not sure if an email is malicious, phishing or any other scam – DO NOT click on any links.</strong></li>
          </ul>
          <p className="text-gray-700 text-[16px] pt-2">
            Contact your provider and confirm if the email is genuine, and <br />
            Enter the URL in the scan box and initiate the enforcement/takedown process.
          </p>
          <p className="text-gray-700 mt-2 text-[20px]">
            <strong>You have the power to protect others that may unfortunately click on the phishing link – so scan and enforce – for everyone’s security !</strong>
          </p>
        </section>
      </main>
      <Footer />
    </div>
  )
}

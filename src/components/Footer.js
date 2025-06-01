import React from 'react';

export default function Footer() {
    return (
        <footer className="bg-gray-100 py-10 px-4 md:px-8 lg:px-16">
            <div className="container mx-auto space-y-8">
                {/* Top Section */}
                <div className="flex flex-col md:flex-row justify-between items-start md:items-center gap-8">
                    {/* Left - Logo + Description */}
                    <div className="md:max-w-lg">
                        <h3 className="text-2xl font-bold text-purple-600">ReportPhish.AI</h3>
                        <p className="text-gray-600 mt-2 text-sm">
                            ReportPhish.AI is the world’s first and only automated phishing page scanning and enforcement platform.
                        </p>
                    </div>

                    {/* Right - Navigation Links */}
                    <div className="flex flex-wrap gap-4 text-sm">
                        {[
                            'Home',
                            'Registration',
                            'FAQ',
                            'Why ReportPhish.AI?',
                            'Scam Alerts',
                            'Contact Us',
                        ].map((link) => (
                            <a
                                key={link}
                                href="#"
                                className="text-gray-600 hover:text-purple-600 transition duration-200"
                            >
                                {link}
                            </a>
                        ))}
                    </div>
                </div>

                <hr className="border-t border-gray-300" />

                {/* Bottom Section */}
                <div className="flex flex-col md:flex-row justify-between items-start md:items-center text-sm text-gray-500 gap-4">
                    <p>© 2019 - 2025 ReportPhish.AI</p>
                    <div className="flex flex-col md:flex-row gap-2 md:items-center">
                        <a href="#" className="hover:text-purple-600 transition">Privacy Policy</a>
                        <span className="hidden md:inline">|</span>
                        <a href="#" className="hover:text-purple-600 transition">Terms of Use</a>
                        <span className="hidden md:inline">|</span>
                        <p className="text-gray-500">
                            info@ingresum.com | +61 7 307 8799 | 9 Bell Rd, VIC, Australia, 3004
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    );
}

import { useState } from 'react';
import { FaBars, FaTimes } from 'react-icons/fa';

const Header = () => {
  const [isOpen, setIsOpen] = useState(false);

  const toggleMenu = () => {
    setIsOpen(!isOpen);
  };

  return (
    <header className=" shadow-xl py-4 w-full">
      <div className="container mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between py-3 ">
          {/* Logo */}
          <div className="flex-shrink-0">
            <a href="/">
              <img
                src="https://reportphish.ai/wp-content/uploads/2020/10/Logo-Rp-300-x-83.jpg"
                alt="ReportPhish.ai Logo"
                className="h-10 w-auto transition-transform duration-300 hover:scale-105"
              />
            </a>
          </div>


          {/* Desktop Navigation */}
          <nav className="hidden md:flex space-x-10">
            {['Home', 'Registration', 'FAQ', 'Why Reportphish.ai?', 'Scam Alerts', 'Contact Us'].map((item) => (
              <a
                key={item}
                href={`#${item.toLowerCase()}`}
                className="text-black text-lg font-[400] font-sans relative group transition-colors duration-300 hover:text-[#8922fc] "
              >
                {item}
                <span className="absolute left-0 bottom-[-5px] w-0 h-0.5 bg-[#8922fc] rounded-full transition-all duration-300 group-hover:w-full group-hover:shadow-[0_0_5px_1px_rgba(59,130,246,0)]"></span>
              </a>
            ))}
          </nav>

          {/* Sign Up Button (Desktop) */}
          <div className="hidden md:block">
            <a
              href="#signup"
              className="border-[2px] px-[40px] py-[10px] rounded-[50px] border-[#8922fc] text-[17px] font-[500] hover:text-[#fff] hover:bg-[#8922fc] transition-all duration-300"
            >
              Sign Up
            </a>
          </div>

          {/* Hamburger Menu (Mobile) */}
          <div className="md:hidden">
            <button
              onClick={toggleMenu}
              className="text-white focus:outline-none"
              aria-label={isOpen ? 'Close menu' : 'Open menu'}
            >
              {isOpen ? <FaTimes size={24} /> : <FaBars size={24} />}
            </button>
          </div>
        </div>

        {/* Mobile Navigation */}
        {/* Mobile Navigation */}
        <div
          className={`md:hidden fixed inset-0 bg-white transition-transform duration-500 transform ${isOpen ? 'translate-x-0' : 'translate-x-full'
            } z-40`}
        >
          {/* Close Button */}
          <button
            onClick={toggleMenu}
            className="absolute top-4 right-4 text-black z-50"
            aria-label="Close menu"
          >
            <FaTimes size={28} />
          </button>

          <div className="relative flex flex-col items-center justify-center h-full space-y-10">
            {['Home', 'About', 'Services', 'Contact'].map((item) => (
              <a
                key={item}
                href={`#${item.toLowerCase()}`}
                onClick={toggleMenu}
                className="text-black text-2xl font-semibold font-sans relative group transition-colors duration-300 hover:text-blue-600"
              >
                {item}
                <span className="absolute left-1/2 bottom-0 w-0 h-0.5 bg-blue-400 rounded-full transition-all duration-300 group-hover:w-1/2 group-hover:left-1/4 group-hover:shadow-[0_0_5px_1px_rgba(59,130,246,0.5)]"></span>
              </a>
            ))}
            <a
              href="#signup"
              onClick={toggleMenu}
              className="bg-black text-white px-8 py-3 rounded-lg font-semibold tracking-wide hover:bg-gray-900 transition-all duration-300 shadow-md hover:shadow-lg transform hover:-translate-y-0.5"
            >
              Sign Up
            </a>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;
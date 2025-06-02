import { useState } from 'react';
import { FaBars, FaTimes } from 'react-icons/fa';
import { useLocation, Link } from 'react-router-dom'; // 👈 import Link and useLocation

const Header = () => {
  const [isOpen, setIsOpen] = useState(false);
  const location = useLocation(); // 👈 get current path

  const navItems = [
    { name: 'Home', href: '/' },
    { name: 'Registration', href: '/registration' },
    { name: 'FAQ', href: '/faq' },
    { name: 'Why Reportphish.ai?', href: '/why-reportphish-ai' },
    { name: 'Scam Alerts', href: '/scam-alerts' },
    { name: 'Contact Us', href: '/contact' },
  ];

  const toggleMenu = () => setIsOpen(!isOpen);

  return (
    <header className="w-full bg-white z-50 sticky top-0 shadow-md">
      <div className="container mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between py-5">
          {/* Logo */}
          <Link to="/" className="flex-shrink-0">
            <div className="flex flex-col gap-y-3">
              <div className='logo'>
                <img
                  src={require("../assets/images/main-logo.jpg")}
                  alt="ReportPhish.ai Logo"
                  className="h-12 w-auto transition-transform duration-300 hover:scale-105"
                />
              </div>
              <div className='flex items-center gap-3'>
                <p className="text-[14px]">Made by</p>
                <div className='logo'>
                  <img
                    src={require("../assets/images/logo2.jpg")}
                    alt="ReportPhish.ai Logo"
                    className="h-8 w-auto transition-transform duration-300 hover:scale-105"
                  />
                </div>
              </div>
            </div>
          </Link>

          {/* Desktop Menu */}
          <nav className="hidden md:flex space-x-8">
            {navItems.map((item) => (
              <Link
                key={item.name}
                to={item.href}
                className={`text-lg font-[400] font-sans relative group transition-colors duration-300 ${location.pathname === item.href ? 'text-[#8922fc]' : 'text-black'
                  }`}
              >
                {item.name}
                <span
                  className={`absolute left-0 bottom-[-5px] h-0.5 rounded-full transition-all duration-300 ${location.pathname === item.href
                    ? 'w-full bg-[#8922fc] shadow-[0_0_5px_1px_rgba(59,130,246,0)]'
                    : 'w-0 bg-[#8922fc] group-hover:w-full'
                    }`}
                ></span>
              </Link>
            ))}
          </nav>

          {/* Login Button (Desktop) */}
          <div className="hidden md:block">
            <Link
              to="/login"
              className="border-2 px-10 py-3 rounded-full border-[#8922fc] text-[17px] font-medium hover:text-white hover:bg-[#8922fc] transition-all duration-300"
            >
              Login
            </Link>
          </div>

          {/* Hamburger Icon (Mobile) */}
          <div className="md:hidden">
            <button
              onClick={toggleMenu}
              className="text-black focus:outline-none"
              aria-label={isOpen ? 'Close menu' : 'Open menu'}
            >
              {isOpen ? <FaTimes size={24} /> : <FaBars size={24} />}
            </button>
          </div>
        </div>
      </div>

      {/* Mobile Menu */}
      <div
        className={`md:hidden fixed top-0 right-0 h-full w-4/5 bg-white shadow-lg transform transition-transform duration-300 z-40 ${isOpen ? 'translate-x-0' : 'translate-x-full'
          }`}
      >
        <div className="p-6 flex flex-col h-full">
          {/* Close Button */}
          <button
            onClick={toggleMenu}
            className="self-end mb-6 text-black"
            aria-label="Close menu"
          >
            <FaTimes size={28} />
          </button>

          {/* Mobile Nav Links */}
          <div className="flex flex-col space-y-6">
            {navItems.map((item) => (
              <Link
                key={item.name}
                to={item.href}
                onClick={toggleMenu}
                className={`text-xl font-[500] transition-colors duration-200 ${location.pathname === item.href ? 'text-[#8922fc]' : 'text-black'
                  }`}
              >
                {item.name}
              </Link>
            ))}

            <Link
              to="/login"
              onClick={toggleMenu}
              className="mt-6 bg-[#8922fc] text-white text-center py-3 rounded-full font-semibold hover:bg-[#6a1ccf] transition duration-300 shadow-md"
            >
              Login
            </Link>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;

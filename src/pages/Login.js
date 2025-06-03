import React from 'react'

export default function Login() {
    return (
        <div className="min-h-screen bg-gradient-to-br from-[#8922fc] to-[#42047e] px-3">
            <div className='flex items-center justify-center min-h-screen'>
                <div className="w-full max-w-md bg-black backdrop-blur-lg rounded-3xl shadow-xl p-8 border border-white/20 transform hover:scale-105 transition-transform duration-500">
                    <h1 className="text-4xl font-extrabold text-center text-white mb-8 tracking-tight">Welcome Back</h1>

                    <div className="flex justify-center space-x-4 mb-8 flex-wrap gap-3">
                        <button className="group flex items-center justify-center bg-white/20 text-white font-semibold px-5 py-3 md:px-6 rounded-full hover:bg-white/30 transition-all duration-300">
                            <svg className="w-6 h-6 mr-3 group-hover:scale-110 transition-transform duration-300" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 4.5c1.93 0 3.5 1.57 3.5 3.5S13.93 13.5 12 13.5 8.5 11.93 8.5 10 10.07 6.5 12 6.5zm0 13c-2.66 0-4.85-1.47-6-3.54.88-1.39 2.56-2.46 4.5-2.46h3c1.94 0 3.62 1.07 4.5 2.46-1.15 2.07-3.34 3.54-6 3.54z" />
                            </svg>
                            Google
                        </button>
                        <button className="group flex items-center justify-center bg-white/20 text-white font-semibold px-5 py-3 md:px-6 rounded-full hover:bg-white/30 transition-all duration-300">
                            <svg className="w-6 h-6 mr-3 group-hover:scale-110 transition-transform duration-300" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H7v-3h3V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3v3h-3v6.8c4.56-.93 8-4.96 8-9.8z" />
                            </svg>
                            Facebook
                        </button>
                    </div>

                    <div className="flex items-center justify-center mb-8">
                        <span className="text-white/70 font-semibold tracking-wide">OR</span>
                    </div>

                    <div className="space-y-5">
                        <input
                            type="text"
                            placeholder="Username or Email"
                            className="w-full p-4 bg-white/10 border border-white/20 text-white placeholder-white/50 rounded-xl focus:outline-none focus:ring-2 focus:ring-purple-400 transition-all duration-300"
                        />
                        <div className="relative">
                            <input
                                type="password"
                                placeholder="Password"
                                className="w-full p-4 bg-white/10 border border-white/20 text-white placeholder-white/50 rounded-xl focus:outline-none focus:ring-2 focus:ring-purple-400 transition-all duration-300"
                            />
                            <button className="absolute right-4 top-1/2 transform -translate-y-1/2 text-white/70 hover:text-white transition-colors duration-300">
                                <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                </svg>
                            </button>
                        </div>
                        <button className="w-full bg-gradient-to-r from-purple-500 to-indigo-500 text-white font-bold py-4 rounded-xl hover:from-purple-600 hover:to-indigo-600 transition-all duration-300 shadow-lg">
                            Sign In
                        </button>
                    </div>

                    <div className="mt-6 text-center">
                        <a href="#" className="text-white/80 hover:text-white hover:underline transition-colors duration-300">Forgot Password?</a>
                    </div>
                    <div className="mt-3 text-center">
                        <span className="text-white/80">Don't have an account? </span>
                        <a href="#" className="text-purple-300 hover:text-purple-200 hover:underline transition-colors duration-300">Sign Up</a>
                    </div>
                </div>
            </div>
        </div>
    )
}

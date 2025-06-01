import React from 'react'

export default function Loader() {
    return (
        <div>
            <div className="fixed inset-0 flex items-center justify-center flex flex-col gap-y-3 bg-white z-50">
                <div className="animate-spin rounded-full h-16 w-16 border-t-4 border-[#8922fc] border-opacity-50"></div>
                <p>Please wait...</p>
            </div>

        </div>
    )
}

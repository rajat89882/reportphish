import { useEffect } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { IconX } from '@tabler/icons-react';

const ErrorPopup = ({ message, show, onClose }) => {
    useEffect(() => {
        if (show) {
            const timer = setTimeout(() => {
                onClose();
            }, 5000); // auto-close after 5 seconds
            return () => clearTimeout(timer);
        }
    }, [show, onClose]);

    return (
        <AnimatePresence>
            {show && (
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: 20 }}
                    transition={{ duration: 0.3 }}
                    className="fixed bottom-6 right-6 bg-red-500 text-white px-6 py-4 rounded-2xl shadow-lg flex items-center space-x-4 z-50"
                >
                    <div className="flex-1">{message}</div>
                    <button onClick={onClose} className="hover:scale-110 transition-transform">
                        <IconX size={20} />
                    </button>
                </motion.div>
            )}
        </AnimatePresence>
    );
};

export default ErrorPopup;

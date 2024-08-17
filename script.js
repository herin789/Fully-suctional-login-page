// login Page

import React, { useState } from 'react';

const LoginPage = () => {
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');
    const [loading, setLoading] = useState(false);
    
    const handleSubmit = async (e) => {
        e.preventDefault();
        
        if (!username || !password) {
            setError('Please enter both username and password');
            return;
        }
        
        setLoading(true);
        setError('');
        
        try {
            // Simulate authentication request
            const response = await fetch('/api/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ username, password }),
            });
            
            if (!response.ok) {
                throw new Error('Failed to authenticate');
            }
            
            // Store the token in local storage
            const token = await response.json();
            localStorage.setItem('token', token);
            
            // Redirect to the home page
            window.location.href = '/';
        } catch (error) {
            setError('Failed to authenticate');
        } finally {
            setLoading(false);
        }
    };
    
    return (
        <div>
            <h1>Login</h1>
            <form onSubmit={handleSubmit}>
            
            </form>
            
            {error && <div className="error">{error}</div>}
            
            {loading && <div className="loading">Loading...</div>}
        </div>
    );
    
    
}
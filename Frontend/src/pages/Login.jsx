import { useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { useNavigate } from 'react-router-dom';
import { LogIn } from 'lucide-react';

export default function Login() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const { login } = useAuth();
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      await login(email, password);
      navigate('/admin');
    } catch (err) {
      alert('Giriş başarısız!');
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-50">
      <form onSubmit={handleSubmit} className="bg-white p-10 rounded-2xl shadow-lg w-full max-w-md">
        <div className="flex flex-col items-center mb-8">
          <div className="bg-primary/10 p-4 rounded-full mb-4">
            <LogIn className="text-primary" size={32} />
          </div>
          <h2 className="text-3xl font-bold font-heading">Yönetici Girişi</h2>
        </div>
        <div className="space-y-4">
          <input 
            type="email" 
            placeholder="E-posta" 
            className="w-full p-4 border rounded-xl outline-primary" 
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
          <input 
            type="password" 
            placeholder="Şifre" 
            className="w-full p-4 border rounded-xl outline-primary" 
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
          <button className="w-full bg-secondary text-white p-4 rounded-xl font-bold hover:bg-darkBg transition-all">
            Giriş Yap
          </button>
        </div>
      </form>
    </div>
  );
}
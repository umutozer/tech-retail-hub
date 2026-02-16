import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { AuthProvider } from './context/AuthContext';
import Home from './pages/Home';
import Login from './pages/Login';
import ProtectedRoute from './components/ProtectedRoute';
import { Layout } from 'lucide-react'; // Placeholder for Navbar components

const AdminDashboard = () => (
  <div className="p-10 font-heading">
    <h1 className="text-3xl font-bold">Admin Kontrol Paneli</h1>
    <p className="mt-4">Stok ve Ürün Yönetimi modülü aktif.</p>
  </div>
);

export default function App() {
  return (
    <AuthProvider>
      <Router>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/login" element={<Login />} />
          <Route 
            path="/admin" 
            element={
              <ProtectedRoute>
                <AdminDashboard />
              </ProtectedRoute>
            } 
          />
        </Routes>
      </Router>
    </AuthProvider>
  );
}
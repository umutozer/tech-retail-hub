import { useEffect, useState } from 'react';
import api from '../services/api';
import { ShoppingBag, Cpu, Smartphone, ChevronRight } from 'lucide-react';

export default function Home() {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    api.get('/products/featured').then(res => setProducts(res.data)).catch(err => console.log(err));
  }, []);

  return (
    <div className="min-h-screen">
      {/* Hero Section */}
      <section className="bg-darkBg text-white py-24 px-6 text-center">
        <h1 className="text-5xl md:text-7xl font-bold font-heading mb-6">Teknolojide Yeni Nesil Deneyim</h1>
        <p className="text-xl text-gray-400 max-w-2xl mx-auto mb-10">En son model akıllı telefonlar ve yüksek performanslı bilgisayarlar Tech Retail Hub güvencesiyle.</p>
        <button className="bg-primary hover:bg-opacity-90 px-8 py-4 rounded-full font-bold transition-all">
          Ürünleri Keşfet
        </button>
      </section>

      {/* Featured Products */}
      <section className="max-w-7xl mx-auto py-20 px-6">
        <div className="flex justify-between items-end mb-12">
          <div>
            <h2 className="text-3xl font-bold font-heading">Öne Çıkan Cihazlar</h2>
            <div className="h-1 w-20 bg-accent mt-2"></div>
          </div>
        </div>
        
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {products.map(product => (
            <div key={product.id} className="group border rounded-2xl overflow-hidden hover:shadow-xl transition-all">
              <div className="h-64 bg-gray-100 flex items-center justify-center">
                <img src={product.imageUrl} alt={product.name} className="h-48 object-contain group-hover:scale-105 transition-transform" />
              </div>
              <div className="p-6">
                <span className="text-sm text-primary font-bold uppercase">{product.category}</span>
                <h3 className="text-xl font-bold mt-1">{product.name}</h3>
                <p className="text-gray-500 mt-2">{product.shortDescription}</p>
                <div className="mt-4 flex justify-between items-center">
                  <span className="text-2xl font-bold text-secondary">{product.price} ₺</span>
                  <button className="text-primary flex items-center gap-1 font-semibold">
                    İncele <ChevronRight size={18} />
                  </button>
                </div>
              </div>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}
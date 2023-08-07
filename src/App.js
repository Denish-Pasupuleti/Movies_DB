import React from 'react';
import './App.css';
import { BrowserRouter as Router, Routes, Route}
	from 'react-router-dom';
import Navbar from './components/Navbar';
import Home from './pages';
import About from './pages/about';
import Schema from './pages/schema';
import Table1 from './pages/table1';
import Table2 from './pages/table2';
import Table3 from './pages/table3';
import Table4 from './pages/table4';
import Footer from './components/Footer';

function App() {
return (
	<Router>
	<Navbar />
	<Routes>
		<Route exact path='/' element={<Home />} />
		<Route path='/about' element={<About />} />
		<Route path='/table1' element={<Table1 />} />
		<Route path='/table2' element={<Table2 />} />
		<Route path='/table3' element={<Table3 />} />
		<Route path='/table4' element={<Table4 />} />
		<Route path='/schema' element={<Schema />} />

	</Routes>
	<Footer></Footer>
	</Router>
);
}

export default App;

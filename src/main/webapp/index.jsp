<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=yes" />
    <title>NexusShop · modern e‑commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }
        :root {
            --bg: #fafcff;
            --primary: #0b2b44;
            --accent: #00c8ff;
            --accent-soft: #d6f0ff;
            --muted: #5f6c80;
            --card: #ffffff;
            --surface: #f1f7fd;
            --success: #2a9d8f;
            --radius: 18px;
            --shadow: 0 12px 28px rgba(0, 20, 40, 0.06);
            --container: 1240px;
            --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
        }
        body {
            font-family: Inter, system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            padding: 0 12px;
        }
        .container { max-width: var(--container); margin: 0 auto; padding: 0 18px; }
        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; height: auto; border-radius: var(--radius); }

        /* ===== HEADER ===== */
        header {
            position: sticky;
            top: 8px;
            z-index: 50;
            background: rgba(255, 255, 255, 0.78);
            backdrop-filter: blur(14px) saturate(180%);
            -webkit-backdrop-filter: blur(14px) saturate(180%);
            border-radius: 48px;
            margin: 8px auto 0;
            padding: 6px 12px;
            box-shadow: 0 4px 24px rgba(0, 0, 0, 0.02), 0 0 0 1px rgba(255, 255, 255, 0.5);
            border: 1px solid rgba(255,255,255,0.7);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 8px 14px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 6px;
            font-family: Poppins, sans-serif;
            font-weight: 700;
            font-size: 1.4rem;
            letter-spacing: -0.02em;
        }
        .brand .accent { color: var(--accent); }
        .brand i { color: var(--accent); font-size: 1.2rem; }

        nav.main-nav ul {
            display: flex;
            gap: 2px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 14px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.95rem;
            color: var(--primary);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a:focus-visible {
            background: var(--surface);
            color: var(--accent);
        }
        .search {
            display: flex;
            align-items: center;
            background: var(--bg);
            border-radius: 60px;
            padding: 4px 6px 4px 18px;
            border: 1px solid rgba(0,0,0,0.02);
            box-shadow: 0 2px 8px rgba(0,0,0,0.01);
            transition: var(--transition);
            min-width: 200px;
        }
        .search:focus-within { box-shadow: 0 0 0 2px var(--accent-soft); background: white; }
        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 8px 0;
            font-size: 0.9rem;
        }
        .search button {
            background: var(--accent);
            border: 0;
            color: white;
            border-radius: 40px;
            padding: 8px 18px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .search button:hover { background: #00b0e0; transform: scale(0.96); }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .icon-btn {
            background: transparent;
            border: 0;
            font-size: 1.2rem;
            padding: 8px 10px;
            border-radius: 40px;
            cursor: pointer;
            color: var(--primary);
            transition: var(--transition);
        }
        .icon-btn:hover { background: var(--surface); color: var(--accent); }
        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 6px 14px 6px 10px;
            border-radius: 60px;
            background: var(--surface);
            font-weight: 600;
        }
        .cart-count {
            background: var(--accent);
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            margin-left: 2px;
        }

        .mobile-toggle { display: none; background: transparent; border: 0; font-size: 1.6rem; padding: 4px 8px; }
        .mobile-menu {
            display: none;
            background: white;
            border-radius: 24px;
            margin-top: 6px;
            padding: 12px 6px;
            box-shadow: 0 12px 32px rgba(0,0,0,0.02);
        }
        .mobile-menu ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
        .mobile-menu ul li a { display: block; padding: 12px 18px; border-radius: 30px; font-weight: 500; }

        /* ===== HERO ===== */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: linear-gradient(135deg, #0b2b44 0%, #15455e 100%);
            color: white;
            border-radius: 40px;
            padding: 52px 28px;
            margin: 20px auto 8px;
            position: relative;
            overflow: hidden;
        }
        .hero::after {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(circle at 70% 30%, rgba(0, 200, 255, 0.08), transparent 60%);
            pointer-events: none;
        }
        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(2rem, 5vw, 3.2rem);
            letter-spacing: -0.02em;
            margin-bottom: 12px;
        }
        .hero p {
            opacity: 0.85;
            max-width: 600px;
            margin: 0 auto 24px;
        }
        .btn-group { display: flex; flex-wrap: wrap; justify-content: center; gap: 12px; }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            border: 0;
            cursor: pointer;
            transition: var(--transition);
            font-size: 0.95rem;
        }
        .btn-primary { background: var(--accent); color: #042233; }
        .btn-primary:hover { background: #00bae5; transform: scale(1.01); box-shadow: 0 8px 18px rgba(0, 200, 255, 0.2); }
        .btn-ghost { background: rgba(255, 255, 255, 0.08); backdrop-filter: blur(4px); border: 1px solid rgba(255,255,255,0.15); color: white; }
        .btn-ghost:hover { background: rgba(255, 255, 255, 0.18); }

        /* ===== SECTIONS ===== */
        .section { padding: 40px 0 24px; }
        .section-title {
            text-align: center;
            margin-bottom: 6px;
            font-family: Poppins, sans-serif;
            letter-spacing: -0.01em;
        }
        .section-sub { text-align: center; color: var(--muted); margin-bottom: 28px; }

        /* categories */
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
            gap: 16px;
        }
        .cat-card {
            background: var(--card);
            border-radius: 30px;
            padding: 22px 12px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid rgba(255,255,255,0.5);
        }
        .cat-card:hover { transform: translateY(-6px); box-shadow: 0 20px 40px rgba(0,0,0,0.04); background: white; }
        .cat-card .icon { font-size: 2rem; color: var(--accent); margin-bottom: 6px; }

        /* products */
        .grid-products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 20px;
        }
        .product {
            background: var(--card);
            border-radius: 28px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 1px solid rgba(255,255,255,0.6);
        }
        .product:hover { transform: scale(1.01); box-shadow: 0 20px 40px rgba(0, 0, 0, 0.03); }
        .product img { width: 100%; aspect-ratio: 1/1; object-fit: cover; background: #f0f4fa; }
        .product-body { padding: 16px 16px 10px; flex: 1; }
        .product-body h5 { font-size: 1rem; font-weight: 600; margin-bottom: 2px; }
        .product-body .category-tag { font-size: 0.7rem; color: var(--muted); text-transform: uppercase; letter-spacing: 0.04em; }
        .price-row { display: flex; align-items: center; justify-content: space-between; margin-top: 8px; flex-wrap: wrap; }
        .price { font-weight: 700; font-size: 1.2rem; }
        .old-price { color: var(--muted); text-decoration: line-through; font-size: 0.85rem; margin-left: 6px; }
        .rating { color: #f9a825; font-size: 0.85rem; }
        .product-footer {
            padding: 6px 16px 16px;
            display: flex;
            gap: 8px;
            align-items: center;
        }
        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 12px 6px;
            border-radius: 60px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
        }
        .add-btn:hover { background: var(--accent); color: #042233; }
        .wish-btn {
            background: var(--surface);
            border: 0;
            width: 44px;
            height: 44px;
            border-radius: 60px;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .wish-btn:hover { background: #ffe6e6; color: #d44; }

        /* deal */
        .deal-card {
            display: flex;
            gap: 20px;
            background: var(--card);
            border-radius: 40px;
            overflow: hidden;
            box-shadow: var(--shadow);
            align-items: stretch;
            flex-wrap: wrap;
        }
        .deal-card img { width: 100%; max-width: 380px; object-fit: cover; flex: 1; }
        .deal-content { padding: 28px 30px; flex: 2; min-width: 260px; }
        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 20px 0 16px;
            flex-wrap: wrap;
        }
        .time-box {
            background: var(--primary);
            color: white;
            padding: 12px 10px;
            border-radius: 20px;
            min-width: 70px;
            text-align: center;
            font-weight: 600;
        }
        .time-box span { display: block; font-size: 1.8rem; line-height: 1; }
        .deal-discount { background: #ff4757; color: white; padding: 4px 14px; border-radius: 40px; font-weight: 700; font-size: 0.9rem; }

        /* testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 18px;
            overflow-x: auto;
            padding: 8px 2px 16px;
            scroll-snap-type: x mandatory;
        }
        .testimonial {
            min-width: 280px;
            flex-shrink: 0;
            background: var(--card);
            padding: 22px;
            border-radius: 32px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
        }

        /* newsletter */
        .newsletter-box {
            background: var(--primary);
            color: white;
            border-radius: 40px;
            padding: 40px 24px;
            text-align: center;
        }
        .newsletter-box input {
            padding: 14px 20px;
            border-radius: 60px;
            border: 0;
            width: 280px;
            max-width: 100%;
            margin-right: 8px;
            margin-bottom: 8px;
            background: rgba(255,255,255,0.06);
            color: white;
            border: 1px solid rgba(255,255,255,0.1);
        }
        .newsletter-box input::placeholder { color: rgba(255,255,255,0.5); }
        .newsletter-box .btn-primary { background: white; color: var(--primary); }
        .newsletter-box .btn-primary:hover { background: var(--accent); color: #042233; }

        footer {
            margin-top: 32px;
            padding: 32px 0 20px;
            border-top: 1px solid rgba(0,0,0,0.02);
            color: var(--muted);
        }

        @media (max-width: 860px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .search { min-width: 140px; }
            .search input { width: 100px; }
        }
        @media (max-width: 600px) {
            .header-inner { flex-wrap: wrap; }
            .search { order: 3; flex: 1 1 100%; }
            .grid-products { grid-template-columns: 1fr 1fr; }
            .deal-card img { max-width: 100%; }
        }
        @media (max-width: 420px) {
            .grid-products { grid-template-columns: 1fr; }
            .hero { padding: 32px 16px; border-radius: 24px; }
        }
        .muted { color: var(--muted); }
        .text-center { text-align: center; }
        .flex { display: flex; align-items: center; gap: 12px; flex-wrap: wrap; }
    </style>
</head>
<body>

<header>
    <div class="header-inner container">
        <div class="flex">
            <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#"><i class="fas fa-bolt"></i> Nexus<span class="accent">Shop</span></a>
        </div>

        <nav class="main-nav" id="mainNav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
            </ul>
        </nav>

        <div class="flex" style="gap:6px;">
            <div class="search" role="search">
                <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
                <button id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
            <div class="header-actions">
                <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
                <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                <a class="cart" href="#" id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </a>
            </div>
        </div>
    </div>

    <div class="mobile-menu container" id="mobileMenu">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#">Trending</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#">About</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- HERO -->
    <section class="hero container">
        <div>
            <h1>Winter Edit · Premium Picks</h1>
            <p>Fresh styles, top tech & everyday essentials — curated with care. Limited deals inside.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
                <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
            </div>
        </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section container" aria-labelledby="cat-title">
        <h2 class="section-title" id="cat-title">Browse by category</h2>
        <p class="section-sub">Find what you love, fast.</p>
        <div class="grid-categories" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS -->
    <section class="section container" aria-labelledby="prod-title">
        <h2 class="section-title" id="prod-title">Trending now</h2>
        <p class="section-sub">What people are grabbing today</p>
        <div class="grid-products" id="productsGrid"></div>
    </section>

    <!-- DEAL -->
    <section id="deals" class="section container">
        <h2 class="section-title">⚡ Flash sale</h2>
        <p class="section-sub">Don't wait — these prices vanish.</p>
        <div class="deal-card" id="dealCard">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2" loading="lazy">
            <div class="deal-content">
                <h3>MacBook Air M2</h3>
                <p class="muted">Supercharged by the M2 chip. Light, quiet, and a battery that lasts.</p>
                <div class="timer-grid">
                    <div class="time-box"><span id="dealDays">0</span>Days</div>
                    <div class="time-box"><span id="dealHours">00</span>Hrs</div>
                    <div class="time-box"><span id="dealMinutes">00</span>Min</div>
                    <div class="time-box"><span id="dealSeconds">00</span>Sec</div>
                </div>
                <div class="flex">
                    <div><span class="price">$999</span> <span class="old-price">$1,199</span></div>
                    <span class="deal-discount">−17%</span>
                </div>
                <p style="margin: 10px 0 4px;"><strong>12</strong> left at this price</p>
                <button class="btn btn-primary" id="buyDeal"><i class="fas fa-bolt"></i> Buy now</button>
            </div>
        </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section container" aria-labelledby="test-title">
        <h2 class="section-title" id="test-title">Real reviews · real people</h2>
        <p class="section-sub">Loved by shoppers like you</p>
        <div class="testimonials-scroll" id="testimonials"></div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section container">
        <div class="newsletter-box">
            <h3>Stay in the loop</h3>
            <p style="opacity:0.8; margin-bottom:16px;">Get first dibs on sales & new drops.</p>
            <form id="newsletterForm" style="display:flex; justify-content:center; gap:8px; flex-wrap:wrap;">
                <input type="email" id="newsletterEmail" placeholder="Email address" required />
                <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
            </form>
            <div id="newsletterMsg" style="margin-top:14px; font-size:0.9rem; display:none;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display:flex; flex-wrap:wrap; gap:24px; justify-content:space-between;">
        <div><span style="font-weight:700; font-size:1.2rem;">NexusShop</span><p class="muted" style="margin-top:6px; max-width:300px;">Modern e‑commerce demo — built with care.</p></div>
        <div style="display:flex; gap:32px; flex-wrap:wrap;">
            <div><div style="font-weight:600;">Company</div><div class="muted" style="line-height:2;">About · Careers · Press</div></div>
            <div><div style="font-weight:600;">Support</div><div class="muted" style="line-height:2;">Help · Returns · Contact</div></div>
        </div>
    </div>
    <div class="container text-center muted" style="margin-top:20px; font-size:0.8rem;">&copy; <span id="year"></span> NexusShop · All rights reserved</div>
</footer>

<script>
    (function() {
        // data
        const CATEGORIES = [
            { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '−25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
            { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
        ];

        const TESTIMONIALS = [
            { name: 'Ava Martin', rating: 5, text: 'Fast shipping and excellent support. The product exceeded my expectations!', img: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80' },
            { name: 'Michael Lee', rating: 4, text: 'Great selection and smooth checkout. Will shop again.', img: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80' }
        ];

        let cartCount = 0;
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const productsGrid = document.getElementById('productsGrid');
        const categoriesGrid = document.getElementById('categoriesGrid');

        // render helpers
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(c => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4>`;
                el.addEventListener('click', () => { searchInput.value = c.name; filterProducts(c.name); });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const badgeHtml = p.badge ? `<span style="background:${p.badge.startsWith('−')?'#ff4757':'#2a9d8f'};color:white;padding:4px 12px;border-radius:40px;font-size:0.7rem;font-weight:700;">${p.badge}</span>` : '';
                const el = document.createElement('div');
                el.className = 'product';
                el.innerHTML = `
                    <img src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-body">
                        <div style="display:flex;justify-content:space-between;align-items:center;">
                            <h5>${p.title}</h5>
                            ${badgeHtml}
                        </div>
                        <div class="category-tag">${p.category}</div>
                        <div class="price-row">
                            <span><span class="price">$${p.price}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</span>
                            <span class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:var(--muted);font-size:0.7rem;">(${p.reviews})</span></span>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
                        <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });
            document.querySelectorAll('.add-btn').forEach(btn => btn.addEventListener('click', (e) => {
                const id = Number(btn.dataset.id);
                addToCart(id, btn);
            }));
        }

        function renderTestimonials() {
            const container = document.getElementById('testimonials');
            container.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const el = document.createElement('div');
                el.className = 'testimonial';
                el.innerHTML = `
                    <div class="rating">${'★'.repeat(t.rating)}</div>
                    <p style="margin:8px 0 12px;">“${t.text}”</p>
                    <div class="flex">
                        <img src="${t.img}" alt="${t.name}" style="width:40px;height:40px;border-radius:60px;object-fit:cover;">
                        <div><strong>${t.name}</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
                    </div>
                `;
                container.appendChild(el);
            });
        }

        // cart
        function addToCart(id, btn) {
            const p = PRODUCTS.find(x => x.id === id);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            if (btn) {
                const orig = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                btn.style.background = '#2a9d8f';
                setTimeout(() => { btn.innerHTML = orig; btn.style.background = ''; }, 1200);
            }
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        // deal timer
        function setupTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) return;
                document.getElementById('dealDays').textContent = Math.floor(diff / (24 * 3600 * 1000));
                document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
            }
            tick(); setInterval(tick, 1000);
        }

        // event bindings
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

        document.getElementById('mobileToggle').addEventListener('click', () => {
            const menu = document.getElementById('mobileMenu');
            menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
        });

        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({ top: document.getElementById('prod-title').offsetTop - 60, behavior: 'smooth' }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById

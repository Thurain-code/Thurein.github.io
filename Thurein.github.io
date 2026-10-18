<!DOCTYPE html>
<html lang="en" class="dark scroll-smooth">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
  <!-- =====================================================================
       EASY EDIT: SITE TITLE & SEO METADATA
       Change the content below to update how your site appears on Google
       and when shared on social media.
       ===================================================================== -->
  <title>Thurein — Developer & Digital Creator</title>
  <meta name="description" content="Personal portfolio of Thurein — Software Developer, Designer, and Problem Solver building modern web experiences." />
  <meta property="og:title" content="Thurein — Personal Portfolio" />
  <meta property="og:description" content="Explore projects, skills, and ways to connect with Thurein." />
  <meta property="og:type" content="website" />

  <!-- Google Fonts: Inter & JetBrains Mono -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet" />

  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Tailwind Configuration for Fonts & Custom Colors -->
  <script>
    tailwind.config = {
      darkMode: 'class',
      theme: {
        extend: {
          fontFamily: {
            sans: ['Inter', 'system-ui', '-apple-system', 'sans-serif'],
            mono: ['JetBrains Mono', 'monospace'],
          },
          colors: {
            brand: {
              50: '#eef2ff',
              100: '#e0e7ff',
              400: '#818cf8',
              500: '#6366f1',
              600: '#4f46e5',
              700: '#4338ca',
            }
          }
        }
      }
    };
  </script>

  <style>
    /* Subtle background grid pattern */
    .bg-grid-pattern {
      background-size: 36px 36px;
      background-image: 
        linear-gradient(to right, rgba(148, 163, 184, 0.08) 1px, transparent 1px),
        linear-gradient(to bottom, rgba(148, 163, 184, 0.08) 1px, transparent 1px);
    }
    /* Smooth custom scrollbar */
    ::-webkit-scrollbar {
      width: 8px;
    }
    ::-webkit-scrollbar-track {
      background: transparent;
    }
    ::-webkit-scrollbar-thumb {
      background: rgba(148, 163, 184, 0.3);
      border-radius: 9999px;
    }
    ::-webkit-scrollbar-thumb:hover {
      background: rgba(148, 163, 184, 0.5);
    }
  </style>
</head>

<body class="bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 font-sans antialiased selection:bg-indigo-500 selection:text-white transition-colors duration-300 relative overflow-x-hidden">

  <!-- Ambient Background Glows -->
  <div class="fixed inset-0 pointer-events-none z-0 overflow-hidden">
    <div class="absolute inset-0 bg-grid-pattern"></div>
    <div class="absolute -top-40 -left-40 w-96 h-96 bg-indigo-500/15 dark:bg-indigo-500/20 rounded-full blur-3xl"></div>
    <div class="absolute top-1/3 -right-40 w-96 h-96 bg-cyan-500/10 dark:bg-cyan-500/15 rounded-full blur-3xl"></div>
    <div class="absolute -bottom-40 left-1/3 w-96 h-96 bg-purple-500/10 dark:bg-purple-500/15 rounded-full blur-3xl"></div>
  </div>

  <!-- =====================================================================
       1. STICKY GLASSMORPHISM NAVIGATION BAR
       ===================================================================== -->
  <header class="sticky top-0 z-50 w-full backdrop-blur-xl bg-white/75 dark:bg-slate-950/75 border-b border-slate-200/80 dark:border-slate-800/80 transition-colors duration-300">
    <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
      
      <!-- Brand / Logo -->
      <a href="#top" class="flex items-center gap-2.5 group focus:outline-none">
        <div class="w-9 h-9 rounded-xl bg-gradient-to-br from-indigo-500 to-cyan-500 flex items-center justify-center text-white font-bold text-lg shadow-md shadow-indigo-500/20 group-hover:scale-105 transition-transform">
          T
        </div>
        <span class="font-bold text-lg tracking-tight text-slate-900 dark:text-white">
          Thurein<span class="text-indigo-500">.</span>
        </span>
      </a>

      <!-- Desktop Navigation Links -->
      <nav class="hidden md:flex items-center gap-1 lg:gap-2">
        <a href="#about" class="px-3.5 py-2 rounded-lg text-sm font-medium text-slate-600 dark:text-slate-300 hover:text-indigo-600 dark:hover:text-white hover:bg-slate-100/80 dark:hover:bg-slate-800/60 transition-all">About</a>
        <a href="#skills" class="px-3.5 py-2 rounded-lg text-sm font-medium text-slate-600 dark:text-slate-300 hover:text-indigo-600 dark:hover:text-white hover:bg-slate-100/80 dark:hover:bg-slate-800/60 transition-all">Skills</a>
        <a href="#projects" class="px-3.5 py-2 rounded-lg text-sm font-medium text-slate-600 dark:text-slate-300 hover:text-indigo-600 dark:hover:text-white hover:bg-slate-100/80 dark:hover:bg-slate-800/60 transition-all">Projects</a>
        <a href="#contact" class="px-3.5 py-2 rounded-lg text-sm font-medium text-slate-600 dark:text-slate-300 hover:text-indigo-600 dark:hover:text-white hover:bg-slate-100/80 dark:hover:bg-slate-800/60 transition-all">Contact</a>
      </nav>

      <!-- Right Controls: Theme Toggle, CTA, and Mobile Menu Button -->
      <div class="flex items-center gap-2 sm:gap-3">
        <!-- Dark / Light Mode Toggle Button -->
        <button
          id="theme-toggle"
          type="button"
          aria-label="Toggle Dark or Light Mode"
          class="p-2.5 rounded-xl bg-slate-100 dark:bg-slate-800/90 text-slate-700 dark:text-slate-200 hover:bg-slate-200 dark:hover:bg-slate-700 border border-slate-200/80 dark:border-slate-700/80 transition-all"
          title="Toggle color theme"
        >
          <!-- Sun Icon (shown in dark mode) -->
          <svg id="theme-icon-sun" class="w-5 h-5 hidden dark:block text-amber-400" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
            <circle cx="12" cy="12" r="4"></circle>
            <path stroke-linecap="round" d="M12 2v2m0 16v2M4.93 4.93l1.41 1.41m11.32 11.32l1.41 1.41M2 12h2m16 0h2M6.34 17.66l-1.41 1.41M19.07 4.93l-1.41 1.41"></path>
          </svg>
          <!-- Moon Icon (shown in light mode) -->
          <svg id="theme-icon-moon" class="w-5 h-5 block dark:hidden text-slate-700" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"></path>
          </svg>
        </button>

        <!-- Quick Hire / Connect Button (Desktop) -->
        <a
          href="#contact"
          class="hidden sm:inline-flex items-center gap-2 px-4 py-2 rounded-xl text-sm font-semibold bg-slate-900 dark:bg-white text-white dark:text-slate-900 hover:bg-indigo-600 dark:hover:bg-indigo-400 dark:hover:text-slate-950 transition-all shadow-sm"
        >
          <span>Let's Talk</span>
          <svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
          </svg>
        </a>

        <!-- Mobile Menu Button -->
        <button
          id="mobile-menu-btn"
          type="button"
          aria-label="Open Navigation Menu"
          class="md:hidden p-2.5 rounded-xl bg-slate-100 dark:bg-slate-800/90 text-slate-700 dark:text-slate-200 border border-slate-200/80 dark:border-slate-700/80"
        >
          <svg id="menu-icon-open" class="w-5 h-5" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16"></path>
          </svg>
          <svg id="menu-icon-close" class="w-5 h-5 hidden" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
          </svg>
        </button>
      </div>
    </div>

    <!-- Mobile Navigation Drawer -->
    <div id="mobile-menu" class="hidden md:hidden border-t border-slate-200/80 dark:border-slate-800/80 bg-white/95 dark:bg-slate-950/95 backdrop-blur-xl px-4 pt-3 pb-5 space-y-1">
      <a href="#about" class="mobile-nav-link block px-4 py-2.5 rounded-xl text-base font-medium text-slate-700 dark:text-slate-200 hover:bg-indigo-50 dark:hover:bg-slate-800/70">About</a>
      <a href="#skills" class="mobile-nav-link block px-4 py-2.5 rounded-xl text-base font-medium text-slate-700 dark:text-slate-200 hover:bg-indigo-50 dark:hover:bg-slate-800/70">Skills</a>
      <a href="#projects" class="mobile-nav-link block px-4 py-2.5 rounded-xl text-base font-medium text-slate-700 dark:text-slate-200 hover:bg-indigo-50 dark:hover:bg-slate-800/70">Projects</a>
      <a href="#contact" class="mobile-nav-link block px-4 py-2.5 rounded-xl text-base font-medium text-slate-700 dark:text-slate-200 hover:bg-indigo-50 dark:hover:bg-slate-800/70">Contact</a>
    </div>
  </header>

  <!-- Main Content Container -->
  <main id="top" class="relative z-10 max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">

    <!-- =====================================================================
         2. HERO SECTION
         EASY EDIT: Customize your greeting, tagline, bio, and links below.
         ===================================================================== -->
    <section class="pt-12 pb-20 md:pt-24 md:pb-28">
      <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
        
        <!-- Left Column: Intro & CTAs -->
        <div class="lg:col-span-7 space-y-6">
          
          <!-- EASY EDIT: Status Badge (Change text if unavailable) -->
          <div class="inline-flex items-center gap-2.5 px-3.5 py-1.5 rounded-full bg-emerald-500/10 dark:bg-emerald-500/15 border border-emerald-500/25 text-emerald-700 dark:text-emerald-300 text-xs sm:text-sm font-medium">
            <span class="relative flex h-2.5 w-2.5">
              <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
              <span class="relative inline-flex rounded-full h-2.5 w-2.5 bg-emerald-500"></span>
            </span>
            <span>Available for projects &amp; collaborations</span>
          </div>

          <!-- EASY EDIT: Main Heading & Custom Tagline -->
          <div class="space-y-3">
            <h1 class="text-4xl sm:text-5xl lg:text-6xl font-extrabold tracking-tight text-slate-900 dark:text-white leading-[1.12]">
              Hi, I'm <span class="bg-gradient-to-r from-indigo-500 via-purple-500 to-cyan-500 bg-clip-text text-transparent">Thurein</span>
            </h1>
            <p class="text-xl sm:text-2xl font-semibold text-slate-700 dark:text-slate-300">
              Full-Stack Developer &amp; Digital Product Builder
            </p>
          </div>

          <!-- EASY EDIT: Hero Description / Bio Summary -->
          <p class="text-base sm:text-lg text-slate-600 dark:text-slate-400 max-w-2xl leading-relaxed">
            I design and build fast, accessible, and human-centered web applications. Focused on turning complex ideas into clean, reliable software with modern web technologies.
          </p>

          <!-- Call to Action Buttons -->
          <div class="flex flex-wrap items-center gap-3.5 pt-2">
            <a
              href="#projects"
              class="inline-flex items-center gap-2 px-6 py-3.5 rounded-xl font-semibold text-white bg-indigo-600 hover:bg-indigo-500 shadow-lg shadow-indigo-500/25 hover:shadow-indigo-500/40 transition-all transform hover:-translate-y-0.5"
            >
              <span>Explore My Work</span>
              <svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7"></path>
              </svg>
            </a>

            <a
              href="#contact"
              class="inline-flex items-center gap-2 px-6 py-3.5 rounded-xl font-semibold text-slate-700 dark:text-slate-200 bg-white dark:bg-slate-900 hover:bg-slate-100 dark:hover:bg-slate-800 border border-slate-200 dark:border-slate-800 transition-all shadow-sm"
            >
              <span>Get in Touch</span>
            </a>
          </div>

          <!-- Quick Highlights Row -->
          <div class="pt-4 grid grid-cols-3 gap-4 max-w-md border-t border-slate-200/80 dark:border-slate-800/80">
            <div>
              <p class="text-2xl font-bold text-slate-900 dark:text-white">10+</p>
              <p class="text-xs text-slate-500 dark:text-slate-400">Projects Built</p>
            </div>
            <div>
              <p class="text-2xl font-bold text-slate-900 dark:text-white">100%</p>
              <p class="text-xs text-slate-500 dark:text-slate-400">Responsive UI</p>
            </div>
            <div>
              <p class="text-2xl font-bold text-slate-900 dark:text-white">24/7</p>
              <p class="text-xs text-slate-500 dark:text-slate-400">Curious Learner</p>
            </div>
          </div>
        </div>

        <!-- Right Column: Interactive Developer Profile Card -->
        <div class="lg:col-span-5">
          <div class="relative rounded-2xl bg-white/80 dark:bg-slate-900/80 backdrop-blur-xl border border-slate-200/90 dark:border-slate-800 shadow-2xl shadow-indigo-500/10 overflow-hidden">
            
            <!-- Window Top Bar -->
            <div class="flex items-center justify-between px-4 py-3 bg-slate-100/80 dark:bg-slate-800/60 border-b border-slate-200/80 dark:border-slate-800">
              <div class="flex items-center gap-2">
                <span class="w-3 h-3 rounded-full bg-rose-400"></span>
                <span class="w-3 h-3 rounded-full bg-amber-400"></span>
                <span class="w-3 h-3 rounded-full bg-emerald-400"></span>
              </div>
              <span class="font-mono text-xs text-slate-500 dark:text-slate-400">thurein.config.js</span>
              <span class="text-xs font-mono text-indigo-500">UTF-8</span>
            </div>

            <!-- Code Content (EASY EDIT: Customize your developer card details) -->
            <div class="p-6 font-mono text-xs sm:text-sm leading-relaxed overflow-x-auto">
              <p class="text-slate-400 dark:text-slate-500">// Quick profile overview</p>
              <p class="mt-1">
                <span class="text-purple-600 dark:text-purple-400">const</span>
                <span class="text-indigo-600 dark:text-indigo-300 font-semibold"> developer</span> = &#123;
              </p>
              <p class="pl-4">
                name: <span class="text-emerald-600 dark:text-emerald-400">'Thurein'</span>,
              </p>
              <p class="pl-4">
                role: <span class="text-emerald-600 dark:text-emerald-400">'Full-Stack Developer'</span>,
              </p>
              <p class="pl-4">
                focus: [
                <span class="text-amber-600 dark:text-amber-300">'Web Apps'</span>,
                <span class="text-amber-600 dark:text-amber-300">'UI/UX'</span>,
                <span class="text-amber-600 dark:text-amber-300">'APIs'</span>
                ],
              </p>
              <p class="pl-4">
                passionateAbout: <span class="text-emerald-600 dark:text-emerald-400">'Clean code &amp; great design'</span>,
              </p>
              <p class="pl-4">
                openToWork: <span class="text-cyan-600 dark:text-cyan-400 font-semibold">true</span>
              </p>
              <p>&#125;;</p>

              <div class="mt-5 pt-4 border-t border-slate-200/70 dark:border-slate-800/80 flex items-center justify-between text-xs font-sans">
                <span class="text-slate-500 dark:text-slate-400 flex items-center gap-1.5">
                  <span class="w-2 h-2 rounded-full bg-indigo-500"></span>
                  Hosted at <strong class="text-slate-700 dark:text-slate-200">thurein.github.io</strong>
                </span>
                <a href="#contact" class="text-indigo-600 dark:text-indigo-400 font-medium hover:underline">Ping me &rarr;</a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>

    <!-- =====================================================================
         3. ABOUT ME SECTION
         EASY EDIT: Update the paragraphs and the 3 focus cards below.
         ===================================================================== -->
    <section id="about" class="py-16 md:py-24 scroll-mt-16 border-t border-slate-200/70 dark:border-slate-800/70">
      <div class="max-w-3xl mb-12">
        <span class="font-mono text-xs uppercase tracking-widest text-indigo-600 dark:text-indigo-400 font-semibold">01 / About Me</span>
        <h2 class="mt-2 text-3xl sm:text-4xl font-bold tracking-tight text-slate-900 dark:text-white">
          Crafting thoughtful digital experiences from concept to deployment.
        </h2>
        <p class="mt-4 text-slate-600 dark:text-slate-400 text-base sm:text-lg leading-relaxed">
          <!-- EASY EDIT: Your personal story -->
          I'm Thurein, a passionate creator and developer who enjoys building things that live on the internet. Whether I'm designing a polished user interface, optimizing performance, or automating workflows, I bring curiosity and attention to detail to every project.
        </p>
      </div>

      <!-- 3 Clean Highlight Cards -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        
        <!-- Card 1: Frontend & UI -->
        <div class="p-6 rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90 hover:border-indigo-500/50 transition-all shadow-sm group">
          <div class="w-11 h-11 rounded-xl bg-indigo-500/10 dark:bg-indigo-500/20 text-indigo-600 dark:text-indigo-400 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" stroke-width="1.8" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
            </svg>
          </div>
          <h3 class="text-lg font-bold text-slate-900 dark:text-white mb-2">Modern Web Development</h3>
          <p class="text-sm text-slate-600 dark:text-slate-400 leading-relaxed">
            Building responsive, mobile-first websites and web apps that look sharp and perform smoothly across every screen size and device.
          </p>
        </div>

        <!-- Card 2: Architecture & Problem Solving -->
        <div class="p-6 rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90 hover:border-indigo-500/50 transition-all shadow-sm group">
          <div class="w-11 h-11 rounded-xl bg-cyan-500/10 dark:bg-cyan-500/20 text-cyan-600 dark:text-cyan-400 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" stroke-width="1.8" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"></path>
            </svg>
          </div>
          <h3 class="text-lg font-bold text-slate-900 dark:text-white mb-2">Clean &amp; Scalable Code</h3>
          <p class="text-sm text-slate-600 dark:text-slate-400 leading-relaxed">
            Writing maintainable, well-documented code using modern standards, modular architecture, and pragmatic engineering practices.
          </p>
        </div>

        <!-- Card 3: User-Centric Design -->
        <div class="p-6 rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90 hover:border-indigo-500/50 transition-all shadow-sm group">
          <div class="w-11 h-11 rounded-xl bg-purple-500/10 dark:bg-purple-500/20 text-purple-600 dark:text-purple-400 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" stroke-width="1.8" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
            </svg>
          </div>
          <h3 class="text-lg font-bold text-slate-900 dark:text-white mb-2">Performance &amp; Detail</h3>
          <p class="text-sm text-slate-600 dark:text-slate-400 leading-relaxed">
            Focusing on fast load times, intuitive user journeys, and subtle interactions that elevate a website from good to memorable.
          </p>
        </div>

      </div>
    </section>

    <!-- =====================================================================
         4. SKILLS & TOOLKIT SECTION
         EASY EDIT: Add, remove, or rename pill badges inside each category.
         ===================================================================== -->
    <section id="skills" class="py-16 md:py-24 scroll-mt-16 border-t border-slate-200/70 dark:border-slate-800/70">
      <div class="max-w-3xl mb-12">
        <span class="font-mono text-xs uppercase tracking-widest text-indigo-600 dark:text-indigo-400 font-semibold">02 / Skills &amp; Toolkit</span>
        <h2 class="mt-2 text-3xl sm:text-4xl font-bold tracking-tight text-slate-900 dark:text-white">
          Technologies I work with
        </h2>
        <p class="mt-3 text-slate-600 dark:text-slate-400 text-base sm:text-lg">
          A curated set of languages, frameworks, and tools I use to bring ideas to life.
        </p>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        
        <!-- Category 1: Frontend -->
        <div class="p-6 rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90">
          <h3 class="text-sm font-mono uppercase tracking-wider text-slate-500 dark:text-slate-400 mb-4 flex items-center gap-2">
            <span class="w-2 h-2 rounded-full bg-indigo-500"></span>
            Frontend Development
          </h3>
          <div class="flex flex-wrap gap-2">
            <!-- EASY EDIT: Frontend Skill Pills -->
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">HTML5 &amp; CSS3</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">JavaScript (ES6+)</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">TypeScript</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">React</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Next.js</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Tailwind CSS</span>
          </div>
        </div>

        <!-- Category 2: Backend & Data -->
        <div class="p-6 rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90">
          <h3 class="text-sm font-mono uppercase tracking-wider text-slate-500 dark:text-slate-400 mb-4 flex items-center gap-2">
            <span class="w-2 h-2 rounded-full bg-cyan-500"></span>
            Backend &amp; Database
          </h3>
          <div class="flex flex-wrap gap-2">
            <!-- EASY EDIT: Backend Skill Pills -->
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Node.js</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Python</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">REST APIs</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">PostgreSQL</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Firebase / Supabase</span>
          </div>
        </div>

        <!-- Category 3: Tools & Workflow -->
        <div class="p-6 rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90">
          <h3 class="text-sm font-mono uppercase tracking-wider text-slate-500 dark:text-slate-400 mb-4 flex items-center gap-2">
            <span class="w-2 h-2 rounded-full bg-purple-500"></span>
            Tools &amp; Platforms
          </h3>
          <div class="flex flex-wrap gap-2">
            <!-- EASY EDIT: Tools Skill Pills -->
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Git &amp; GitHub</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">VS Code</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Figma</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Netlify / Vercel</span>
            <span class="px-3.5 py-1.5 rounded-full text-sm font-medium bg-slate-100 dark:bg-slate-800 text-slate-800 dark:text-slate-200 border border-slate-200/60 dark:border-slate-700/70">Linux / CLI</span>
          </div>
        </div>

      </div>
    </section>

    <!-- =====================================================================
         5. FEATURED PROJECTS SECTION
         EASY EDIT: Customize project titles, descriptions, tags, and URLs.
         ===================================================================== -->
    <section id="projects" class="py-16 md:py-24 scroll-mt-16 border-t border-slate-200/70 dark:border-slate-800/70">
      <div class="flex flex-col sm:flex-row sm:items-end justify-between mb-12 gap-4">
        <div>
          <span class="font-mono text-xs uppercase tracking-widest text-indigo-600 dark:text-indigo-400 font-semibold">03 / Featured Work</span>
          <h2 class="mt-2 text-3xl sm:text-4xl font-bold tracking-tight text-slate-900 dark:text-white">
            Selected Projects
          </h2>
        </div>
        <!-- EASY EDIT: Link to your full GitHub profile -->
        <a
          href="https://github.com/thurein"
          target="_blank"
          rel="noopener noreferrer"
          class="inline-flex items-center gap-1.5 text-sm font-semibold text-indigo-600 dark:text-indigo-400 hover:underline"
        >
          <span>View all on GitHub</span>
          <svg class="w-4 h-4" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
          </svg>
        </a>
      </div>

      <!-- Projects Grid -->
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">

        <!-- ================= PROJECT CARD 1 ================= -->
        <article class="group rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90 hover:border-indigo-500/60 transition-all duration-300 flex flex-col overflow-hidden shadow-sm hover:shadow-xl hover:shadow-indigo-500/5">
          <!-- Visual Banner -->
          <div class="h-44 bg-gradient-to-br from-indigo-600 via-indigo-500 to-purple-600 p-6 flex flex-col justify-between relative overflow-hidden">
            <div class="flex justify-between items-center z-10">
              <span class="px-2.5 py-1 rounded-md text-xs font-mono bg-white/20 text-white backdrop-blur-sm">Web App</span>
              <span class="text-white/80 text-xs font-mono">01</span>
            </div>
            <div class="z-10">
              <p class="text-white font-bold text-xl tracking-tight">TaskFlow Workspace</p>
              <p class="text-indigo-100 text-xs">Productivity &amp; Kanban Tracker</p>
            </div>
            <div class="absolute -right-6 -bottom-6 w-32 h-32 rounded-full bg-white/10 blur-xl group-hover:scale-125 transition-transform"></div>
          </div>

          <!-- Project Details -->
          <div class="p-6 flex-1 flex flex-col justify-between space-y-5">
            <div>
              <!-- EASY EDIT: Project 1 Title & Description -->
              <h3 class="text-lg font-bold text-slate-900 dark:text-white group-hover:text-indigo-600 dark:group-hover:text-indigo-400 transition-colors">
                TaskFlow Productivity Suite
              </h3>
              <p class="mt-2 text-sm text-slate-600 dark:text-slate-400 leading-relaxed">
                A streamlined task and project manager featuring drag-and-drop boards, instant search filtering, and local storage persistence.
              </p>
            </div>

            <div class="space-y-4">
              <!-- Tech Stack Tags -->
              <div class="flex flex-wrap gap-1.5">
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">React</span>
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">Tailwind CSS</span>
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">TypeScript</span>
              </div>

              <!-- EASY EDIT: Project 1 Links -->
              <div class="pt-3 border-t border-slate-100 dark:border-slate-800/80 flex items-center justify-between text-sm font-medium">
                <a href="https://github.com/thurein" target="_blank" rel="noopener noreferrer" class="text-slate-600 dark:text-slate-400 hover:text-indigo-600 dark:hover:text-white inline-flex items-center gap-1.5">
                  <span>Source Code</span>
                </a>
                <a href="#" class="text-indigo-600 dark:text-indigo-400 hover:underline inline-flex items-center gap-1">
                  <span>Live Demo</span>
                  <span>&rarr;</span>
                </a>
              </div>
            </div>
          </div>
        </article>

        <!-- ================= PROJECT CARD 2 ================= -->
        <article class="group rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90 hover:border-indigo-500/60 transition-all duration-300 flex flex-col overflow-hidden shadow-sm hover:shadow-xl hover:shadow-indigo-500/5">
          <!-- Visual Banner -->
          <div class="h-44 bg-gradient-to-br from-cyan-600 via-teal-500 to-emerald-600 p-6 flex flex-col justify-between relative overflow-hidden">
            <div class="flex justify-between items-center z-10">
              <span class="px-2.5 py-1 rounded-md text-xs font-mono bg-white/20 text-white backdrop-blur-sm">Dashboard</span>
              <span class="text-white/80 text-xs font-mono">02</span>
            </div>
            <div class="z-10">
              <p class="text-white font-bold text-xl tracking-tight">Pulse Analytics</p>
              <p class="text-cyan-100 text-xs">Real-Time Data Visualization</p>
            </div>
            <div class="absolute -right-6 -bottom-6 w-32 h-32 rounded-full bg-white/10 blur-xl group-hover:scale-125 transition-transform"></div>
          </div>

          <!-- Project Details -->
          <div class="p-6 flex-1 flex flex-col justify-between space-y-5">
            <div>
              <!-- EASY EDIT: Project 2 Title & Description -->
              <h3 class="text-lg font-bold text-slate-900 dark:text-white group-hover:text-indigo-600 dark:group-hover:text-indigo-400 transition-colors">
                Pulse Metrics Dashboard
              </h3>
              <p class="mt-2 text-sm text-slate-600 dark:text-slate-400 leading-relaxed">
                An interactive analytics interface displaying key performance metrics, dark/light adaptive charts, and exportable reports.
              </p>
            </div>

            <div class="space-y-4">
              <!-- Tech Stack Tags -->
              <div class="flex flex-wrap gap-1.5">
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">JavaScript</span>
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">REST API</span>
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">CSS Grid</span>
              </div>

              <!-- EASY EDIT: Project 2 Links -->
              <div class="pt-3 border-t border-slate-100 dark:border-slate-800/80 flex items-center justify-between text-sm font-medium">
                <a href="https://github.com/thurein" target="_blank" rel="noopener noreferrer" class="text-slate-600 dark:text-slate-400 hover:text-indigo-600 dark:hover:text-white inline-flex items-center gap-1.5">
                  <span>Source Code</span>
                </a>
                <a href="#" class="text-indigo-600 dark:text-indigo-400 hover:underline inline-flex items-center gap-1">
                  <span>Live Demo</span>
                  <span>&rarr;</span>
                </a>
              </div>
            </div>
          </div>
        </article>

        <!-- ================= PROJECT CARD 3 ================= -->
        <article class="group rounded-2xl bg-white dark:bg-slate-900/70 border border-slate-200/80 dark:border-slate-800/90 hover:border-indigo-500/60 transition-all duration-300 flex flex-col overflow-hidden shadow-sm hover:shadow-xl hover:shadow-indigo-500/5">
          <!-- Visual Banner -->
          <div class="h-44 bg-gradient-to-br from-purple-600 via-fuchsia-600 to-pink-600 p-6 flex flex-col justify-between relative overflow-hidden">
            <div class="flex justify-between items-center z-10">
              <span class="px-2.5 py-1 rounded-md text-xs font-mono bg-white/20 text-white backdrop-blur-sm">Open Source</span>
              <span class="text-white/80 text-xs font-mono">03</span>
            </div>
            <div class="z-10">
              <p class="text-white font-bold text-xl tracking-tight">DevNotes CLI &amp; Web</p>
              <p class="text-purple-100 text-xs">Markdown Knowledge Base</p>
            </div>
            <div class="absolute -right-6 -bottom-6 w-32 h-32 rounded-full bg-white/10 blur-xl group-hover:scale-125 transition-transform"></div>
          </div>

          <!-- Project Details -->
          <div class="p-6 flex-1 flex flex-col justify-between space-y-5">
            <div>
              <!-- EASY EDIT: Project 3 Title & Description -->
              <h3 class="text-lg font-bold text-slate-900 dark:text-white group-hover:text-indigo-600 dark:group-hover:text-indigo-400 transition-colors">
                DevNotes Markdown Hub
              </h3>
              <p class="mt-2 text-sm text-slate-600 dark:text-slate-400 leading-relaxed">
                A fast, distraction-free note-taking tool for developers to organize code snippets, documentation, and daily learning logs.
              </p>
            </div>

            <div class="space-y-4">
              <!-- Tech Stack Tags -->
              <div class="flex flex-wrap gap-1.5">
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">Node.js</span>
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">Markdown</span>
                <span class="px-2.5 py-0.5 rounded-md text-xs font-mono bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300">GitHub Pages</span>
              </div>

              <!-- EASY EDIT: Project 3 Links -->
              <div class="pt-3 border-t border-slate-100 dark:border-slate-800/80 flex items-center justify-between text-sm font-medium">
                <a href="https://github.com/thurein" target="_blank" rel="noopener noreferrer" class="text-slate-600 dark:text-slate-400 hover:text-indigo-600 dark:hover:text-white inline-flex items-center gap-1.5">
                  <span>Source Code</span>
                </a>
                <a href="#" class="text-indigo-600 dark:text-indigo-400 hover:underline inline-flex items-center gap-1">
                  <span>Live Demo</span>
                  <span>&rarr;</span>
                </a>
              </div>
            </div>
          </div>
        </article>

      </div>
    </section>

    <!-- =====================================================================
         6. CONTACT SECTION
         EASY EDIT: Update your email address and social profile URLs below.
         ===================================================================== -->
    <section id="contact" class="py-16 md:py-24 scroll-mt-16 border-t border-slate-200/70 dark:border-slate-800/70">
      <div class="rounded-3xl bg-gradient-to-br from-indigo-500/10 via-slate-100 to-cyan-500/10 dark:from-indigo-500/15 dark:via-slate-900/90 dark:to-cyan-500/15 border border-slate-200/90 dark:border-slate-800 p-8 sm:p-12 lg:p-16 text-center max-w-4xl mx-auto relative overflow-hidden">
        
        <span class="font-mono text-xs uppercase tracking-widest text-indigo-600 dark:text-indigo-400 font-semibold">04 / What's Next?</span>
        <h2 class="mt-3 text-3xl sm:text-4xl lg:text-5xl font-extrabold tracking-tight text-slate-900 dark:text-white">
          Let's build something together.
        </h2>
        <p class="mt-4 text-slate-600 dark:text-slate-300 text-base sm:text-lg max-w-xl mx-auto leading-relaxed">
          Whether you have a project idea, a question, or just want to say hi, my inbox is always open.
        </p>

        <!-- EASY EDIT: Set your email in data-email and href="mailto:..." -->
        <div class="mt-8 flex flex-col sm:flex-row items-center justify-center gap-4">
          
          <!-- Direct Email Link -->
          <a
            href="mailto:hello@thurein.dev"
            class="w-full sm:w-auto inline-flex items-center justify-center gap-2.5 px-7 py-4 rounded-xl font-semibold text-white bg-indigo-600 hover:bg-indigo-500 shadow-lg shadow-indigo-500/25 transition-all"
          >
            <svg class="w-5 h-5" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
            </svg>
            <span>Send an Email</span>
          </a>

          <!-- One-Click Copy Email Button -->
          <button
            id="copy-email-btn"
            type="button"
            data-email="hello@thurein.dev"
            class="w-full sm:w-auto inline-flex items-center justify-center gap-2.5 px-6 py-4 rounded-xl font-semibold text-slate-800 dark:text-slate-100 bg-white dark:bg-slate-800/90 hover:bg-slate-100 dark:hover:bg-slate-700 border border-slate-200 dark:border-slate-700 transition-all shadow-sm"
          >
            <svg class="w-5 h-5 text-indigo-500" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z"></path>
            </svg>
            <span id="copy-email-text">Copy: hello@thurein.dev</span>
          </button>
        </div>

        <!-- Copy Feedback Toast Banner -->
        <div id="copy-toast" class="mt-4 h-6 flex items-center justify-center opacity-0 transition-opacity duration-300 pointer-events-none">
          <span class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-medium bg-emerald-500/15 text-emerald-600 dark:text-emerald-300 border border-emerald-500/30">
            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" stroke-width="2.5" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" d="M5 13l4 4L19 7"></path>
            </svg>
            Email copied to clipboard!
          </span>
        </div>

        <!-- EASY EDIT: Social Media Links (GitHub, LinkedIn, X) -->
        <div class="mt-8 pt-8 border-t border-slate-200/80 dark:border-slate-800/80 flex flex-wrap items-center justify-center gap-4">
          
          <!-- GitHub -->
          <a
            href="https://github.com/thurein"
            target="_blank"
            rel="noopener noreferrer"
            aria-label="GitHub"
            class="inline-flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/80 dark:bg-slate-900/80 hover:bg-indigo-50 dark:hover:bg-slate-800 text-slate-700 dark:text-slate-300 border border-slate-200/80 dark:border-slate-800 text-sm font-medium transition-all"
          >
            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
              <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.53 1.032 1.53 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"></path>
            </svg>
            <span>GitHub</span>
          </a>

          <!-- LinkedIn -->
          <a
            href="https://linkedin.com/in/thurein"
            target="_blank"
            rel="noopener noreferrer"
            aria-label="LinkedIn"
            class="inline-flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/80 dark:bg-slate-900/80 hover:bg-indigo-50 dark:hover:bg-slate-800 text-slate-700 dark:text-slate-300 border border-slate-200/80 dark:border-slate-800 text-sm font-medium transition-all"
          >
            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
              <path d="M19 3a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14m-.5 15.5v-5.3a3.26 3.26 0 0 0-3.26-3.26c-.85 0-1.84.52-2.28 1.3v-1.11h-2.79v8.37h2.79v-4.93c0-.77.62-1.4 1.39-1.4a1.4 1.4 0 0 1 1.4 1.4v4.93h2.75M6.88 8.56a1.68 1.68 0 0 0 1.68-1.68c0-.93-.75-1.69-1.68-1.69a1.69 1.69 0 0 0-1.69 1.69c0 .93.76 1.68 1.69 1.68m1.39 9.94v-8.37H5.5v8.37h2.77z"></path>
            </svg>
            <span>LinkedIn</span>
          </a>

          <!-- X / Twitter -->
          <a
            href="https://x.com/thurein"
            target="_blank"
            rel="noopener noreferrer"
            aria-label="X (Twitter)"
            class="inline-flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/80 dark:bg-slate-900/80 hover:bg-indigo-50 dark:hover:bg-slate-800 text-slate-700 dark:text-slate-300 border border-slate-200/80 dark:border-slate-800 text-sm font-medium transition-all"
          >
            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
              <path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"></path>
            </svg>
            <span>X / Twitter</span>
          </a>

        </div>
      </div>
    </section>

  </main>

  <!-- =====================================================================
       FOOTER
       ===================================================================== -->
  <footer class="relative z-10 border-t border-slate-200/80 dark:border-slate-800/80 py-8 text-center text-sm text-slate-500 dark:text-slate-400">
    <div class="max-w-6xl mx-auto px-4 flex flex-col sm:flex-row items-center justify-between gap-4">
      <p>&copy; <span id="current-year">2026</span> Thurein. All rights reserved.</p>
      <p class="font-mono text-xs">Built with HTML, Tailwind CSS &amp; ❤️</p>
    </div>
  </footer>

  <!-- =====================================================================
       LIGHTWEIGHT JAVASCRIPT (Theme Toggle, Mobile Menu, Copy Email)
       ===================================================================== -->
  <script>
    // 1. Set current year automatically in footer
    document.getElementById('current-year').textContent = new Date().getFullYear();

    // 2. Dark / Light Theme Toggle with LocalStorage persistence
    const htmlEl = document.documentElement;
    const themeToggleBtn = document.getElementById('theme-toggle');

    // Check saved preference on load
    const savedTheme = localStorage.getItem('thurein-theme');
    if (savedTheme === 'light') {
      htmlEl.classList.remove('dark');
    } else if (savedTheme === 'dark') {
      htmlEl.classList.add('dark');
    }

    themeToggleBtn.addEventListener('click', () => {
      htmlEl.classList.toggle('dark');
      const isDark = htmlEl.classList.contains('dark');
      localStorage.setItem('thurein-theme', isDark ? 'dark' : 'light');
    });

    // 3. Mobile Navigation Drawer Toggle
    const mobileMenuBtn = document.getElementById('mobile-menu-btn');
    const mobileMenu = document.getElementById('mobile-menu');
    const menuIconOpen = document.getElementById('menu-icon-open');
    const menuIconClose = document.getElementById('menu-icon-close');
    const mobileNavLinks = document.querySelectorAll('.mobile-nav-link');

    function toggleMobileMenu() {
      const isHidden = mobileMenu.classList.contains('hidden');
      if (isHidden) {
        mobileMenu.classList.remove('hidden');
        menuIconOpen.classList.add('hidden');
        menuIconClose.classList.remove('hidden');
      } else {
        mobileMenu.classList.add('hidden');
        menuIconOpen.classList.remove('hidden');
        menuIconClose.classList.add('hidden');
      }
    }

    mobileMenuBtn.addEventListener('click', toggleMobileMenu);
    mobileNavLinks.forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.classList.add('hidden');
        menuIconOpen.classList.remove('hidden');
        menuIconClose.classList.add('hidden');
      });
    });

    // 4. One-Click Copy Email Button (works reliably across all browsers & iFrames)
    const copyEmailBtn = document.getElementById('copy-email-btn');
    const copyEmailText = document.getElementById('copy-email-text');
    const copyToast = document.getElementById('copy-toast');

    copyEmailBtn.addEventListener('click', () => {
      const emailToCopy = copyEmailBtn.getAttribute('data-email');
      
      // Fallback-safe copy method
      const tempInput = document.createElement('textarea');
      tempInput.value = emailToCopy;
      document.body.appendChild(tempInput);
      tempInput.select();
      document.execCommand('copy');
      document.body.removeChild(tempInput);

      // Show visual confirmation
      const originalLabel = copyEmailText.textContent;
      copyEmailText.textContent = 'Copied!';
      copyToast.classList.remove('opacity-0');
      copyToast.classList.add('opacity-100');

      setTimeout(() => {
        copyEmailText.textContent = originalLabel;
        copyToast.classList.remove('opacity-100');
        copyToast.classList.add('opacity-0');
      }, 2500);
    });
  </script>
</body>
</html>

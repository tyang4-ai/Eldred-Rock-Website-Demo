/* ============================================
   Eldred Rock Partners — Main JavaScript
   ============================================ */

// Tab functionality (Strategies page)
function initTabs() {
  const tabs = document.querySelectorAll('.tab');
  const contents = document.querySelectorAll('.tab-content');

  function activateTab(tabId) {
    tabs.forEach(t => t.classList.remove('active'));
    contents.forEach(c => c.classList.remove('active'));
    const matchingTab = [...tabs].find(t => t.getAttribute('data-tab') === tabId);
    if (matchingTab) matchingTab.classList.add('active');
    const el = document.getElementById(tabId);
    if (el) el.classList.add('active');
  }

  tabs.forEach(tab => {
    tab.addEventListener('click', () => {
      const target = tab.getAttribute('data-tab');
      activateTab(target);
      history.replaceState(null, '', '#' + target);
    });
  });

  // Activate tab from URL hash on page load
  const hash = window.location.hash.replace('#', '');
  if (hash && document.getElementById(hash)) {
    activateTab(hash);
  }
}

// Accordion functionality
function initAccordions() {
  const headers = document.querySelectorAll('.accordion__header');

  headers.forEach(header => {
    header.addEventListener('click', () => {
      const item = header.parentElement;
      const isOpen = item.classList.contains('open');

      // Close all items in the same accordion
      const accordion = item.closest('.accordion');
      if (accordion) {
        accordion.querySelectorAll('.accordion__item').forEach(i => i.classList.remove('open'));
      }

      if (!isOpen) {
        item.classList.add('open');
      }
    });
  });
}

// Flip cards (Philosophy page)
function initFlipCards() {
  const cards = document.querySelectorAll('.flip-card');
  cards.forEach(card => {
    card.addEventListener('click', () => {
      card.classList.toggle('flipped');
    });
  });
}

// Mobile menu toggle
function initMobileMenu() {
  const toggle = document.querySelector('.header__mobile-toggle');
  const nav = document.querySelector('.header__nav');

  if (toggle && nav) {
    toggle.addEventListener('click', () => {
      nav.classList.toggle('open');
      // Animate hamburger to X
      toggle.classList.toggle('active');
    });

    // Close menu when clicking a nav link
    nav.querySelectorAll('.header__nav-link').forEach(link => {
      link.addEventListener('click', () => {
        if (window.innerWidth <= 768) {
          nav.classList.remove('open');
          toggle.classList.remove('active');
        }
      });
    });
  }
}

// Scroll fade-in (IntersectionObserver)
function initScrollFadeIn() {
  const sections = document.querySelectorAll('.fade-in');
  if (!sections.length) return;

  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('is-visible');
        observer.unobserve(entry.target);
      }
    });
  }, {
    threshold: 0.05,
    rootMargin: '0px 0px -20px 0px'
  });

  sections.forEach(section => {
    // Immediately reveal elements already in viewport on load
    const rect = section.getBoundingClientRect();
    if (rect.top < window.innerHeight && rect.bottom > 0) {
      section.classList.add('is-visible');
    } else {
      observer.observe(section);
    }
  });
}

// Smooth scroll for anchor links
function initSmoothScroll() {
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
      const target = document.querySelector(this.getAttribute('href'));
      if (target) {
        e.preventDefault();
        target.scrollIntoView({ behavior: 'smooth' });
      }
    });
  });
}

// Contact form handling
function initContactForm() {
  const form = document.querySelector('.contact-form form');
  if (form) {
    form.addEventListener('submit', (e) => {
      e.preventDefault();
      alert('Thank you for your message. We will be in touch shortly.');
      form.reset();
    });
  }
}

// Init all on DOM ready
document.addEventListener('DOMContentLoaded', () => {
  initTabs();
  initAccordions();
  initFlipCards();
  initMobileMenu();
  initScrollFadeIn();
  initSmoothScroll();
  initContactForm();
});

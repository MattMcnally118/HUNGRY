import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.initScrollAnimations()
    this.initCircleEffects()
  }

  scrollToAbout() {
    document.getElementById('about').scrollIntoView({
      behavior: 'smooth'
    });
  }

  initScrollAnimations() {
    const observerOptions = {
      threshold: 0.1,
      rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          if (entry.target.classList.contains('about-header')) {
            entry.target.querySelector('h2').classList.add('animate-in');
            setTimeout(() => {
              entry.target.querySelector('p').classList.add('animate-in');
            }, 200);
          }

          if (entry.target.classList.contains('feature-card')) {
            entry.target.classList.add('animate-card');
          }

          if (entry.target.classList.contains('stat-item')) {
            entry.target.classList.add('animate-in');
            this.animateCounter(entry.target.querySelector('.stat-number'));
          }
        }
      });
    }, observerOptions);

    // Observe elements
    const aboutHeader = document.querySelector('.about-header');
    if (aboutHeader) observer.observe(aboutHeader);

    document.querySelectorAll('.feature-card').forEach((card, index) => {
      card.style.transitionDelay = `${index * 0.2}s`;
      observer.observe(card);
    });

    document.querySelectorAll('.stat-item').forEach((item, index) => {
      item.style.transitionDelay = `${index * 0.1}s`;
      observer.observe(item);
    });
  }

  animateCounter(element) {
    if (!element) return;

    const target = parseInt(element.getAttribute('data-target'));
    const increment = target / 50;
    let current = 0;

    const timer = setInterval(() => {
      current += increment;
      element.textContent = Math.floor(current);

      if (current >= target) {
        element.textContent = target;
        clearInterval(timer);
      }
    }, 30);
  }

  initCircleEffects() {
    document.querySelectorAll('.floating-circle').forEach(circle => {
      circle.addEventListener('click', () => {
        circle.style.animation = 'none';
        circle.style.transform = 'scale(1.3)';
        circle.style.background = 'linear-gradient(135deg, #F8BD4F, #e8aa35)';

        setTimeout(() => {
          circle.style.animation = 'float 6s ease-in-out infinite';
          circle.style.transform = '';
          circle.style.background = '';
        }, 500);
      });
    });
  }
}

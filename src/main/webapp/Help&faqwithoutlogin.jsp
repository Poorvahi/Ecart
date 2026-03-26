<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FAQs | The Ecart</title>

<!-- ✅ Bootstrap 5 Bundle -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- ✅ Font Awesome 6.5.0 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- ✅ Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #dbeafe, #f3e8ff);
        min-height: 200vh;
        margin: 0;
        display: flex;
        flex-direction: column;
    }

    /* 🔹 Combined Header Style */
    header {
        width: 100%;
        background-color: #ffffff;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        z-index: 100;
        position: sticky;
        top: 0;
    }

    .header-container {
        max-width: 1200px;
        margin: auto;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px 20px;
    }

    .header-logo {
        font-size: 1.8rem;
        font-weight: 700;
        color: #6b21a8;
        letter-spacing: 0.5px;
    }

    .header-links {
        display: flex;
        align-items: center;
        gap: 25px;
    }

    .header-links a {
        color: #4b5563;
        font-weight: 500;
        text-decoration: none;
        transition: 0.3s;
    }

    .header-links a:hover {
        color: #6b21a8;
    }

    /* 🔹 Navbar (below header) */
    .navbar {
        background-color: #ffffffcc;
        backdrop-filter: blur(10px);
        border-top: 1px solid #e5e7eb;
        box-shadow: 0 2px 10px rgba(0,0,0,0.05);
    }

    .navbar-nav .nav-link {
        color: #4b5563;
        font-weight: 500;
        margin: 0 10px;
        transition: 0.3s;
    }
    .navbar-nav .nav-link i {
    color: #6b21a8;
    margin-right: 12px;   
    font-size: 16px;
    transition: transform 0.2s ease;
}

   .navbar-nav .nav-link.active,
   .header-links a.active {
    color: #6b21a8 !important;
    font-weight: 600;
    }

    /* 🔹 FAQ Section */
    .faq-container {
        display: flex;
        justify-content: center;
        align-items: center;
        flex: 1;
        padding: 80px 20px;
        margin-top: 20px;
    }

    .faq-box {
        background-color: #ffffff;
        border-radius: 25px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        max-width: 1100px;
        width: 95%;
        padding: 70px 60px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .faq-box:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 30px rgba(0,0,0,0.12);
    }

    .faq-title {
        color: #6b21a8;
        font-weight: 700;
        font-size: 36px;
        text-align: center;
        margin-bottom: 15px;
    }

    .faq-subtitle {
        text-align: center;
        color: #4b5563;
        font-size: 16px;
        margin-bottom: 35px;
    }

    /* 🔹 Icons (Electronics Row) */
    .icon-row {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 30px;
        margin-bottom: 30px;
        flex-wrap: wrap;
    }

    .icon-box {
        background: #f3e8ff;
        border-radius: 50%;
        padding: 22px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        transition: transform 0.3s ease, background 0.3s ease;
    }

    .icon-box:hover {
        transform: scale(1.1);
        background: #e9d5ff;
    }

    .icon-box i {
        font-size: 32px;
        color: #6b21a8;
    }

    /* 🔹 Accordion */
    .accordion-item {
        border: none;
        border-radius: 10px;
        overflow: hidden;
        margin-bottom: 18px;
        background: #f9f9ff;
    }

    .accordion-button {
        font-weight: 500;
        color: #333;
        background-color: #f9f9ff;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 17px;
        padding: 18px;
    }

    .accordion-button:not(.collapsed) {
        color: #6b21a8;
        background-color: #f3e8ff;
        box-shadow: none;
    }

    .accordion-body {
        background-color: #ffffff;
        font-size: 16px;
        color: #4b5563;
    }

    .accordion-button::after {
        font-family: "Font Awesome 6 Free";
        font-weight: 900;
        content: "\f107"; /* down arrow */
        font-size: 18px;
        color: #6b21a8;
        transition: transform 0.3s ease;
        background-image:none;
    }

    .accordion-button:not(.collapsed)::after {
    background-image:none;
        transform: rotate(180deg);
        
    }

    /* 🔹 Footer */
    footer {
        background-color: #1f2937;
        color: #f3f4f6;
        text-align: center;
        padding: 25px 0;
        width: 100%;
        font-size: 14px;
        margin-top: auto;
    }

    footer i {
        font-size: 20px;
        color: white;
        margin: 0 10px;
        transition: color 0.3s ease;
    }

    footer i:hover {
        color: #a78bfa;
    }

    @media (max-width: 768px) {
        .faq-box {
            width: 95%;
            padding: 40px 25px;
        }
        .header-container {
            flex-direction: column;
            gap: 10px;
        }
        .header-links {
            flex-wrap: wrap;
            justify-content: center;
        }
    }
</style>
</head>

<body>
<%@include file="Headerwithoutlogin.jsp" %>

<!-- 🔹 FAQ Section -->
<div class="faq-container">
  <div class="faq-box">

    <!-- Electronics Icons -->
    <div class="icon-row">
      <div class="icon-box"><i class="fa-solid fa-mobile-screen"></i></div>
      <div class="icon-box"><i class="fa-solid fa-laptop"></i></div>
      <div class="icon-box"><i class="fa-solid fa-headphones"></i></div>
      <div class="icon-box"><i class="fa-solid fa-tv"></i></div>
    </div>

    <h2 class="faq-title">Frequently Asked Questions</h2>
    <p class="faq-subtitle">Find answers to common queries about shopping, payments, and orders.</p>

    <div class="accordion" id="faqAccordion">
      <div class="accordion-item">
        <h2 class="accordion-header" id="q1">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a1">
            How do I place an order on The E-cart?
          </button>
        </h2>
        <div id="a1" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
          <div class="accordion-body">
            Browse through categories, add your favorite gadgets to the cart, and proceed to checkout using your preferred payment method.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="q2">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a2">
            Do you sell only electronics?
          </button>
        </h2>
        <div id="a2" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
          <div class="accordion-body">
            Yes, The Ecart specializes in electronic gadgets including smartphones, smartwatches, laptops, and home tech devices.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="q3">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a3">
            How can I track my order?
          </button>
        </h2>
        <div id="a3" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
          <div class="accordion-body">
            After dispatch, you’ll receive an order tracking ID via email/SMS. Use the “Track Order” feature on our site for real-time updates.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="q4">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a4">
            What warranty is provided on electronics?
          </button>
        </h2>
        <div id="a4" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
          <div class="accordion-body">
            All products come with a 6–12 month manufacturer warranty. Some items offer extended warranty plans at checkout.
          </div>
        </div>
      </div>

      <div class="accordion-item">
        <h2 class="accordion-header" id="q5">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#a5">
            What should I do if I receive a defective gadget?
          </button>
        </h2>
        <div id="a5" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
          <div class="accordion-body">
            If you receive a damaged or defective product, initiate a return within 7 days or contact <strong>support@theecart.com</strong>.
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<%@include file="Footer.jsp" %>
</body>
</html>

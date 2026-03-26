package com.dto;

import java.io.IOException;
import java.util.Random;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@WebServlet("/OTPController")
public class OTPController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Replace with your own Twilio credentials
    String ACCOUNT_SID = System.getenv("TWILIO_SID");
    String AUTH_TOKEN = System.getenv("TWILIO_TOKEN");
    private static final String TWILIO_PHONE_NUMBER = "+19789724679";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        if ("sendOTP".equals(action)) {
            String mobile = request.getParameter("mobile");
            String otp = generateOTP();
            session.setAttribute("otp", otp);
            session.setAttribute("mobile", mobile);
            session.setAttribute("otpTime", System.currentTimeMillis());
            boolean sent = sendOTPToMobile(mobile, otp);
            if (sent) {
            	response.sendRedirect("OTPverifyMobile.jsp");
            } else {
            	response.sendRedirect("MobileNumVerify.jsp");
            }
        } 
        
    }

    private String generateOTP() {
        Random random = new Random();
        int otp = 100000 + random.nextInt(900000);
        return String.valueOf(otp);
    }

    private boolean sendOTPToMobile(String mobile, String otp) {
        try {
            Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
            Message.creator(
                    new PhoneNumber("+91" + mobile),
                    new PhoneNumber(TWILIO_PHONE_NUMBER),
                    "Your OTP code is: " + otp
            ).create();
            System.out.println("OTP sent successfully to +91" + mobile + ": " + otp);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

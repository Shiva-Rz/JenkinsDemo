package com.car.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.car.dao.CarDAO;
import com.car.pojo.Car;

@WebServlet("/CarController")
public class CarController extends HttpServlet{
	CarDAO dao = new CarDAO();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestFrom = request.getParameter("car_button");

		if (requestFrom.equals("Register")) {
			String carNo = request.getParameter("carNo");
			String manufacturer = request.getParameter("manufacturer");
			String model = request.getParameter("model");
			int kmsRan = Integer.parseInt(request.getParameter("kmsRan"));
			int priceExpected = Integer.parseInt(request.getParameter("priceExpected"));
			int noOfOwners = Integer.parseInt(request.getParameter("noOfOwners"));

			Car bean = new Car(carNo,manufacturer,model,kmsRan,priceExpected,noOfOwners);
			int n = dao.insertCar(bean);

			if (n == 1) {
				response.sendRedirect("InsertCarSuccess.jsp");
			} else {
				response.sendRedirect("InsertCarFailed.jsp");
			}
		}
	}
}

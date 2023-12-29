package com.car.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.car.pojo.Car;
import com.car.util.dbUtil;

public class CarDAO {
	public int insertCar(Car bean) {
		int n = 0;
		try {
			Connection con = dbUtil.getDBconnection();
			String sql = "insert into tbl_car values(?,?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bean.getCarNo());
			ps.setString(2, bean.getManufacturer());
			ps.setString(3, bean.getModel());
			ps.setInt(4, bean.getKmsRan());
			ps.setInt(5, bean.getPriceExpected());
			ps.setInt(6, bean.getNoOfOwners());

			n = ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return n;
	}

}

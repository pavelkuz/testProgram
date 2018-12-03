package com.carwashes.kuzovatov.rest;

import com.carwashes.kuzovatov.dao.CarWashDao;
import com.carwashes.kuzovatov.dao.JdbcDaoFactory;
import com.carwashes.kuzovatov.model.CarWash;
import com.carwashes.kuzovatov.servlet.Controller;
import org.apache.log4j.Logger;
import org.boon.Boon;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/carwashes")
public class CarwashesRest {
    private static final Logger log = Logger.getLogger(CarwashesRest.class);
    JdbcDaoFactory jdbcDaoFactory = Controller.getJdbcDaoFactory();
    CarWashDao carWashDao = (CarWashDao) jdbcDaoFactory.getDao(CarWashDao.class);

    @GET
    //@Path("/{param}")
    //public Response getMsg(@PathParam("param") String msg) {
    public Response getCarwashes() {
        List<CarWash> carWashList = carWashDao.findAll();

        String output = Boon.toJson(carWashList);

        String response = "{\"carWashes\":" +output+"}";

        return Response.status(200).entity(response).build();

    }

}

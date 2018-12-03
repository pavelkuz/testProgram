package com.carwashes.kuzovatov.rest;

import com.carwashes.kuzovatov.dao.CitiesDao;
import com.carwashes.kuzovatov.dao.JdbcDaoFactory;
import com.carwashes.kuzovatov.model.City;
import com.carwashes.kuzovatov.servlet.Controller;
import org.apache.log4j.Logger;
import org.boon.Boon;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/cities")
public class CitiesRest {
    private static final Logger log = Logger.getLogger(CitiesRest.class);
    JdbcDaoFactory jdbcDaoFactory = Controller.getJdbcDaoFactory();
    CitiesDao cityDao = (CitiesDao) jdbcDaoFactory.getDao(CitiesDao.class);

    @GET
    //@Path("/{param}")
    //public Response getMsg(@PathParam("param") String msg) {
    public Response getCarwashes() {
        List<City> cityList = cityDao.findAll();

        String output = Boon.toJson(cityList);

        String response = "{\"cities\":" +output+"}";

        return Response.status(200).entity(response).build();

    }
}

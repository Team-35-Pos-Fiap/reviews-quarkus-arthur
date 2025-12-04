package br.com.fiap.reviews.resources;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Response;

@Path("/test")
public class TestResource {

    @GET
    public Response getAllTeachers() {
        return Response.ok("Teste").build();
    }

}

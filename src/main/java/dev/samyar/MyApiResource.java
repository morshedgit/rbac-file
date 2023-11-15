package dev.samyar;


import jakarta.annotation.security.RolesAllowed;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/api")
public class MyApiResource {

    @GET
    @Path("/admin/data")
    @RolesAllowed("ADMIN")
    public Response getAdminData() {
        // Code to return data accessible by ADMIN role
        return Response.ok("You reached Admin page").build();
    }

    @GET
    @Path("/author/data")
    @RolesAllowed("AUTHOR")
    public Response getAuthorData() {
        // Code to return data accessible by AUTHOR role
        return Response.ok("You reached author page").build();
    }

    @GET
    @Path("/user/data")
    @RolesAllowed("USER")
    public Response getUserData() {
        // Code to return data accessible by USER role
        return Response.ok("You reached user page").build();
    }
}


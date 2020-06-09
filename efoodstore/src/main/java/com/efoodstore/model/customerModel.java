import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Customer implements Serializable{


    @Id
    @GeneratedValue
    private int id_customer ;

    @NotEmpty (message = "Name must not be null")
    private String firstName ;

    @NotEmpty (message = "First Name must not be null")
    private String firstName ;

    @NotEmpty (message = "Email must not be null")
    private String email;


    // CreaDate

    // Get Set 
    public int getIdCustomer{
        return id_customer;
    }
    public void setIdCustomer( int _IdCustomer){
        this.id_customer = _IdCustomer;
    }

    public String getFirstName {
        return firstName; 
    }
    public void setFirstName( string _FirstName){
        this.firstName = _FirstName;
    }

    public String getName {
        return name; 
    }
    public void setName ( String _Name){
        this.name = _name;
    }

    public String getEmail{
        return email;
    }
    public void setEmail(String _email){
        this.email = _email;
    }

   
} // The End of Class;

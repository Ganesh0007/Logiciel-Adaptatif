import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
public class invoiceModel {
    
    @Id
    @GeneratedValue
    private int id_invoice;

    @NotEmpty (message = "Etablish date must not be null")
    private Date etablishDate ;

    @NotEmpty (message = "Paid  must not be null")
    private String paid;

    @NotEmpty (message = "Paid Date must not be null")
    private String paidDate;

    @NotEmpty (message = "Price must not be null")
    private float price;


    // Get Set
    
    // Id Invoice
    public int getIdInvoice{
        return id_invoice;
    }
    public void setIdInvoice( int _IdInvoice){
        this.id_invoice = _IdInvoice;
    }

    // Paid
    public String getPaid  {
        return paid ; 
    }
    public void setPaid( string _Paid ){
        this.paid  = _Paid;
    }

     // Paid Date
     public String getPaidDate  {
        return paidDate ; 
    }
    public void setPaidDate( string _PaidDate ){
        this.paidDate  = _PaidDate;
    }

    // Price
    public float getPrice {
        return price;
    }
    public void setPrice(float _Price){
        this.price = _Price;
    }


    
}
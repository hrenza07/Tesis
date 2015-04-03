/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package logicaNegocio;

/**
 *
 * @author byron
 */
public class exceptionClass extends Exception{

    private String Error;

    public exceptionClass(String message) {
        super(message);
        this.Error="";
    }
    
    public exceptionClass(String message,String Error){
    super(message);
    this.Error=Error;
    
    }

    public String getError() {
        return Error;
    }

    public void setError(String Error) {
        this.Error = Error;
    }
            
    
}

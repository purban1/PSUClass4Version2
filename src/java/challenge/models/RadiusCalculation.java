/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge.models;

import javax.servlet.RequestDispatcher;

/**
 *
 * @author production
 */
public class RadiusCalculation implements ICalculation {

    final double PI = 3.14159265359;
    final String CALCTYPE = "The area for the circle is ";

    @Override
    public String calculateResults(String value1, String value2) {
        double numberToSquare = Double.parseDouble(value1);
        double result = PI * numberToSquare * numberToSquare;
        
        return CALCTYPE + result;
    }
}

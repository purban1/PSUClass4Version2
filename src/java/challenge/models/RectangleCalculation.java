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
public class RectangleCalculation implements ICalculation {

    final String CALCTYPE = "The area for the rectangle is ";

    @Override
    public String calculateResults(String value1, String value2) {
        Double side1 = Double.parseDouble(value1);
        Double side2 = Double.parseDouble(value2);
        
        // We are not figuring anything out except the hypotenuse!!!!
        double rectArea = side1 * side2;
        
        return CALCTYPE + rectArea;
    }
}

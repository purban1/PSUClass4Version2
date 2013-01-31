package challenge.models;

import javax.servlet.RequestDispatcher;
import java.math.*;

/**
 *
 * @author Patrick Urban
 */
public class HypotenuseCalculation implements ICalculation {

    final String CALCTYPE = "The hypotenuse for the triangle is ";

    @Override
    public String calculateResults(String value1, String value2) {
        Double side1 = Double.parseDouble(value1);
        Double side2 = Double.parseDouble(value2);
        
        // We are not figuring anything out except the hypotenuse!!!!
        double sideC = Math.sqrt(side1*side1 + side2*side2);
        
        return CALCTYPE + sideC;
    }
}

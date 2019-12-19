package models.parameter;

import java.util.List;
import javax.validation.Valid;

public class ParaNewShoes {

    @Valid
    private ParaShoes shoes;
    private List<SizeNew> newSize;

    public ParaShoes getShoes() {
        return shoes;
    }
    
    public void setShoes(ParaShoes shoes) {
        this.shoes = shoes;
    }

    public List<SizeNew> getNewSize() {
        return newSize;
    }

    public void setNewSize(List<SizeNew> newSize) {
        this.newSize = newSize;
    }

}

package models.parameter;

import java.util.List;

public class ParaSize {

    private List<SizeUpdate> oldSize;
    private List<SizeNew> newSize;
    private List<String> deleteSize;
    private String shoesID ;

    public String getShoesID() {
        return shoesID;
    }

    public void setShoesID(String ShoesID) {
        this.shoesID = ShoesID;
    }

    public List<String> getDeleteSize() {
        return deleteSize;
    }

    public void setDeleteSize(List<String> deleteSize) {
        this.deleteSize = deleteSize;
    }

    public List<SizeNew> getNewSize() {
        return newSize;
    }

    public void setNewSize(List<SizeNew> newSize) {
        this.newSize = newSize;
    }

    public List<SizeUpdate> getOldSize() {
        return oldSize;
    }
    public void setOldSize(List<SizeUpdate> oldSize) {
        this.oldSize = oldSize;
    }

}

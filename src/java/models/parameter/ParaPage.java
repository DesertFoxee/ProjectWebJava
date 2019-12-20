package models.parameter;

public class ParaPage {

    private static final int shoesOfPage = 4;

    private int start = 0;
    private int end = 0;
    private int total = 0;
    private int maxPage = 0;
    private int nextPage = -1;
    private int prevPage = -1;

    public static int getShoesOfPage() {
        return shoesOfPage;
    }

    public int getStart() {
        return start;
    }

    public ParaPage() {
    }

    public void set(int start, int end, int total,
            int maxpage ,int nextpage ,int prevpage ) {
        this.start = start;
        this.end = end;
        this.total = total;
        this.maxPage = maxpage;
        this.nextPage = nextpage;
        this.prevPage = prevpage;
    }

    public int getMaxPage() {
        return maxPage;
    }

    public void setMaxPage(int maxPage) {
        this.maxPage = maxPage;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getNextPage() {
        return nextPage;
    }

    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }

    public int getPrevPage() {
        return prevPage;
    }

    public void setPrevPage(int prevPage) {
        this.prevPage = prevPage;
    }


}

package process;

import javafx.util.Pair;

public class Page {

    public static Pair getNextPage(int current_page, int max_page) {
        int next_page = current_page + 1;
        int prev_page = current_page - 1;

        if (prev_page > max_page) {
            if (max_page > 0) {
                prev_page = max_page - 1;
            } else {
                prev_page = -1;
            }
        } else if (prev_page <= 0) {
            prev_page = -1;
        }
        if (next_page <= 0) {
            if (max_page > 0) {
                next_page = 1;
            } else {
                prev_page = -1;
            }
        } else if (next_page > max_page) {
            next_page = -1;
        }
        return new Pair(prev_page, next_page);
    }

    public static int getMaxPage(int cout_shoes_page, int count_shoes) {
        if (cout_shoes_page > 0 && count_shoes >= 0) {
            int count_page = count_shoes / cout_shoes_page;
            if (count_page * cout_shoes_page < count_shoes) {
                return count_page + 1;
            } else {
                return count_page;
            }
        }
        return 0;
    }

    public static Pair getIndexPage(int current_page, int max_page, int count_shoes_page, int count_shoes) {
        int start = 0, end = 0;
        current_page = current_page > max_page ? max_page : current_page;
        current_page = current_page < 0 ? 0 : current_page;

        if (current_page > 0) {
            end = current_page * count_shoes_page;
            start = end - count_shoes_page + 1;
            if (start > count_shoes) {
                start = count_shoes;
            }
            if (end > count_shoes) {
                end = count_shoes;
            }
        } else {
            end =count_shoes_page;
            start = 1;
            if (start > count_shoes) {
                start = count_shoes;
            }
            if (end > count_shoes) {
                end = count_shoes;
            }
        }
        return new Pair(start, end);

    }
}

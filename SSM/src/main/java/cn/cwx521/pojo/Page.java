package cn.cwx521.pojo;

public class Page {
    private Integer pid;

    private String pagetitle;

    private String page;

    private Integer good;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPagetitle() {
        return pagetitle;
    }

    public void setPagetitle(String pagetitle) {
        this.pagetitle = pagetitle == null ? null : pagetitle.trim();
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page == null ? null : page.trim();
    }

    public Integer getGood() {
        return good;
    }

    public void setGood(Integer good) {
        this.good = good;
    }

    @Override
    public String toString() {
        return "Page{" +
                "pid=" + pid +
                ", pagetitle='" + pagetitle + '\'' +
                ", page='" + page + '\'' +
                ", good=" + good +
                '}';
    }
}
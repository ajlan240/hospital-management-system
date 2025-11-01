package com.entity;
import java.util.List;
public class Department {

    private int deptId;
    private String deptName;

    public Department(int deptId, String deptName) {
        this.deptId = deptId;
        this.deptName = deptName;
    }

    private List<Docter> doctersList;

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public List<Docter> getDoctersList() {
        return doctersList;
    }

    public void addDocter(Docter docter) {
        this.doctersList.add(docter);
    }

    @Override
    public String toString() {
        return "Department{" +
                "deptId=" + deptId +
                ", deptName='" + deptName + '\'' +
                ", doctersList=" + doctersList +
                '}';
    }
}

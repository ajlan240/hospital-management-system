package com.entity;

public class Docter {
    private int docterId;
    private String docterName;
    private String departmentName;

    public Docter(int docterId, String docterName) {
        this.docterId = docterId;
        this.docterName = docterName;
    }

    public int getDocterId() {
        return docterId;
    }

    public void setDocterId(int docterId) {
        this.docterId = docterId;
    }

    public String getDocterName() {
        return docterName;
    }

    public void setDocterName(String docterName) {
        this.docterName = docterName;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    @Override
    public String toString() {
        return "Docter{" +
                "docterId=" + docterId +
                ", docterName='" + docterName + '\'' +
                '}';
    }
}

package com.model;

public class User extends Entity {

    private RoleId roleId;
    private String login;
    private String passwordHash;
    private String email;
    private String name;
    private String surname;
    private String patronymic;
    private String phone;
    private String info;
    private String restorePasswordKey;

    public void setRoleId(RoleId roleId) {
        this.roleId = roleId;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public RoleId getRoleId() {
        return this.roleId;
    }

    public String getLogin() {
        return this.login;
    }

    public String getPasswordHash() {
        return this.passwordHash;
    }

    public String getEmail() {
        return this.email;
    }

    public String getName() {
        return this.name;
    }

    public String getSurname() {
        return this.surname;
    }

    public String getPatronymic() {
        return this.patronymic;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getInfo() {
        return this.info;
    }

    public String getRestorePasswordKey() {
        return restorePasswordKey;
    }

    public void setRestorePasswordKey(String restorePasswordKey) {
        this.restorePasswordKey = restorePasswordKey;
    }
  
    @Override
    public boolean equals(Object other) {
        if (other instanceof User) {
            User otherUser = (User)other;
            return otherUser.getId() == getId();
        }

        return false;
    }
}

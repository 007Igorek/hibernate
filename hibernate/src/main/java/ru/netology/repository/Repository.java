package ru.netology.repository;

import jakarta.persistence.EntityManager;
import ru.netology.entity.Person;

import java.util.List;

public class Repository {

    private EntityManager manager;

    public List<Person> getPersonsByCity(String city) {
        return manager.createQuery("SELECT p FROM Persons p WHERE p.city_of_living = :city")
                .setParameter("city",city).getResultList();
    }
}

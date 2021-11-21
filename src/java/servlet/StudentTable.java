/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author poramet
 */
public class StudentTable {

    public static void insertStudent(Student stu) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        try {
            em.persist(stu);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public static int updateStudent(Student stu) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        try {
            Student fromDb = em.find(Student.class, stu.getId());
            if (fromDb == null) {
                return 0;
            }
            fromDb.setName(stu.getName());
            fromDb.setGpa(stu.getGpa());
            em.getTransaction().begin();
            em.persist(fromDb);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return 1;
    }

    public static Student findStudentById(int id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        Student emp = em.find(Student.class, id);
        if (emp == null) {
            return null;
        }
        em.close();
        return emp;
    }

    public static List<Student> findAllStudent() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        List<Student> stuList = (List<Student>) em.createNamedQuery("Student.findAll").getResultList();
        em.close();
        return stuList;
    }

    public static List<Student> findStudentByName(String name) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        Query query = em.createNamedQuery("Student.findByName");
        query.setParameter("name", name);
        List<Student> stuList = (List<Student>) query.getResultList();
        em.close();
        return stuList;
    }

    public static int removeStudent(Student stu) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("StudentServletPU");
        EntityManager em = emf.createEntityManager();
        try {
            Student fromDb = em.find(Student.class, stu.getId());
            if (fromDb == null) {
                return 0;
            }
            em.getTransaction().begin();
            em.remove(fromDb);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return 1;
    }
}

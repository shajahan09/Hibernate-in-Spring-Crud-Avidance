/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import com.spring.model.Product;
import com.spring.util.NewHibernateUtil;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Java
 */
@Controller

public class Controllers {

    SessionFactory sessionFac = NewHibernateUtil.getSessionFactory();

    @RequestMapping(value = "/")
    public String allPro(Model m) {
        Session sess = NewHibernateUtil.getSessionFactory().openSession();
        Query q = sess.createQuery("From Product as p");
        List<Product> products = q.list();
        m.addAttribute("products", products);

        return "allProducts";
    }

    @RequestMapping(value = "/removeProduct/{id}")
    public String removeData(@PathVariable Integer id) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        Product p = new Product();
        try {
            session.beginTransaction();

            p.setId(id);
            session.delete(p);
            session.getTransaction().commit();

        } catch (Exception e) {
            System.out.println("Error " + e.getMessage());
        }
//        session.close();

        return "redirect:/";

    }

    @RequestMapping(value = "/update/{id}")
    public String update(@PathVariable Integer id, Model model) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        try {

            Query q = session.createQuery("From Product as p where p.id=:id");
            q.setParameter("id", id);
            Product p = (Product) q.list().get(0);
            model.addAttribute("product", p);

        } catch (Exception e) {
            System.out.println("Error " + e.getMessage());
        }
        return "updatePage";
    }

    @RequestMapping(value = "/updateSubmit", method = RequestMethod.POST)
    public String updateSubmit(Product p) {
         System.out.println("Product ----------- " + p.getQty());
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            System.out.println(p.getId()+" "+p.getName()+" "+p.getQty()+" "+p.getPrice());

            session.update(p);
            session.getTransaction().commit();

        } catch (Exception e) {
            System.out.println("Error " + e.getMessage());
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/new")
    public String insert() {

        return "newPage";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public String addProduct(Product p) {
        System.out.println("Product ----------- " + p.getName());
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(p);
            session.getTransaction().commit();

        } catch (Exception e) {
            System.out.println("Error " + e.getMessage());
        }
        return "redirect:/";
    }
}

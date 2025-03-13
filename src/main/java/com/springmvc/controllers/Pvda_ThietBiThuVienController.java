package com.springmvc.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.beans.Pvda_thietbithuvien;
import com.springmvc.dao.Pvda_ThietBiDao;

@Controller
@RequestMapping("/thietbithuvien")
public class Pvda_ThietBiController {

    @Autowired
    private Pvda_ThietBiDao thietbiDao;

    @GetMapping("/list")
    public String viewThietBi(Model model) {
        List<Pvda_thietbithuvien> list = thietbiDao.getAllThietBi();
        model.addAttribute("list", list);
        return "thietbithuvien/list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("command", new Pvda_thietbithuvien());
        return "thietbithuvien/add";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("thietbi") Pvda_thietbithuvien thietbi) {
        thietbiDao.save(thietbi);
        return "redirect:/thietbithuvien/list";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        Pvda_thietbithuvien thietbi = thietbiDao.getThietBiById(id);
        model.addAttribute("command", thietbi);
        return "thietbithuvien/edit";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("thietbi") Pvda_thietbithuvien thietbi) {
        thietbiDao.update(thietbi);
        return "redirect:/thietbithuvien/list";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        thietbiDao.delete(id);
        return "redirect:/thietbithuvien/list";
    }
}

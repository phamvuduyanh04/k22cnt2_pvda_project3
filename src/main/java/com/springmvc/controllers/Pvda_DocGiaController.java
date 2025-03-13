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

import com.springmvc.beans.Pvda_docgia;
import com.springmvc.dao.Pvda_DocGiaDao;

@Controller
@RequestMapping("/docgia")
public class Pvda_DocGiaController {

    @Autowired
    private Pvda_DocGiaDao docgiadao;

    @GetMapping("/list")
    public String viewDocGia(Model model) {
        List<Pvda_docgia> list = docgiadao.getAllDocGia();
        model.addAttribute("list", list);
        return "docgia/list"; // Trả về tên file JSP
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("command", new Pvda_docgia());
        return "docgia/add";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("docgia") Pvda_docgia docgia) {
        docgiadao.save(docgia);
        return "redirect:/docgia/list";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        Pvda_docgia docgia = docgiadao.getDocGiaById(id);
        model.addAttribute("command", docgia);
        return "docgia/edit";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("docgia") Pvda_docgia docgia) {
        docgiadao.update(docgia);
        return "redirect:/docgia/list";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        docgiadao.delete(id);
        return "redirect:/docgia/list";
    }
   
}
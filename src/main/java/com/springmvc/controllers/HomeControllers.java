package com.springmvc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.beans.Pvda_phieumuon;
import com.springmvc.beans.Pvda_sach;
import com.springmvc.dao.Pvda_sachdao;
import javax.servlet.http.HttpSession;

@Controller  
public class HomeController {  

    @Autowired  
    Pvda_sachdao dao; // Inject SachDao for data operations
    
    @GetMapping("/phieumuon")
    public String showBorrowList(HttpSession session, Model model) {
        List<Pvda_phieumuon> borrowList = (List<Pvda_phieumuon>) session.getAttribute("borrowList");
        if (borrowList == null) {
            borrowList = new ArrayList<>();
        }

        model.addAttribute("borrowList", borrowList);
        return "phieumuon";
    }

    @GetMapping("/muon-sach")
    public String borrowBook(@RequestParam int id, 
                             @RequestParam String pvda_tieude, 
                             @RequestParam String pvda_tacgia, 
                             HttpSession session) {
        
        List<Pvda_phieumuon> borrowList = (List<Pvda_phieumuon>) session.getAttribute("borrowList");
        if (borrowList == null) {
            borrowList = new ArrayList<>();
        }

        borrowList.add(new Pvda_phieumuon(id, 0, id, pvda_tieude, pvda_tacgia, "", "", "Đang mượn"));

        session.setAttribute("borrowList", borrowList);
        return "redirect:/phieumuon";
    }

    @GetMapping("/tra-sach/{id}")
    public String returnBook(@PathVariable int id, HttpSession session) {
        List<Pvda_phieumuon> borrowList = (List<Pvda_phieumuon>) session.getAttribute("borrowList");
        if (borrowList != null) {
            borrowList.removeIf(item -> item.getPvda_id_sach() == id);
            session.setAttribute("borrowList", borrowList);
        }
        return "redirect:/phieumuon";
    }

    @GetMapping("/saveform")
    public String showform(Model m) {
        m.addAttribute("command", new Pvda_sach());
        return "saveform";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("sach") Pvda_sach pvda_sach) {
        dao.save(pvda_sach);
        return "redirect:/viewform";
    }

    @GetMapping("/viewform")
    public String viewBooks(Model m) {
        List<Pvda_sach> list = dao.getBooks();
        m.addAttribute("list", list);
        return "viewform";
    }

    @GetMapping("/sua/{id}")
    public String edit(@PathVariable int id, Model m) {
        Pvda_sach pvda_sach = dao.getBookById(id);
        m.addAttribute("command", pvda_sach);
        return "editform";
    }

    @PostMapping("/luu")
    public String update(@ModelAttribute("sach") Pvda_sach pvda_sach) {
        dao.update(pvda_sach);
        return "redirect:/viewform";
    }

    @GetMapping("/xoa/{id}")  
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/viewform";
    }
}

package com.springmvc.controllers;

import com.springmvc.beans.Pvda_thuthu;
import com.springmvc.dao.Pvda_thuthuDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/thuthu")
public class Pvda_ThuThuController {

    @Autowired
    private Pvda_thuthuDao dao;

    @GetMapping("/login")
    public String showLoginForm() {
        return "thuthu/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        HttpSession session, Model model) {
        Pvda_thuthu thuthu = dao.getThuThuByUsernameAndPassword(username, password);
        if (thuthu != null) {
            session.setAttribute("thuthu", thuthu);
            return "redirect:/thuthu/list";
        } else {
            model.addAttribute("error", "Sai tài khoản hoặc mật khẩu!");
            return "thuthu/login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/thuthu/login";
    }

    @GetMapping("/register")
    public String showRegisterForm() {
        return "thuthu/register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute Pvda_thuthu thuthu, Model model) {
        Pvda_thuthu existingThuThu = dao.getThuThuByUsername(thuthu.getPvda_taikhoan());
        if (existingThuThu != null) {
            model.addAttribute("error", "Tài khoản đã tồn tại!");
            return "thuthu/register";
        }
        
        thuthu.setPvda_trangthai(true);
        dao.save(thuthu);
        return "redirect:/thuthu/login";
    }

    @GetMapping("/list")
    public String listThuThu(Model model, HttpSession session) {
        if (session.getAttribute("thuthu") == null) {
            return "redirect:/thuthu/login";
        }

        List<Pvda_thuthu> list = dao.getAllThuThu();
        model.addAttribute("list", list);
        return "thuthu/list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model, HttpSession session) {
        if (session.getAttribute("thuthu") == null) {
            return "redirect:/thuthu/login";
        }

        model.addAttribute("thuthu", new Pvda_thuthu());
        return "thuthu/add";
    }

    @PostMapping("/add")
    public String addThuThu(@ModelAttribute Pvda_thuthu thuthu) {
        thuthu.setPvda_trangthai(true);
        dao.save(thuthu);
        return "redirect:/thuthu/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model, HttpSession session) {
        if (session.getAttribute("thuthu") == null) {
            return "redirect:/thuthu/login";
        }

        Pvda_thuthu thuthu = dao.getThuThuById(id);
        model.addAttribute("thuthu", thuthu);
        return "thuthu/edit";
    }

    @PostMapping("/update")
    public String updateThuThu(@ModelAttribute Pvda_thuthu thuthu) {
        dao.update(thuthu);
        return "redirect:/thuthu/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteThuThu(@PathVariable int id, HttpSession session) {
        if (session.getAttribute("thuthu") == null) {
            return "redirect:/thuthu/login";
        }

        dao.delete(id);
        return "redirect:/thuthu/list";
    }
}
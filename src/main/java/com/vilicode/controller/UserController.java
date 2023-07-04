package com.vilicode.controller;

import com.vilicode.Utils.MyCipher;
import com.vilicode.bean.Page;
import com.vilicode.bean.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.vilicode.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String login(User tempUser, HttpServletRequest request, HttpSession session)
    {
        String path="";
        User user=userService.login(tempUser.getUname());
        if(user==null)
        {
            request.setAttribute("failMsg","Le compte n'existe pas！");
            return "user_login";  //     http://localhost:8080/BookShop_war_exploded/user_login.jsp
        }
        if(tempUser.getUpwd().equals(user.getUpwd()))
        {
            session.setAttribute("user", user);
            request.setAttribute("msg","Connextion réussie！");
            return "redirect:/index.action";
        }else{
            request.setAttribute("failMsg","Le mot de passe est in correct！");
            return "user_login";
        }
    }
    @RequestMapping("/register")
    public String register(User user, HttpServletRequest request)
    {
        String path="";
        user.setUrole(1);
        user.setUmark("Normal user");
        if(userService.register(user))
        {
            path="redirect:user_login.jsp";
        }else{
            request.setAttribute("msg","Nom du compte en double！");
            path="user_register";
        }
        return path;
    }

    @RequestMapping("/admin/user_add")
    public String AddUser(User user, HttpServletRequest request)
    {
        user.setUrole(1);
        user.setUmark("Normal user");
        if(userService.register(user))
        {
            return "redirect:user_list.action?pageNumber=1";
        }else{
            request.setAttribute("msg","Nom du compte en double！");
            return "admin/user_add";
        }
    }
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request)
    {
        request.getSession().removeAttribute("user");
        return "redirect:index.action";
    }
    @RequestMapping("/admin/logout")
    public String adminLogout(HttpServletRequest request)
    {
        request.getSession().removeAttribute("user");
        return "redirect:index.action";
    }

    @RequestMapping("/change_phone_and_address")
    public String updateUphoneAndUaddress(int uid,String uphone,String uaddress,HttpServletRequest request)
    {
        boolean result=userService.UpdatePhoneAndAddress(uid,uphone,uaddress);
        if(result)
        {
            request.setAttribute("msg","Succès !");
            User u=(User)request.getSession().getAttribute("user");
            u.setUaddress(uaddress);
            u.setUphone(uphone);
            request.getSession().removeAttribute("user");
            request.getSession().setAttribute("user",u);
            return "user_center";
        }
        else
        {
            request.setAttribute("failMsg","Une erreur s’est produite lors de la modification du mot de passe, veuillez confirmer que le mot de passe d’origine est correct ou contacter l’administrateur!");
            return "user_center";
        }
    }

    @RequestMapping("/change_password")
    public String updatePassword(int uid,String oldupwd,String upwd,HttpServletRequest request)
    {
        boolean result=userService.UpdatePassword(uid,upwd,oldupwd);
        if(result)
        {
            request.setAttribute("msg","Succès !");
            MyCipher myCipher=new MyCipher();
            User u=(User)request.getSession().getAttribute("user");
            u.setUpwd(myCipher.encrypt(upwd,"!"));
            request.getSession().removeAttribute("user");
            request.getSession().setAttribute("user",u);
            return "user_center";
        }
        else
        {
            request.setAttribute("failMsg","Une erreur s’est produite lors de la modification du mot de passe, veuillez confirmer que le mot de passe d’origine est correct ou contacter l’administrateur!");
            return "user_center";
        }
    }

    @RequestMapping("admin/change_password")
    public String updatePassword(int uid,String upwd,HttpServletRequest request)
    {
        boolean result=userService.UpdatePassword(uid,upwd);
        if(result)
        {
            MyCipher myCipher=new MyCipher();
            request.setAttribute("msg","Succès !");
            User u=(User)request.getSession().getAttribute("user");
            u.setUpwd(myCipher.encrypt(upwd,"!"));
            request.getSession().removeAttribute("user");
            request.getSession().setAttribute("user",u);
            return "redirect:user_list.action?pageNumber=1";
        }
        else
        {
            request.setAttribute("failMsg","Echec de la modification");
            return "redirect:user_list.action?pageNumber=1";
        }
    }

    @RequestMapping("admin/user_list")
    public String ShowUserList(int pageNumber,HttpServletRequest request)
    {
        if(pageNumber<=0)
            pageNumber=1;
        Page p = userService.queryUser(pageNumber);
        if(p.getTotalPage()==0)
        {
            p.setTotalPage(1);
            p.setPageNumber(1);
        }
        else {
            if(pageNumber>=p.getTotalPage()+1)
            {
                p = userService.queryUser(p.getTotalPage());
            }
        }
        request.setAttribute("p", p);
        return "admin/user_list";
    }

    @RequestMapping("admin/user_delete")
    public String DeleteUser(int uid)
    {
        boolean result= userService.deleteUser(uid);
        return "redirect:user_list.action?pageNumber=1";
    }

    @RequestMapping("/admin/user_edit_show")
    public String ChangeUser(int uid,HttpServletRequest request)
    {
        User user=userService.queryUserByUid(uid);
        if(user==null)
            return "redirect:user_list.action?pageNumber=1";
        else
        {
            request.setAttribute("u",user);
            return "admin/user_edit";
        }
    }
    @RequestMapping("/admin/user_update")
    public String updateUser(int uid,String uphone,String uaddress,HttpServletRequest request)
    {
        boolean result=userService.UpdatePhoneAndAddress(uid,uphone,uaddress);
        if(result)
        {
            User user=(User)request.getSession().getAttribute("user");
            if(user.getUid()==uid)
            {
                user.setUaddress(uaddress);
                user.setUphone(uphone);
                request.getSession().removeAttribute("user");
                request.getSession().setAttribute("user",user);
            }
        }
        return "redirect:user_list.action?pageNumber=1";
    }
}

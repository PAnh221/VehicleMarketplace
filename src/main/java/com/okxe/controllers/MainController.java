package com.okxe.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/okxe/home/")
public class MainController {
    @RequestMapping("index")
    public String index(){
        return "okxe/index";
    }

    @RequestMapping("dashboard")
    public String dashboard(){
        return "okxe/dashboard";
    }


    @RequestMapping("single")
    public String single(){
        return "okxe/single";
    }

    @RequestMapping("dashboardMyAds")
    public String dashboardMyAds(){
        return "okxe/dashboard-my-ads";
    }

    @RequestMapping("dashboardFavouriteAds")
    public String dashboardFavouriteAds(){
        return "okxe/dashboard-favourite-ads";
    }

    @RequestMapping("dashboardArchivedAds")
    public String dashboardArchivedAds(){
        return "okxe/dashboard-archived-ads";
    }

    @RequestMapping("dashboardPendingAds")
    public String dashboardPendingAds(){
        return "okxe/dashboard-pending-ads";
    }

    @RequestMapping("aboutUs")
    public String aboutUs(){
        return "okxe/about-us";
    }

    @RequestMapping("contactUs")
    public String contactUs(){
        return "okxe/contact-us";
    }

    @RequestMapping("userProfile")
    public String userProfile(){
        return "okxe/user-profile";
    }

    @RequestMapping("404")
    public String error404(){
        return "okxe/404";
    }
    @RequestMapping("package")
    public String packagePage(){
        return "okxe/package";
    }
    @RequestMapping("store")
    public String store(){
        return "okxe/store";
    }
    @RequestMapping("blog")
    public String blog(){
        return "okxe/blog";
    }
    @RequestMapping("singleBlog")
    public String singleBlog(){
        return "okxe/single-blog";
    }
    @RequestMapping("termsCondition")
    public String termsCondition(){
        return "okxe/terms-condition";
    }
    @RequestMapping("category")
    public String category(){
        return "okxe/category";
    }
    @RequestMapping("adListView")
    public String adListView(){
        return "okxe/ad-list-view";
    }
    @RequestMapping("adListing")
    public String adListing(){
        return "okxe/ad-listing";
    }


}

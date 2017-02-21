package it.musicase.controller.upload;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.musicase.model.Utente;

/**
 * Servlet implementation class AvatarUploader
 */
//@WebServlet("/AvatarUploader")
@MultipartConfig
public class AvatarUploader
	extends Uploader 
{
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AvatarUploader()
	{
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		
        try  
        {  
            //  Get all files from Request object  
            HttpFileCollectionBase files = Request.Files;  
            for (int i = 0; i < files.Count; i++)  
            {  
                //string path = AppDomain.CurrentDomain.BaseDirectory + "Uploads/";  
                //string filename = Path.GetFileName(Request.Files[i].FileName);  
  
                HttpPostedFileBase file = files[i];  
                string fname;  
  
                // Checking for Internet Explorer  
                if (Request.Browser.Browser.ToUpper() == "IE" || Request.Browser.Browser.ToUpper() == "INTERNETEXPLORER")  
                {  
                    string[] testfiles = file.FileName.Split(new char[] { '\\' });  
                    fname = testfiles[testfiles.Length - 1];  
                }  
                else  
                {  
                    fname = file.FileName;  
                }  
  
                // Get the complete folder path and store the file inside it.  
                fname = Path.Combine(Server.MapPath("~/Uploads/"), fname);  
                file.SaveAs(fname);  
            }  
            // Returns message that successfully uploaded  
            return Json("File Uploaded Successfully!");  
        }  
        catch (Exception ex)  
        {  
            return Json("Error occurred. Error details: " + ex.Message);  
        }  
    }  
    else  
    {  
        return Json("No files selected.");  
    }  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doGet(request, response);
	}

	// costanti
	private static final String AVT_DIR = "\\avatars\\";
    private static final long serialVersionUID = 8720732405342541611L;
}

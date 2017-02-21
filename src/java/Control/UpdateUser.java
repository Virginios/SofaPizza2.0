package it.musicase.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;

import it.musicase.dao.DataAccessAnagrafica;
import it.musicase.dao.DataAccessUtente;
import it.musicase.dbman.DataBaseManager;
import it.musicase.model.Anagrafica;
import it.musicase.model.Utente;
import it.musicase.utils.ExceptionManager;

/**
 * Servlet implementation class Updateuser
 */
//@WebServlet("/Updateuser")
public class UpdateUser
	extends HttpServlet
{
	/**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser()
    {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String destination;

		// crea l'oggetto Anagrafica
		Anagrafica userData = new Anagrafica();
		userData.setCf(request.getParameter("userID"));
		userData.setCognome(request.getParameter("lastName"));
		userData.setNome(request.getParameter("firstName"));
		userData.setDataNascita(request.getParameter("birthDate"));
		userData.setLuogoNascita(request.getParameter("birthPlace"));
		userData.setCitta(request.getParameter("town"));
		userData.setIndirizzo(request.getParameter("address"));
		// crea l'oggetto Utente
		Utente user = new Utente();
		user.setUsername(request.getParameter("username"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		user.setCf(request.getParameter("userID"));
		boolean success = false;
		boolean committed = false;
		DataBaseManager dbMan = new DataBaseManager();
		
		try
		{
			dbMan.connect();
			dbMan.setAutoCommit(false);
			DataAccessAnagrafica daoUserData = new DataAccessAnagrafica();
			DataAccessUtente daoUser = new DataAccessUtente();
			synchronized (dbMan)
			{
				daoUserData.doSave(userData);
				daoUser.doSave(user);
			}
			dbMan.commit();
			committed = true;
		}
		catch (MySQLIntegrityConstraintViolationException mysqlicve)
		{
			ExceptionManager.logAndSet(mysqlicve, request);
		}
		catch (SQLException sqle)
		{
			ExceptionManager.logAndSet(sqle, request);
		}
		catch (Exception e)
		{
			ExceptionManager.logAndSet(e, request);
		}


		try
		{
			if (!committed)
				dbMan.rollback();
			dbMan.setAutoCommit(true);
			dbMan.disconnect();
			success = true;
		}
		catch (SQLException sqle)
		{
			ExceptionManager.logAndSet(sqle, request);
		}

		if (success)
			destination = "userprofile.jsp";
		else
			destination = "error.jsp";
		
		RequestDispatcher view = request.getRequestDispatcher(destination);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doGet(request, response);
	}

    private static final long serialVersionUID = -5816784937092721107L;
}

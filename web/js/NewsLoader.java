package it.musicase.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException;

import com.google.gson.Gson;

import it.musicase.dao.DataAccessNotizia;
import it.musicase.dbman.DataBaseManager;
import it.musicase.interfaces.Bean;
import it.musicase.model.Notizia;
import it.musicase.utils.ExceptionManager;

/**
 * Servlet implementation class NewsLoader
 */
//@WebServlet("/NewsLoader")
public class NewsLoader
	extends HttpServlet
{
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NewsLoader()
	{
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		boolean success = false;

		// impostiamo tipo MIME di ritorno e codifica
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		// recupera gli ultimi quattro articoli
		DataBaseManager dbMan = new DataBaseManager();
		DataAccessNotizia daoNews = new DataAccessNotizia();
		Collection<Bean> beanList = new LinkedList<>();
		try
		{
			dbMan.connect();
			beanList = daoNews.doRetrieveAllOrdered();
			dbMan.disconnect();
			success = true;
		}
		catch (MySQLSyntaxErrorException mysqlsee)
		{
			ExceptionManager.logAndSet(mysqlsee, request);
		}
		catch (SQLException sqle)
		{
			ExceptionManager.logAndSet(sqle, request);
		}
		catch (Exception e)
		{
			ExceptionManager.logAndSet(e, request);
		}

		// converti la collezione di bean in collezione di notizie
		Iterator<Bean> it = beanList.iterator();
		LinkedList<Notizia> newsList = new LinkedList<>();
		while (it.hasNext())
			newsList.add((Notizia) it.next());

		if (success)
			response.getWriter().write((new Gson()).toJson(newsList));
		else
			response.getWriter().write("");

		System.out.println("[" + LocalDateTime.now() + "] Recupero notizie completato!");
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
	private static final long serialVersionUID = -8131104953790136962L;
}

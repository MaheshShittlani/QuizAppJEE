package com.learn.db.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.learn.database.DatabaseConnection;
import com.learn.db.model.UserScore;

public class UserQuizQuestionAnswerDao {

	public boolean addQuizQuestion(Long userId, Long quizQuestionId, String selectedOption) {
		try (Connection con = DatabaseConnection.getConnection();
				PreparedStatement statement = con.prepareStatement(
						"Insert into user_quiz_ques_ans (user_id, quiz_question_id, selected_option) value (?, ?, ?)")) {
			statement.setLong(1, userId);
			statement.setLong(2, quizQuestionId);
			statement.setString(3, selectedOption);
			statement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<UserScore> getLeaderBoard(Long quizId) {
		List<UserScore> questions = new ArrayList<UserScore>();
		try (PreparedStatement statement = DatabaseConnection.getConnection().prepareStatement(
				"SELECT u.first_name, u.last_name, count(uqqa.id) score FROM quiz.user_quiz_ques_ans uqqa "
						+ " inner join quiz_question qq on qq.id = uqqa.quiz_question_id "
						+ " inner join question q on q.id = qq.question_id "
						+ " inner join user u on u.id = uqqa.user_id "
						+ " where q.right_option = uqqa.selected_option and qq.quiz_id = ? "
						+ " group by u.first_name, u.last_name, uqqa.id order by count(uqqa.id) desc")) {
			statement.setLong(1, quizId);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				questions.add(
						new UserScore(rs.getString("first_name"), rs.getString("last_name"), rs.getLong("score")));
			}
			System.out.println(questions);
			return questions;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

}

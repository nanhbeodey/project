/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author Nanhbeo
 */
public class WordsDAO extends DBContext {

    public ArrayList<EnglishWords> getAllEnglishWords() {
        ArrayList<EnglishWords> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM  [WordsInEnglish]";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
//                Users u = new Users(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getBoolean(4), rs.getDate(5), rs.getString(6), rs.getString(7));
                EnglishWords englishWords = new EnglishWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(englishWords);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<PairWord> getPairWords() {
        ArrayList<PairWord> list = new ArrayList<>();
        try {
            String sql = "select e.*,v.* from WordsInEnglish e join  MapWord m  on e.id = m.EngWordId join WordsInVN v on m.VNWordId= v.id";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
//                Users u = new Users(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getBoolean(4), rs.getDate(5), rs.getString(6), rs.getString(7));
                EnglishWords englishWords = new EnglishWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                VNWords Word = new VNWords(rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8));
                list.add(new PairWord(englishWords, Word));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<VNWords> getAllVNWords() {
        ArrayList<VNWords> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM  [WordsInEnglish]";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
//                Users u = new Users(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getBoolean(4), rs.getDate(5), rs.getString(6), rs.getString(7));
                VNWords Word = new VNWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(Word);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public EnglishWords getEngLishWordByVN(String word) {
        try {
            String sql = "select * from WordsInEnglish e where e.id = (Select  m.EngWordId from MapWord m join WordsInVN v on m.VNWordId= v.id where LOWER(v.word) = N'" + word.toLowerCase() + "')";
            System.out.println(sql);

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return new EnglishWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public EnglishWords getEngLishWord(String word) {
        try {
            String sql = "select * from WordsInEnglish e where LOWER(e.word) = '" + word.toLowerCase() + "'";
            System.out.println(sql);

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return new EnglishWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return new EnglishWords(0, "", "");
    }

    public VNWords getVNWords(String word) {
        try {
            String sql = "select * from WordsInVN v where LOWER(v.word) = N'" + word.toLowerCase() + "'";
            System.out.println(sql);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return new VNWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return new VNWords(0, "", "");
    }

    public EnglishWords getEngLishWordID(String id) {
        try {
            String sql = "select * from WordsInEnglish e where LOWER(e.id) = '" + id + "'";
            System.out.println(sql);

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return new EnglishWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return new EnglishWords(0, "", "");
    }

    public VNWords getVNWordsID(String id) {
        try {
            String sql = "select * from WordsInVN v where LOWER(v.id) = '" + id + "'";
            System.out.println(sql);
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return new VNWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return new VNWords(0, "", "");
    }

    public VNWords getVNWordsByEnglishWord(String word) {
        try {
            String sql = "select * from WordsInVN v where v.id = (Select  m.VNWordId from MapWord m join  WordsInEnglish e on m.EngWordId= e.id where LOWER(e.word) = N'" + word.toLowerCase() + "')";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            System.out.println(sql);

            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                return new VNWords(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }
        return new VNWords(0, "", "");
    }

    public int addVnWord(String word, String def, String exp) {
        try {
            // Create SQL String
            String sql = "INSERT INTO [dbo].[WordsInVN]   ([word] ,[definition],[exp])  VALUES (N'" + word + "',N'" + def + "',N'" + exp + "')";
            // Create Statement
            System.out.println(sql);
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            // Execute Update
            stm.executeUpdate();
            ResultSet rs = stm.getGeneratedKeys();
            if (rs.next()) {
                System.out.println("VN id" + rs.getInt(1));
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
        return 0;
    }

    public void addMap(String eid, String vid) {
        try {
            // Create SQL String
            String sql = "INSERT INTO [dbo].[MapWord] ([EngWordId] ,[VNWordId])  VALUES (?,?) ";
            // Create Statement
            System.out.println(sql);
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, eid);
            stm.setString(2, vid);

            // Execute Update
            stm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateVnWord(String id, String word, String def, String exp) {
        try {
            // Create SQL String
            String sql = "UPDATE [dbo].[WordsInVN]  SET [word] = N'" + word + "' ,[definition] = N'" + def + "',[exp] = N'" + exp + "' WHERE id = " + id;
            // Create Statement
            System.out.println(sql);
            PreparedStatement stm = connection.prepareStatement(sql);
            // Execute Update
            stm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateEngWord(String id, String word, String def, String exp) {
        try {
            // Create SQL String
            String sql = "UPDATE [dbo].[WordsInEnglish]  SET [word] = N'" + word + "' ,[definition] = N'" + def + "',[exp] = N'" + exp + "' WHERE id = " + id;
            // Create Statement
            System.out.println(sql);
            PreparedStatement stm = connection.prepareStatement(sql);
            // Execute Update
            stm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int addEngWord(String word, String def, String exp) {
        try {
            // Create SQL String
            String sql = "INSERT INTO [dbo].[WordsInEnglish]   ([word] ,[definition],[exp])  VALUES (?,?,?)";
            // Create Statement
            System.out.println(sql);
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, word);
            stm.setString(2, def);
            stm.setString(3, exp);
            stm.executeUpdate();

            // Execute Update
            ResultSet rs = stm.getGeneratedKeys();
            if (rs.next()) {
                                System.out.println("Eng id" + rs.getInt(1));

                return rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return 0;
    }

}
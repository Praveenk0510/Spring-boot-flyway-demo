CREATE ALIAS GET_PERSON_COUNT AS $$
int getPersonCount() {
int count = 0;
  try{
    var conn = java.sql.DriverManager.getConnection("jdbc:h2:file:~/spring-boot-demo", "sa", "");
    var stmt = conn.createStatement();
    var rs = stmt.executeQuery("SELECT COUNT(*) FROM employee");
        rs.next();
    count= rs.getInt(1);
    }catch(Exception e){
    }
    return count;
}
$$;

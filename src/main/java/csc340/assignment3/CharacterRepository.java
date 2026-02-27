package csc340.assignment3;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long> {

  List<Character> findByUniverse(String universe);

  List<Character> findByRole(String role);

  @Query(value = "SELECT s.* FROM characters s WHERE s.name like %?1%", nativeQuery = true)
  List<Character> findByName(String name);

}

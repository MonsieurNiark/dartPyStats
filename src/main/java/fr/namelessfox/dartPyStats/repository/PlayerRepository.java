package fr.namelessfox.dartPyStats.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.namelessfox.dartPyStats.domain.Player;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Integer> {

}

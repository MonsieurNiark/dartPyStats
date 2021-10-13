package fr.namelessfox.dartPyStats.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.namelessfox.dartPyStats.domain.Game;

public interface GameRepository extends JpaRepository<Game, Integer> {

}

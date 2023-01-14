
package com.proyecto.primerproyecto.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.proyecto.primerproyecto.model.persona;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonaRepository extends JpaRepository <persona, Long>{
    
}

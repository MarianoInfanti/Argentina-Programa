
package com.proyecto.primerproyecto.service;

import com.proyecto.primerproyecto.model.persona;
import java.util.List;

public interface IPersonaService {
    
    public List<persona> verPersonas();
    public void crearPersona (persona per);
    public void borrarPersona(Long id);
    public persona buscarPersona (Long id);
    
}

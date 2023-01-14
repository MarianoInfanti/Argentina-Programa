package com.proyecto.primerproyecto.service;

import com.proyecto.primerproyecto.model.persona;
import com.proyecto.primerproyecto.repository.PersonaRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonaService implements IPersonaService{

    @Autowired
    public PersonaRepository persoRepo;
    
    @Override
    public List<persona> verPersonas() {
    return persoRepo.findAll();
    }

    @Override
    public void crearPersona(persona per) {
       persoRepo.save(per);
    }

    @Override
    public void borrarPersona(Long id) {
       persoRepo.deleteById(id);
    }

    @Override
    public persona buscarPersona(Long id) {
    return persoRepo.findById(id).orElse(null);
    }
    
}

package com.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.model.Exercise;


@Repository
public interface ExerciseRepository extends CrudRepository<Exercise, Integer>{

}

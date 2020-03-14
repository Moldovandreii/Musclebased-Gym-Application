package com.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.model.Exercise;
import com.repository.ExerciseRepository;



@Service
@Transactional
public class ExerciseService {
	private final ExerciseRepository exerciseRepository;
	
	public ExerciseService(ExerciseRepository exerciseRepository) {
		this.exerciseRepository = exerciseRepository;
	}
	
	public List<Exercise> showAllExercises(){
		List<Exercise> exercises = new ArrayList<Exercise>();
		for(Exercise exercise : exerciseRepository.findAll()) {
			exercises.add(exercise);
		}
		return exercises; 
	}
	
	public List<Exercise> showMuscleBasedExercises(String muscleGroup){
		List<Exercise> exercises = new ArrayList<Exercise>();
		for(Exercise exercise : exerciseRepository.findAll()) {
			if(exercise.getMuscleGroup().equals(muscleGroup))
			{
				exercises.add(exercise);
			}
		}
		return exercises;
	}
	
	public Exercise findExerciseById(int id) {
		Optional<Exercise> optional = exerciseRepository.findById(id);
		return optional.get();
	}
}

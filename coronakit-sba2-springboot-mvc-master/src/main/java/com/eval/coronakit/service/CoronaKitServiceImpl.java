package com.eval.coronakit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.CoronaKitRepository;
import com.eval.coronakit.entity.CoronaKit;

@Service
public class CoronaKitServiceImpl implements CoronaKitService {

	@Autowired
	CoronaKitRepository repository;
	
	@Override
	public CoronaKit saveKit(CoronaKit kit) {
		// TODO Auto-generated method stub
		return repository.save(kit);
	}

	@Override
	public CoronaKit getKitById(int kitId) {
		// TODO Auto-generated method stub
		return repository.findById(kitId).orElse(null);
	}

	@Override
	public int getCurrrentId() {
		// TODO Auto-generated method stub
		return repository.getCurrentId();
	}


}

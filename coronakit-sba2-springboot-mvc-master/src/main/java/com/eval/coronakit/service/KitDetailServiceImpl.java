package com.eval.coronakit.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.KitDetailRepository;
import com.eval.coronakit.entity.KitDetail;

@Service
public class KitDetailServiceImpl implements KitDetailService {

	@Autowired
	KitDetailRepository repository;
	
	@Override
	public KitDetail addKitItem(KitDetail kitItem) {
		// TODO Auto-generated method stub
		KitDetail kit = repository.save(kitItem);
		return kit;
	}

	@Override
	public KitDetail getKitItemById(int itemId) {
		// TODO Auto-generated method stub
		Optional <KitDetail> kit = repository.findById(itemId);
		return kit.orElse(null);
	}

	@Override
	public List<KitDetail> getAllKitItemsOfAKit(int kitId) {
		// TODO Auto-generated method stub
		return null;
	}

}

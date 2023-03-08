package com.example.cutofftime.repository;
import com.example.cutofftime.entity.CutOffTime;
import org.springframework.data.repository.CrudRepository;
import java.util.Optional;

public interface CutOffTimeRepository extends CrudRepository<CutOffTime, String> {

    Optional<CutOffTime> findByIso(String iso);

}
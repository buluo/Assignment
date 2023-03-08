package com.example.cutofftime.controller;

import com.example.cutofftime.entity.CutOffTime;
import com.example.cutofftime.exception.IncorrectDateException;
import com.example.cutofftime.exception.IsoCodeNotFoundException;
import com.example.cutofftime.repository.CutOffTimeRepository;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDate;

@Controller
@RequestMapping
public class MainController {
    @Autowired
    private CutOffTimeRepository cutOffTimeRepository;

    @ApiOperation(value = "Get the cut-off times for currency pairs on a given date")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "Successfully get cut off time"),
            @ApiResponse(code = 404, message = "No currency found for the provided ISO code"),
            @ApiResponse(code = 400, message = "Bad Request. Invalid date format or value")
    })
    @GetMapping(path="/cut-off-time")
    @ResponseBody
    public String result(@RequestParam(value = "currency1") String iso1
            , @RequestParam(value = "currency2") String iso2
            , @RequestParam(value = "date") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate  date) {

        CutOffTime record1 = cutOffTimeRepository.findByIso(iso1.toUpperCase())
                .orElseThrow(()-> new IsoCodeNotFoundException("Wrong ISO Code"));
        CutOffTime record2 = cutOffTimeRepository.findByIso(iso2.toUpperCase())
                .orElseThrow(()-> new IsoCodeNotFoundException("Wrong ISO Code"));

        LocalDate today = LocalDate.now();
        if (date.isBefore(today)) {
            throw new IncorrectDateException("Provided date is expired.");
        }
        String CutOffTime1 = record1.getCutOffTime(today,date);
        String CutOffTime2 = record2.getCutOffTime(today,date);

        String result = CutOffTime.compareCutOffTime(CutOffTime1, CutOffTime2);

        return result;
    }
}

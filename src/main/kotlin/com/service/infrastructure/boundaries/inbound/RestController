package com.service.infrastructure.boundaries.inbound

import com.service.infrastructure.boundaries.inbound.model.FacadeModel
import org.springframework.http.MediaType
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/facade")
class RestController {

    @RequestMapping(value = ["/get"], method = [RequestMethod.GET], produces = [MediaType.APPLICATION_JSON_VALUE])
    fun getAll() = ResponseEntity.ok(FacadeModel(
        "test", "test"
    ))
}

package cn.service;

import cn.entity.Cinema;
import cn.entity.Record;
import cn.entity.Room;

import java.util.List;

public interface CinemaService {

    List<Cinema> getAllCinema();

    List<Cinema> getCinemaByName(String name);

    List<Cinema> getCinemaByAddressId(Integer addressId);

    Integer addCinema(Cinema cinema);

    Cinema getById(Integer id);

    List<Room> getAllRoomByCinemaId(Integer CinemaId);

    Room getRoomById(Integer id);

    Record getRecordById(Integer id);

    List<Record> getByInfo(Integer filmId,Integer cinemaId,Integer roomId);
}

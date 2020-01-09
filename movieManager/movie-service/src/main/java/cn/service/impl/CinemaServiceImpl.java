package cn.service.impl;

import cn.entity.Cinema;
import cn.entity.CinemaBand;
import cn.entity.Record;
import cn.entity.Room;
import cn.mapper.CinemaBandMapper;
import cn.mapper.CinemaMapper;
import cn.mapper.RecordMapper;
import cn.mapper.RoomMapper;
import cn.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CinemaServiceImpl implements CinemaService {
    @Autowired
    private CinemaMapper cinemaMapper;
    @Autowired
    private RoomMapper roomMapper;
    @Autowired
    private RecordMapper recordMapper;
    @Autowired
    private CinemaBandMapper cinemaBandMapper;
    @Override
    public List<Cinema> getAllCinema() {
        return cinemaMapper.selectAll();
    }

    @Override
    public List<Cinema> getCinemaByName(String name,Integer addressId) {
        return cinemaMapper.selectByNameAddressId(name,addressId);
    }

    @Override
    public List<Cinema> getCinemaByName(String name) {
        return cinemaMapper.selectByName(name);
    }


    @Override
    public List<Cinema> getCinemaByAddressId(Integer addressId) {
        return cinemaMapper.selectByAddressId(addressId);
    }

    @Override
    public Integer addCinema(Cinema cinema) {
        return cinemaMapper.insertSelective(cinema);
    }

    @Override
    public Cinema getById(Integer id) {
        return cinemaMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Room> getAllRoomByCinemaId(Integer cinemaId) {
        return roomMapper.selectAllByCinemaId(cinemaId);
    }

    @Override
    public Room getRoomById(Integer id) {
        return roomMapper.selectByPrimaryKey(id);
    }

    @Override
    public Record getRecordById(Integer id) {
        return recordMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Record> getByInfo(Integer filmId, Integer cinemaId, Integer roomId) {
        return recordMapper.selectByInfo(filmId,cinemaId,roomId);
    }

    @Override
    public List<CinemaBand> getAll() {
        return cinemaBandMapper.selectAll();
    }

    @Override
    public List<CinemaBand> getByAddressId(Integer id) {
        return cinemaBandMapper.selectByAddressId(id);
    }

}

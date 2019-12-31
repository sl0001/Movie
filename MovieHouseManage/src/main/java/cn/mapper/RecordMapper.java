package cn.mapper;

import cn.entity.Record;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Record record);

    int insertSelective(Record record);

    Record selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Record record);

    int updateByPrimaryKey(Record record);

    List<Record> selectByInfo(@Param("filmId")Integer filmId, @Param("cinemaId")Integer cinemaId, @Param("roomId")Integer roomId);
}
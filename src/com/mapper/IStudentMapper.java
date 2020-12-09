package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.po.Clazz;
import com.po.Student;

@Service("IStudentMapper")
public interface IStudentMapper {
	public int save(Student st);
	public List<Student> findPageAll(@Param("page") int page,@Param("rows") int rows);
	public List<Clazz> doinit();
	public int maxRows();
	public int update(Student st);
	public int delete(Integer sid);
	public Student findById(Integer sid);

}

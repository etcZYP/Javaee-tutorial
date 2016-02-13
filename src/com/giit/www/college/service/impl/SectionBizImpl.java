package com.giit.www.college.service.impl;

import com.giit.www.college.dao.CourseDao;
import com.giit.www.college.dao.SectionDao;
import com.giit.www.college.dao.StaffDao;
import com.giit.www.college.service.SectionBiz;
import com.giit.www.entity.Section;
import com.giit.www.entity.custom.SectionCustom;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by c0de8ug on 16-2-12.
 */
@Service
public class SectionBizImpl implements SectionBiz {

    @Resource
    private SectionDao sectionDao;
    @Resource
    private CourseDao courseDao;
    @Resource
    private StaffDao staffDao;

    @Override
    public void delete(int sectionId) {
        sectionDao.delete(sectionId);
    }

    @Override
    public void add(Section section) {
        sectionDao.add(section);
    }

    @Override
    public List<SectionCustom> findAllCustom() {
        return sectionDao.findAllCustom();
    }

    @Override
    public List<String> findAllCourseTitle() {
        return courseDao.findAllCourseTitle();
    }

    @Override
    public List<String> findAllTeacherName() {
        return staffDao.findAllName();
    }


}
package practice.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import practice.model.RegistrationModel;

@Repository("registrationDao")
public class RegistrationDaoImpl extends AbstractDao implements RegistrationDao{

	@SuppressWarnings("unchecked")
	@Override
	public List<RegistrationModel> getAllRegistrations() {
		Criteria criteria = getSession().createCriteria(RegistrationModel.class);
		return (List<RegistrationModel>) criteria.list();
	}

}

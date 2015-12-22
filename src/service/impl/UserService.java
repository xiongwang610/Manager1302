package service.impl;

import entity.User;

public interface UserService {
	
	//判断是否存在用户
	public boolean loginUser(User user);
	
}

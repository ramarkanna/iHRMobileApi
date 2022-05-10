package ihr.com.api.security.service;

import ihr.com.api.model.User;
import ihr.com.api.security.dto.AuthenticatedUserDto;
import ihr.com.api.security.dto.RegistrationRequest;
import ihr.com.api.security.dto.RegistrationResponse;

/**
 * Created on Ağustos, 2020
 *
 * @author Faruk
 */
public interface UserService {

	User findByUsername(String username);

	RegistrationResponse registration(RegistrationRequest registrationRequest);

	AuthenticatedUserDto findAuthenticatedUserByUsername(String username);

}

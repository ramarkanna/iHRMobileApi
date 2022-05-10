package ihr.com.api.security.jwt;

import ihr.com.api.model.User;
import ihr.com.api.security.dto.AuthenticatedUserDto;
import ihr.com.api.security.dto.LoginRequest;
import ihr.com.api.security.dto.LoginResponse;
import ihr.com.api.security.mapper.UserMapper;
import ihr.com.api.security.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Service;

/**
 * Created on Ağustos, 2020
 *
 * @author Faruk
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class JwtTokenService {

	@Autowired
	private  UserService userService;

	@Autowired
	private  JwtTokenManager jwtTokenManager;
	@Autowired
	private  AuthenticationManager authenticationManager;

	public LoginResponse getLoginResponse(LoginRequest loginRequest) {

		final String username = loginRequest.getUsername();
		final String password = loginRequest.getPassword();

		final UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(username, password);

		authenticationManager.authenticate(usernamePasswordAuthenticationToken);

		final AuthenticatedUserDto authenticatedUserDto = userService.findAuthenticatedUserByUsername(username);

		final User user = UserMapper.INSTANCE.convertToUser(authenticatedUserDto);
		final String token = jwtTokenManager.generateToken(user);

		log.info(" {} has successfully logged in!", user.getUsername());

		return new LoginResponse(token);
	}

}

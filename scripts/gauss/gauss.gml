function gauss(argument0, argument1, argument2) {
	randIn = argument0;
	sigma = argument1;
	mu = argument2;
	if(randIn >= 0)
	{
		underSqrt = 2*sqr(sigma)*ln((randIn+(1/(sqrt(2*pi*sqr(sigma)))))*sqrt(2*pi*sqr(sigma)));
		fx = mu + sqrt(underSqrt);
	}
	else
	{
		randIn *= -1;
		underSqrt = 2*sqr(sigma)*ln((randIn+(1/(sqrt(2*pi*sqr(sigma)))))*sqrt(2*pi*sqr(sigma)));
		fx = mu - sqrt(underSqrt);
	}

	return fx;


}

classdef arrayh < builtinHandleClass & handle
  %arrayh - numeric array passed by reference
  
  methods
    function obj = arrayh(data)
      try
        assert(isnumeric(data))
      catch
        error('Argin must be numeric')
      end
      
      obj@builtinHandleClass(data)
    end
  end
  
  %% Overload builtin methods
  methods
    function out = abs(obj, varargin)
      out = abs(obj.data, varargin{:});
    end

    function out = accumarray(obj, varargin)
      out = accumarray(obj.data, varargin{:});
    end

    function out = acos(obj, varargin)
      out = acos(obj.data, varargin{:});
    end

    function out = acosd(obj, varargin)
      out = acosd(obj.data, varargin{:});
    end

    function out = acosh(obj, varargin)
      out = acosh(obj.data, varargin{:});
    end

    function out = acot(obj, varargin)
      out = acot(obj.data, varargin{:});
    end

    function out = acotd(obj, varargin)
      out = acotd(obj.data, varargin{:});
    end

    function out = acoth(obj, varargin)
      out = acoth(obj.data, varargin{:});
    end

    function out = acsc(obj, varargin)
      out = acsc(obj.data, varargin{:});
    end

    function out = acscd(obj, varargin)
      out = acscd(obj.data, varargin{:});
    end

    function out = acsch(obj, varargin)
      out = acsch(obj.data, varargin{:});
    end

    function out = airy(obj, varargin)
      out = airy(obj.data, varargin{:});
    end

    function out = all(obj, varargin)
      out = all(obj.data, varargin{:});
    end

    function out = amd(obj, varargin)
      out = amd(obj.data, varargin{:});
    end

    function out = and(obj, varargin)
      out = and(obj.data, varargin{:});
    end

    function out = any(obj, varargin)
      out = any(obj.data, varargin{:});
    end

    function out = asec(obj, varargin)
      out = asec(obj.data, varargin{:});
    end

    function out = asecd(obj, varargin)
      out = asecd(obj.data, varargin{:});
    end

    function out = asech(obj, varargin)
      out = asech(obj.data, varargin{:});
    end

    function out = asin(obj, varargin)
      out = asin(obj.data, varargin{:});
    end

    function out = asind(obj, varargin)
      out = asind(obj.data, varargin{:});
    end

    function out = asinh(obj, varargin)
      out = asinh(obj.data, varargin{:});
    end

    function out = atan(obj, varargin)
      out = atan(obj.data, varargin{:});
    end

    function out = atan2(obj, varargin)
      out = atan2(obj.data, varargin{:});
    end

    function out = atan2d(obj, varargin)
      out = atan2d(obj.data, varargin{:});
    end

    function out = atand(obj, varargin)
      out = atand(obj.data, varargin{:});
    end

    function out = atanh(obj, varargin)
      out = atanh(obj.data, varargin{:});
    end

    function out = balance(obj, varargin)
      out = balance(obj.data, varargin{:});
    end

    function out = bandwidth(obj, varargin)
      out = bandwidth(obj.data, varargin{:});
    end

    function out = bernoulli(obj, varargin)
      out = bernoulli(obj.data, varargin{:});
    end

    function out = besselh(obj, varargin)
      out = besselh(obj.data, varargin{:});
    end

    function out = besseli(obj, varargin)
      out = besseli(obj.data, varargin{:});
    end

    function out = besselj(obj, varargin)
      out = besselj(obj.data, varargin{:});
    end

    function out = besselk(obj, varargin)
      out = besselk(obj.data, varargin{:});
    end

    function out = bessely(obj, varargin)
      out = bessely(obj.data, varargin{:});
    end

    function out = betainc(obj, varargin)
      out = betainc(obj.data, varargin{:});
    end

    function out = betaincinv(obj, varargin)
      out = betaincinv(obj.data, varargin{:});
    end

    function out = bitand(obj, varargin)
      out = bitand(obj.data, varargin{:});
    end

    function out = bitcmp(obj, varargin)
      out = bitcmp(obj.data, varargin{:});
    end

    function out = bitget(obj, varargin)
      out = bitget(obj.data, varargin{:});
    end

    function out = bitor(obj, varargin)
      out = bitor(obj.data, varargin{:});
    end

    function out = bitset(obj, varargin)
      out = bitset(obj.data, varargin{:});
    end

    function out = bitshift(obj, varargin)
      out = bitshift(obj.data, varargin{:});
    end

    function out = bitxor(obj, varargin)
      out = bitxor(obj.data, varargin{:});
    end

    function out = bsxfun(obj, varargin)
      out = bsxfun(obj.data, varargin{:});
    end

    function out = ceil(obj, varargin)
      out = ceil(obj.data, varargin{:});
    end

    function out = charpoly(obj, varargin)
      out = charpoly(obj.data, varargin{:});
    end

    function out = chebyshevT(obj, varargin)
      out = chebyshevT(obj.data, varargin{:});
    end

    function out = chebyshevU(obj, varargin)
      out = chebyshevU(obj.data, varargin{:});
    end

    function out = chol(obj, varargin)
      out = chol(obj.data, varargin{:});
    end

    function out = cholupdate(obj, varargin)
      out = cholupdate(obj.data, varargin{:});
    end

    function out = colon(obj, varargin)
      out = colon(obj.data, varargin{:});
    end

    function out = conj(obj, varargin)
      out = conj(obj.data, varargin{:});
    end

    function out = conv2(obj, varargin)
      out = conv2(obj.data, varargin{:});
    end

    function out = cos(obj, varargin)
      out = cos(obj.data, varargin{:});
    end

    function out = cosd(obj, varargin)
      out = cosd(obj.data, varargin{:});
    end

    function out = cosh(obj, varargin)
      out = cosh(obj.data, varargin{:});
    end

    function out = coshint(obj, varargin)
      out = coshint(obj.data, varargin{:});
    end

    function out = cosint(obj, varargin)
      out = cosint(obj.data, varargin{:});
    end

    function out = cot(obj, varargin)
      out = cot(obj.data, varargin{:});
    end

    function out = cotd(obj, varargin)
      out = cotd(obj.data, varargin{:});
    end

    function out = coth(obj, varargin)
      out = coth(obj.data, varargin{:});
    end

    function out = csc(obj, varargin)
      out = csc(obj.data, varargin{:});
    end

    function out = cscd(obj, varargin)
      out = cscd(obj.data, varargin{:});
    end

    function out = csch(obj, varargin)
      out = csch(obj.data, varargin{:});
    end

    function out = ctranspose(obj, varargin)
      out = ctranspose(obj.data, varargin{:});
    end

    function out = cummax(obj, varargin)
      out = cummax(obj.data, varargin{:});
    end

    function out = cummin(obj, varargin)
      out = cummin(obj.data, varargin{:});
    end

    function out = cumprod(obj, varargin)
      out = cumprod(obj.data, varargin{:});
    end

    function out = cumsum(obj, varargin)
      out = cumsum(obj.data, varargin{:});
    end

    function out = dawson(obj, varargin)
      out = dawson(obj.data, varargin{:});
    end

    function out = delete(obj, varargin)
      out = delete(obj.data, varargin{:});
    end

    function out = det(obj, varargin)
      out = det(obj.data, varargin{:});
    end

    function out = diag(obj, varargin)
      out = diag(obj.data, varargin{:});
    end

    function out = diff(obj, varargin)
      out = diff(obj.data, varargin{:});
    end

    function out = dilog(obj, varargin)
      out = dilog(obj.data, varargin{:});
    end

    function out = dirac(obj, varargin)
      out = dirac(obj.data, varargin{:});
    end

    function out = divisors(obj, varargin)
      out = divisors(obj.data, varargin{:});
    end

    function out = dmperm(obj, varargin)
      out = dmperm(obj.data, varargin{:});
    end

    function out = ei(obj, varargin)
      out = ei(obj.data, varargin{:});
    end

    function out = eig(obj, varargin)
      out = eig(obj.data, varargin{:});
    end

    function out = ellipticCE(obj, varargin)
      out = ellipticCE(obj.data, varargin{:});
    end

    function out = ellipticCK(obj, varargin)
      out = ellipticCK(obj.data, varargin{:});
    end

    function out = ellipticCPi(obj, varargin)
      out = ellipticCPi(obj.data, varargin{:});
    end

    function out = ellipticE(obj, varargin)
      out = ellipticE(obj.data, varargin{:});
    end

    function out = ellipticF(obj, varargin)
      out = ellipticF(obj.data, varargin{:});
    end

    function out = ellipticK(obj, varargin)
      out = ellipticK(obj.data, varargin{:});
    end

    function out = ellipticPi(obj, varargin)
      out = ellipticPi(obj.data, varargin{:});
    end

    function out = eps(obj, varargin)
      out = eps(obj.data, varargin{:});
    end

    function out = eq(obj, varargin)
      out = eq(obj.data, varargin{:});
    end

    function out = erf(obj, varargin)
      out = erf(obj.data, varargin{:});
    end

    function out = erfc(obj, varargin)
      out = erfc(obj.data, varargin{:});
    end

    function out = erfcinv(obj, varargin)
      out = erfcinv(obj.data, varargin{:});
    end

    function out = erfcx(obj, varargin)
      out = erfcx(obj.data, varargin{:});
    end

    function out = erfi(obj, varargin)
      out = erfi(obj.data, varargin{:});
    end

    function out = erfinv(obj, varargin)
      out = erfinv(obj.data, varargin{:});
    end

    function out = euler(obj, varargin)
      out = euler(obj.data, varargin{:});
    end

    function out = exist(obj, varargin)
      out = exist(obj.data, varargin{:});
    end

    function out = exp(obj, varargin)
      out = exp(obj.data, varargin{:});
    end

    function out = expm1(obj, varargin)
      out = expm1(obj.data, varargin{:});
    end

    function out = fft(obj, varargin)
      out = fft(obj.data, varargin{:});
    end

    function out = fftn(obj, varargin)
      out = fftn(obj.data, varargin{:});
    end

    function out = fftw(obj, varargin)
      out = fftw(obj.data, varargin{:});
    end

    function out = filter(obj, varargin)
      out = filter(obj.data, varargin{:});
    end

    function out = find(obj, varargin)
      out = find(obj.data, varargin{:});
    end

    function out = fix(obj, varargin)
      out = fix(obj.data, varargin{:});
    end

    function out = floor(obj, varargin)
      out = floor(obj.data, varargin{:});
    end

    function out = fresnelc(obj, varargin)
      out = fresnelc(obj.data, varargin{:});
    end

    function out = fresnels(obj, varargin)
      out = fresnels(obj.data, varargin{:});
    end

    function out = full(obj, varargin)
      out = full(obj.data, varargin{:});
    end

    function out = gamma(obj, varargin)
      out = gamma(obj.data, varargin{:});
    end

    function out = gammainc(obj, varargin)
      out = gammainc(obj.data, varargin{:});
    end

    function out = gammaincinv(obj, varargin)
      out = gammaincinv(obj.data, varargin{:});
    end

    function out = gammaln(obj, varargin)
      out = gammaln(obj.data, varargin{:});
    end

    function out = ge(obj, varargin)
      out = ge(obj.data, varargin{:});
    end

    function out = gegenbauerC(obj, varargin)
      out = gegenbauerC(obj.data, varargin{:});
    end

    function out = gt(obj, varargin)
      out = gt(obj.data, varargin{:});
    end

    function out = harmonic(obj, varargin)
      out = harmonic(obj.data, varargin{:});
    end

    function out = hermiteH(obj, varargin)
      out = hermiteH(obj.data, varargin{:});
    end

    function out = hess(obj, varargin)
      out = hess(obj.data, varargin{:});
    end

    function out = hypot(obj, varargin)
      out = hypot(obj.data, varargin{:});
    end

    function out = ichol(obj, varargin)
      out = ichol(obj.data, varargin{:});
    end

    function out = ifft(obj, varargin)
      out = ifft(obj.data, varargin{:});
    end

    function out = ifftn(obj, varargin)
      out = ifftn(obj.data, varargin{:});
    end

    function out = igamma(obj, varargin)
      out = igamma(obj.data, varargin{:});
    end

    function out = ilu(obj, varargin)
      out = ilu(obj.data, varargin{:});
    end

    function out = imag(obj, varargin)
      out = imag(obj.data, varargin{:});
    end

    function out = inv(obj, varargin)
      out = inv(obj.data, varargin{:});
    end

    function out = isbanded(obj, varargin)
      out = isbanded(obj.data, varargin{:});
    end

    function out = isdiag(obj, varargin)
      out = isdiag(obj.data, varargin{:});
    end

    function out = isfinite(obj, varargin)
      out = isfinite(obj.data, varargin{:});
    end

    function out = isinf(obj, varargin)
      out = isinf(obj.data, varargin{:});
    end

    function out = isnan(obj, varargin)
      out = isnan(obj.data, varargin{:});
    end

    function out = issorted(obj, varargin)
      out = issorted(obj.data, varargin{:});
    end

    function out = istril(obj, varargin)
      out = istril(obj.data, varargin{:});
    end

    function out = istriu(obj, varargin)
      out = istriu(obj.data, varargin{:});
    end

    function out = jacobiP(obj, varargin)
      out = jacobiP(obj.data, varargin{:});
    end

    function out = jordan(obj, varargin)
      out = jordan(obj.data, varargin{:});
    end

    function out = kummerU(obj, varargin)
      out = kummerU(obj.data, varargin{:});
    end

    function out = laguerreL(obj, varargin)
      out = laguerreL(obj.data, varargin{:});
    end

    function out = lambertw(obj, varargin)
      out = lambertw(obj.data, varargin{:});
    end

    function out = ldivide(obj, varargin)
      out = ldivide(obj.data, varargin{:});
    end

    function out = ldl(obj, varargin)
      out = ldl(obj.data, varargin{:});
    end

    function out = le(obj, varargin)
      out = le(obj.data, varargin{:});
    end

    function out = legendreP(obj, varargin)
      out = legendreP(obj.data, varargin{:});
    end

    function out = linsolve(obj, varargin)
      out = linsolve(obj.data, varargin{:});
    end

    function out = log(obj, varargin)
      out = log(obj.data, varargin{:});
    end

    function out = log10(obj, varargin)
      out = log10(obj.data, varargin{:});
    end

    function out = log1p(obj, varargin)
      out = log1p(obj.data, varargin{:});
    end

    function out = log2(obj, varargin)
      out = log2(obj.data, varargin{:});
    end

    function out = logint(obj, varargin)
      out = logint(obj.data, varargin{:});
    end

    function out = lt(obj, varargin)
      out = lt(obj.data, varargin{:});
    end

    function out = ltitr(obj, varargin)
      out = ltitr(obj.data, varargin{:});
    end

    function out = lu(obj, varargin)
      out = lu(obj.data, varargin{:});
    end

    function out = max(obj, varargin)
      out = max(obj.data, varargin{:});
    end

    function out = min(obj, varargin)
      out = min(obj.data, varargin{:});
    end

    function out = minpoly(obj, varargin)
      out = minpoly(obj.data, varargin{:});
    end

    function out = minus(obj, varargin)
      out = minus(obj.data, varargin{:});
    end

    function out = mldivide(obj, varargin)
      out = mldivide(obj.data, varargin{:});
    end

    function out = mod(obj, varargin)
      out = mod(obj.data, varargin{:});
    end

    function out = movstd(obj, varargin)
      out = movstd(obj.data, varargin{:});
    end

    function out = movvar(obj, varargin)
      out = movvar(obj.data, varargin{:});
    end

    function out = mpower(obj, varargin)
      out = mpower(obj.data, varargin{:});
    end

    function out = mrdivide(obj, varargin)
      out = mrdivide(obj.data, varargin{:});
    end

    function out = mtimes(obj, varargin)
      out = mtimes(obj.data, varargin{:});
    end

    function out = ne(obj, varargin)
      out = ne(obj.data, varargin{:});
    end

    function out = nnz(obj, varargin)
      out = nnz(obj.data, varargin{:});
    end

    function out = nonzeros(obj, varargin)
      out = nonzeros(obj.data, varargin{:});
    end

    function out = norm(obj, varargin)
      out = norm(obj.data, varargin{:});
    end

    function out = not(obj, varargin)
      out = not(obj.data, varargin{:});
    end

    function out = nzmax(obj, varargin)
      out = nzmax(obj.data, varargin{:});
    end

    function out = or(obj, varargin)
      out = or(obj.data, varargin{:});
    end

    function out = ordeig(obj, varargin)
      out = ordeig(obj.data, varargin{:});
    end

    function out = ordqz(obj, varargin)
      out = ordqz(obj.data, varargin{:});
    end

    function out = ordschur(obj, varargin)
      out = ordschur(obj.data, varargin{:});
    end

    function out = permute(obj, varargin)
      out = permute(obj.data, varargin{:});
    end

    function out = plus(obj, varargin)
      out = plus(obj.data, varargin{:});
    end

    function out = pochhammer(obj, varargin)
      out = pochhammer(obj.data, varargin{:});
    end

    function out = poly2sym(obj, varargin)
      out = poly2sym(obj.data, varargin{:});
    end

    function out = polylog(obj, varargin)
      out = polylog(obj.data, varargin{:});
    end

    function out = pow2(obj, varargin)
      out = pow2(obj.data, varargin{:});
    end

    function out = power(obj, varargin)
      out = power(obj.data, varargin{:});
    end

    function out = prod(obj, varargin)
      out = prod(obj.data, varargin{:});
    end

    function out = psi(obj, varargin)
      out = psi(obj.data, varargin{:});
    end

    function out = qr(obj, varargin)
      out = qr(obj.data, varargin{:});
    end

    function out = qrupdate(obj, varargin)
      out = qrupdate(obj.data, varargin{:});
    end

    function out = qz(obj, varargin)
      out = qz(obj.data, varargin{:});
    end

    function out = rcond(obj, varargin)
      out = rcond(obj.data, varargin{:});
    end

    function out = rdivide(obj, varargin)
      out = rdivide(obj.data, varargin{:});
    end

    function out = real(obj, varargin)
      out = real(obj.data, varargin{:});
    end

    function out = reallog(obj, varargin)
      out = reallog(obj.data, varargin{:});
    end

    function out = realpow(obj, varargin)
      out = realpow(obj.data, varargin{:});
    end

    function out = realsqrt(obj, varargin)
      out = realsqrt(obj.data, varargin{:});
    end

    function out = rectangularPulse(obj, varargin)
      out = rectangularPulse(obj.data, varargin{:});
    end

    function out = rem(obj, varargin)
      out = rem(obj.data, varargin{:});
    end

    function out = reshape(obj, varargin)
      out = reshape(obj.data, varargin{:});
    end

    function out = round(obj, varargin)
      out = round(obj.data, varargin{:});
    end

    function out = schur(obj, varargin)
      out = schur(obj.data, varargin{:});
    end

    function out = sec(obj, varargin)
      out = sec(obj.data, varargin{:});
    end

    function out = secd(obj, varargin)
      out = secd(obj.data, varargin{:});
    end

    function out = sech(obj, varargin)
      out = sech(obj.data, varargin{:});
    end

    function out = sign(obj, varargin)
      out = sign(obj.data, varargin{:});
    end

    function out = signIm(obj, varargin)
      out = signIm(obj.data, varargin{:});
    end

    function out = sin(obj, varargin)
      out = sin(obj.data, varargin{:});
    end

    function out = sind(obj, varargin)
      out = sind(obj.data, varargin{:});
    end

    function out = sinh(obj, varargin)
      out = sinh(obj.data, varargin{:});
    end

    function out = sinhint(obj, varargin)
      out = sinhint(obj.data, varargin{:});
    end

    function out = sinint(obj, varargin)
      out = sinint(obj.data, varargin{:});
    end

    function out = sort(obj, varargin)
      out = sort(obj.data, varargin{:});
    end

    function out = sortrowsc(obj, varargin)
      out = sortrowsc(obj.data, varargin{:});
    end

    function out = sparse(obj, varargin)
      out = sparse(obj.data, varargin{:});
    end

    function out = sqrt(obj, varargin)
      out = sqrt(obj.data, varargin{:});
    end

    function out = ssinint(obj, varargin)
      out = ssinint(obj.data, varargin{:});
    end

    function out = sum(obj, varargin)
      out = sum(obj.data, varargin{:});
    end

    function out = superiorfloat(obj, varargin)
      out = superiorfloat(obj.data, varargin{:});
    end

    function out = svd(obj, varargin)
      out = svd(obj.data, varargin{:});
    end

    function out = symrcm(obj, varargin)
      out = symrcm(obj.data, varargin{:});
    end

    function out = tan(obj, varargin)
      out = tan(obj.data, varargin{:});
    end

    function out = tand(obj, varargin)
      out = tand(obj.data, varargin{:});
    end

    function out = tanh(obj, varargin)
      out = tanh(obj.data, varargin{:});
    end

    function out = times(obj, varargin)
      out = times(obj.data, varargin{:});
    end

    function out = transpose(obj, varargin)
      out = transpose(obj.data, varargin{:});
    end

    function out = triangularPulse(obj, varargin)
      out = triangularPulse(obj.data, varargin{:});
    end

    function out = tril(obj, varargin)
      out = tril(obj.data, varargin{:});
    end

    function out = triu(obj, varargin)
      out = triu(obj.data, varargin{:});
    end

    function out = uminus(obj, varargin)
      out = uminus(obj.data, varargin{:});
    end

    function out = uplus(obj, varargin)
      out = uplus(obj.data, varargin{:});
    end

    function out = whittakerM(obj, varargin)
      out = whittakerM(obj.data, varargin{:});
    end

    function out = whittakerW(obj, varargin)
      out = whittakerW(obj.data, varargin{:});
    end

    function out = wrightOmega(obj, varargin)
      out = wrightOmega(obj.data, varargin{:});
    end

    function out = xor(obj, varargin)
      out = xor(obj.data, varargin{:});
    end

    function out = zeta(obj, varargin)
      out = zeta(obj.data, varargin{:});
    end

  end
  
end
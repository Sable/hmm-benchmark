function [pi] = estimate_pi(pi,alpha,beta,nstates)
global hmm_pi;
sum_ab = single(sum(single(alpha(1:nstates)) .* single(beta(1:nstates))));
% est_pi_dev
pi = alpha(1:nstates) .* beta(1:nstates) ./ sum_ab;
hmm_pi = pi;
end

module AlgebraPDF
#
using Parameters
using QuadGK
using Optim
using Random
using RecipesBase
using StaticArrays
using Interpolations
using ForwardDiff
using LinearAlgebra
using Measurements

#

import Base:copy
import Optim: minimizer, minimum
import ForwardDiff: hessian

export fixpar, releasepar, constrainpar, unconstrainpar
export updatepars, selectpars
export nt
export Pars
include("parameters.jl")

export FunctionWithParameters
export AbstractPDF
export @typepdf
export ∅
export pdf, npars, p2v, v2p
export integral, integrals
export fixpars, fixpar
export fixedshapepdf
export noparsf, noparsnormf
export func, lims
export freepars, fixedpars, constrainedpars
export pars
export normalizationintegral
include("pdf.jl")

export fit_llh, llh
export fit_llh_with_constraints
export hessian, covmat, invH, invexacthessian
export errors, measurements
export minimizer, minimum
include("fit.jl")

export MixedModel
export fractions, fractionvalues
export Ncomp
include("mixedmodel.jl")

export generate
include("generation.jl")

export conv_f_with_g
export conv_with_gauss
export conv_with_gauss_sampling
include("convolution.jl")

export scaletobinneddata
include("plottingrecipe.jl")

export xProductPDF
include("multidim.jl")

export aGauss, aBreitWigner, aExp
export aPowExp, aPol
export aDoubleGaussFixedRatio
export aBreitWignerConvGauss
export aTabulated
include("densities.jl")

export inrange
include("utils.jl")


# requires further work
import Base: +, *, /
include("arithmetics.jl")

export sumpdf
include("sumpdf.jl")

export sWeights
include("sWeights.jl")


end # module

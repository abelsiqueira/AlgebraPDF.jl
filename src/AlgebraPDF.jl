module AlgebraPDF
#
# using Base: NamedTuple
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
export ∅

import Base:+,-,==
import Base:copy
import Base: getproperty
import Base: abs2
import Base: keys
import Optim: minimizer, minimum
import ForwardDiff: hessian

export nt
# 
include("parameters.jl")
const Ext = TwoNamedTuples
export Ext, TwoNamedTuples

# 
export updatepar, updatepars
export fixpar, fixpars
export releasepar, releasepars
# 
export @makefuntype
export AbstractFunctionWithParameters
export FunctionWithParameters
export SumFunc, Abs2Func
# 
export func
export nfreepars
export freepars, fixedpars
export pars
export p2v, v2p
# 
include("functionwithparameters.jl")

# 
export @makepdftype
export AbstractPDF
export PDFWithParameters
export integral, integrals
export fixedshapepdf
export noparsf, noparsnormf
export lims
export normalizationintegral
# 
include("pdf.jl")
# 
const pdf = PDFWithParameters
export pdf


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

export convGauss
export conv_f_with_g
export conv_with_gauss
export conv_with_gauss_sampling
include("convolution.jl")

export scaletobinneddata
include("plottingrecipe.jl")

export xProductPDF
include("multidim.jl")

export FGauss, FBreitWigner, FExp
export FPowExp, FPol
export FDoubleGaussFixedRatio
export FBreitWignerConvGauss
export FTabulated
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

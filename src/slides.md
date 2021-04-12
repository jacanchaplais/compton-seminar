---
author:
- Sarah Alanazi
- Jacan Chaplais
title: Differential cross section for Compton scattering
title-slide-attributes:
    data-background-image: images/bg/title.jpg
    data-background-size: cover
    data-background-opacity: 0.3
slideNumber: 1
transition: convex
transitionSpeed: slow
date: April, 2021
lang: en-GB
...

# Outline {
data-background-image='images/bg/outline.jpg'
data-background-opacity=0.5
}

* History
* Theory
    * Frames of reference
    * The invariant amplitude
    * Phase space integrals
* Method
  * Matrix elem sq
  * Phase space
  * Cross section

# Motivation {
data-background-image='images/bg/motivation.jpg'
data-background-opacity=0.3
}

## Quantum theory: old and new {
data-background-image='images/bg/motivation.jpg'
data-background-opacity=0.3
}
:::::::::::::: {.columns}
::: {.column width="45%"}
In 1927, Dirac proposed that a quantum description of the interaction between
radiation and matter  may be elevated to a relativistic
theory by quantizing the electromagnetic field [@dirac_1927].


![](images/dirac.jpg){ width=70% }
:::
::: {.column width="45%"}
On further investigation, Oppenheimer discovered that blah blah.
It was a very good discovery, and everyone liked Oppenheimer.

![](images/oppenheimer.jpg){ width=70% }
:::
::::::::::::::

# Theory {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
}

## Kinematics {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
.allowframebreaks
}

During this calculation, we shall make use of two different inertial reference
frames to obtain our final result. Mandelstam variables are constructed from
the incoming and outgoing momenta of the interaction.
$$
\begin{array}{lllllllll}
s &=& (p+k)^{2} &=& p^{2}+k^{2}+2 p \cdot k &=& m^{2}+2 p \cdot k &=& m^{2}+2 p^{\prime} \cdot k^{\prime} \\
t &=& \left(p^{\prime}-p\right)^{2} &=& p^{\prime 2}+p^{2}-2 p \cdot p^{\prime} &=& 2 m^{2}-2 p \cdot p^{\prime} &=& -2 k \cdot k^{\prime} \\
u &=& \left(k^{\prime}-p\right)^{2} &=& k^{\prime 2}+p^{2}-2 k^{\prime} \cdot p &=& m^{2}-2 k^{\prime} \cdot p &=& m^{2}-2 k \cdot p^{\prime}
\end{array}
$$
Casting transition amplitudes in terms of these manifestly Lorentz invariant
quantities allows us to jump between frames with ease.


## Centre-of-mass frame {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
.allowframebreaks
}

Inertial frame in which sum of spatial momenta is zero.

![Centre of mass frame diagram](images/com-frame.svg)

::: notes
I should probably reduce the size of the text here

:::

## Lab frame {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
}

Inertial frame in which the electron is at rest. This will also be the assumed
rest frame for our particle detectors, hence _lab_ frame.

![Lab frame diagram](images/lab-frame.svg)

## Differential cross section {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
}

- Explain phase space (differs frame to frame)
- Delta function for conservation
- Matrix element

$$
\begin{aligned}
\mathrm{d} \sigma=& \frac{1}{2 E_{\mathcal{A}} 2 E_{\mathcal{B}}\left|v_{\mathcal{A}}-v_{\mathcal{B}}\right|}\left(\prod_{f} \frac{\mathrm{d}^{3} p_{f}}{(2 \pi)^{3}} \frac{1}{2 E_{f}}\right) \\
&\left|\mathcal{M}\left(p_{\mathcal{A}}, p_{\mathcal{B}} \rightarrow\left\{p_{f}\right\}\right)\right|^{2}(2 \pi)^{4} \delta^{(4)}\left(p_{\mathcal{A}}+p_{\mathcal{B}}-\sum p_{f}\right)
\end{aligned}
$$

## Phase space integral? {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
}

$$
\int \mathrm{d} \Pi_{2}=\int
\frac{\mathrm{d}^{3} k^{\prime}} {(2 \pi)^{3} 2 E_{k^{\prime}}}
\frac{\mathrm{d}^{3} p^{\prime}}{(2 \pi)^{3} 2 E_{p^{\prime}}}(2 \pi)^{4}
\delta^{4}\left(p+k-k^{\prime}-p^{\prime}\right)
$$

## Invariant amplitude {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
}

By applying the Feynman rules to these diagrams and grouping terms, we obtain
$$
i \mathcal{M}=i e^{2}
\epsilon_{\mu \lambda^\prime}^{\ast}
\left(k^{\prime}\right)
\epsilon_{\nu \lambda}\left(k\right)
\bar{u}^{s^{\prime}}\left(p^{\prime}\right)
\left(
    \dfrac{% numerator
        \gamma^{\mu}(\not{p}+k+m) \gamma^{\nu}}
        {(p+k)^{2}-m^{2}}% denominator
    + \dfrac{% numerator
        \gamma^{\nu}
        \left(\not{p}-k^{\prime}+m\right)
        \gamma^{\mu}}
        {\left(p-k^{\prime}\right)^{2}-m^{2}}% denominator
\right)
u^{s}(p)
$$

This unwieldy expression can be simplified a little by expanding the binomials
in the denominator, and observing for the numerator
$$
\begin{aligned}
(\not{p}+m) \gamma^{\nu} u^{s}(p) &=\left(2 p^{\nu}-\gamma^{\nu} \not{p}+\gamma^{\nu} m\right) u^{s}(p) \\
&=2 p^{\nu} u^{s}(p)-\gamma^{\nu}\underbrace{(\not{p}-m) u^{s}(p)}_{
\text{Dirac equation} \implies 0
} \\
&=2_{} p^{\nu} u^{s}(p)
\end{aligned}
$$

# Evaluating invariant amplitude {
data-background-image='images/bg/inv_amp.jpg'
data-background-opacity=0.5
}

## Spin averages and polarisation sums {
data-background-image='images/bg/inv_amp.jpg'
data-background-opacity=0.5
}

- Experimental basis...
- Studying unpolarised case
- Because we don't know spin of beam

## Working out the traces {
data-background-image='images/bg/inv_amp.jpg'
data-background-opacity=0.5
}

- Introducing that the amplitude reduces to traces
- Explain techniques for evaluating them
- Quoting result

# Phase space integral {
data-background-image='images/bg/phase.jpg'
data-background-opacity=0.3
}

## In centre-of-mass frame {
data-background-image='images/bg/phase.jpg'
data-background-opacity=0.3
}

blah blah

## In lab frame {
data-background-image='images/bg/phase.jpg'
data-background-opacity=0.3
}

dooda dooda

# Obtaining the cross section {
data-background-image='images/bg/cross.jpg'
data-background-opacity=0.3
}

## Function of squared momentum transfer {
data-background-image='images/bg/cross.jpg'
data-background-opacity=0.3
}


## Function of angle {
data-background-image='images/bg/cross.jpg'
data-background-opacity=0.3
}

# Results {
data-background-image='images/bg/results.jpg'
data-background-opacity=0.3
}

## QED prediction for $\rm{d}\sigma/\rm{d}\theta$ {
data-background-image='images/bg/results.jpg'
data-background-opacity=0.3
}

## QED prediction for $\rm{d}\sigma/\rm{d}t$ {
data-background-image='images/bg/results.jpg'
data-background-opacity=0.3
}

# Conclusion {
data-background-image='images/bg/conclusion.jpg'
data-background-opacity=0.4
}


# References {
data-background-image='images/bg/refs.jpg'
data-background-opacity=0.3
}





<style>
.reveal {
    font-size: 26px;
}
.reveal h1.title {
    font-size: 2em;
}

p.author {
    display: inline-block;
    margin: 0 0.75em;
}

.reveal section img {
    border: none;
    box-shadow: none;
    padding: 20px;
    border-radius: 10px;
    background: rgb(38 34 64 / 72%);
    backdrop-filter: blur(3px);
}

.column { /* left col */
    padding: 0 2.5% 0 0;
}

.column + .column { /* right col */
    padding: 0 0 0 2.5%;
}

h1 .math, h2 .math, h3 .math {
    text-transform: none !important;
}
</style>

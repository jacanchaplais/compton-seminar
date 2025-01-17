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

<script src='src/jquery.feyn/jquery-3.6.0.min.js'></script>
<script src='src/jquery.feyn/jquery.feyn-1.0.1.min.js'></script>

- Motivation: a revolution in quantum theory?
- Theoretical background
    - Kinematics
    - The invariant amplitude
- Method
  - Evaluating the invariant amplitude
  - The phase space integral
  - Obtaining the differential cross section
- Results and conclusions

::: notes

:::

# Motivation {
data-background-image='images/bg/motivation.jpg'
data-background-opacity=0.3
data-menu-title="motivation"
}

::: notes

:::

## Quantum fields: a new approach {
data-background-image='images/bg/motivation.jpg'
data-background-opacity=0.3
data-menu-title="motivation"
}

:::::::::::::: {.columns}
::: {.column width="47%"}
In 1927, Dirac proposed that quantum interaction between
radiation and matter may be elevated to relativistic
theory by quantizing electromagnetic field [@dirac_1927].

However, in 1930 Oppenheimer discovered perturbative
approaches led to unphysical results beyond first order calculations,
due to self-interaction [@oppenheimer_1930].

![](images/dirac.jpg){ .dp }
![](images/oppenheimer.jpg){ .dp }
:::
::: {.column width="47%"}

In 1947 Bethe suggested a mechanism for handling the infinite terms, called
renormalisation [@bethe_1947]. This sparked renewed interest in quantum fields.

Following this, the theory was developed rapidly, with Feynman's diagrammatic
contribution reducing the technical barrier for performing calculations
[@feynman_1949b].

![](images/be.jpg){ .dp }
![](images/fey.jpg){ .dp }

:::
::::::::::::::

::: notes

:::

## A need for confirmation {
data-background-image='images/bg/motivation.jpg'
data-background-opacity=0.3
data-menu-title="motivation"
}
In this talk we apply the theoretical work that has been done so far.
Using these new calculation techniques, we attempt to recover Compton scattering.

This choice is symbolic of movement from semi-classical particle physics,
to a full acceptance of the quantum theory [@compton_1923].

::: notes

:::
# Theory {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
data-menu-title="theory"
}

::: notes

:::

## Invariant amplitude {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
data-menu-title="theory"
}

The processes which contribute to this interaction
can be written as a scattering amplitude, expressed as the sum
of Feynman diagrams.

<script>
  $(document).ready(function() {
    $('#feyn1').feyn({
        color: 'white',
        selector: true,
        incoming: {i1: '20,180', i2: '180,180'},
        outgoing: {o1: '20,20', o2: '180,20'},
        vertex: {v1: '60,100', v2: '140,100'},
//        fermion: {line: 'i2-v2-v1-o1', color: '#c1fba4'},
//        photon: {line: 'i1-v1,v2-o2', color: '#ffef9f'},
        fermion: {line: 'i2-v2-v1-o1', color: '#fe6d73'},
        photon: {line: 'i1-v1,v2-o2', color: '#ffe66d'},
        symbol: {s1: ['160,95', 300, 'arrow', 60],
                 s2: ['10, 160', 300, 'arrow', 60]},
        label: {
            size: 18,
            t1: ['12, 135', 'k'],
            t2: ['190, 75', 'k\''],
            t3: ['100, 120', 'p&#8202;-&#8202;k\''],
            t4: ['171, 134', 'p'],
            t5: ['28, 75', 'p\''],
            t6: ['15, 15', 'e'],
            t7: ['190, 15', 'γ'],
            t8: ['187, 193', 'e'],
            t9: ['10, 190', 'γ'],
        },
        node: {
            show: true,
            color: '#b5e48c',
            fill: '#b5e48c'
        }
    });

    $('#feyn2').feyn({
        color: 'white',
        selector: true,
        incoming: {i1: '20,180', i2: '180,180'},
        outgoing: {o1: '20,20', o2: '180,20'},
        vertex: {v1: '100,140', v2: '100,60'},
        fermion: {line: 'i2-v1-v2-o2', color: '#fe6d73'},
        photon: {line: 'i1-v1,v2-o1', label: 'k', color: '#ffe66d'},
        symbol: {s1: ['80,70', 210, 'arrow', 60],
                 s2: ['20, 160', 330, 'arrow', 60]},
        label: {
            size: 18,
            t1: ['50, 130', 'k'],
            t2: ['50, 75', 'k\''],
            t3: ['125,100', 'p&#8202;+&#8202;k'],
            t4: ['140, 145', 'p'],
            t5: ['140, 60', 'p\''],
            t6: ['15, 15', 'γ'],
            t7: ['190, 15', 'e'],
            t8: ['190, 190', 'e'],
            t9: ['10, 190', 'γ'],
        },
        node: {
            show: true,
            color: '#b5e48c',
            fill: '#b5e48c'
        }

    });
  });
</script>

<div id='feyn-diag-container'>
$i\mathcal{M} =$
<div class='feyn-diags' id='feyn1'></div>
$+$
<div class='feyn-diags' id='feyn2'></div>
![](images/white-arrow.svg){ #time-arrow }
</div>

By applying the Feynman rules to these diagrams and grouping terms, we obtain
$$
i \mathcal{M}=i {\color{#b5e48c} e^{2}}
{\color{#ffe66d} \epsilon_{\mu \lambda^\prime}^{\ast} \left(k^{\prime}\right)}
{\color{#ffe66d} \epsilon_{\nu \lambda}\left(k\right)}
{\color{#fe6d73} \bar{u}^{s^{\prime}}\left(p^{\prime}\right) }
\left(
{\color{#5adbff} \dfrac{% numerator
{\color{#b5e48c} \gamma^{\mu}}(\not{p}+k+m) {\color{#b5e48c} \gamma^{\nu}}}
{(p+k)^{2}-m^{2}}}% denominator
+ {\color{#5adbff} \dfrac{% numerator
{\color{#b5e48c} \gamma^{\nu}}
\left(\not{p}-k^{\prime}+m\right)
{\color{#b5e48c} \gamma^{\mu}}}
{\left(p-k^{\prime}\right)^{2}-m^{2}}% denominator
}
\right)
{\color{#fe6d73} u^{s}(p)}
$$

::: notes
S = 1 + iT

Expectation value of iT between two arbitrary states is:

i M * (2π)^4 δ^4(Σpf - Σpi) = Σ connected, amput feyn diags with incoming
mmtm pi and outg. mmtm pf

Interpretation of diags:

Left: either pair production, electron escapes, positron annihilates with
incoming electron to produce photon, OR incoming electron emits then absorbs.

Right: electron absorb then emits.


__Feynman rules:__

For fermions w/ mmtm p & spin s

- Intern ferm line=> i / (pslash - m + i ε)
- Incom ferm line w/ mmtm p & spin s => u
- <span class='irelev'>Incom aferm => νbar</span>
- outg ferm => ubar
- <span class='irelev'>outg. aferm => ν</span>
- <span class='irelev'>tr matr prods for ferm loops_</span>
- <span class='irelev'>-ve from fermi stats, ~ (-1)^(num loops)</span>

For photons w/ mmtm p at point μ

- vrtx at μ => -iqγ^μ
- <span class='irelev'>intern photon => D~μν(k) = - i(gμν + (1 - ξ)kμν / k^2) / (k^2 + iε)</span>
  - <span class='irelev'>Feyn guage => ξ = 1</span>
- incom photon => εμλ(p)
- outg photon => ε\*μλ(p)

<style>
.irelev { 
    color: red;
}
</style>
:::

## Invariant amplitude cont'd {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
data-menu-title="theory"
}

This unwieldy expression can be reduced a little by expanding the binomials
in the denominator, and observing for the numerator
$$
\begin{aligned}
(\not{p}+m) \gamma^{\nu} u^{s}(p) &=
\left(2 p^{\nu} - \gamma^{\nu}\not{p} + \gamma^{\nu} m\right) u^{s}(p) \\
&=2 p^{\nu} u^{s}(p)-\gamma^{\nu}\underbrace{(\not{p}-m) u^{s}(p)}_{
\text{Dirac equation} \implies 0
} \\
&=2_{} p^{\nu} u^{s}(p)
\end{aligned}
$$

which yields the invariant amplitude in the simpler form
$$
i \mathcal{M}=
-i e^{2} \epsilon_{\mu \lambda^\prime}^{\ast}
\left(k^{\prime}\right) \epsilon_{\nu\lambda}(k)
\bar{u}^{s^\prime}\left(p^{\prime}\right)
\left(
\frac{\gamma^{\mu} \not{k}\gamma^{\nu}+2 \gamma^{\mu} p^{\nu}}
{2 p \cdot k}
+
\frac{-\gamma^{\nu} \not{k}^{\prime} \gamma^{\mu}+2 \gamma^{\nu} p^{\mu}}
{-2 p \cdot k^{\prime}}\right)
u^{s}(p)\text{.}
$$

::: notes

:::

## Kinematics {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
.allowframebreaks
data-menu-title="theory"
}

We consider two intertial frames to obtain our final result,
so we write
$\mathcal{M}$ in terms of Mandelstam variables.
These are constructed from
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

::: notes

:::

## Centre-of-momentum frame {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
.allowframebreaks
data-menu-title="theory"
}

Inertial frame in which sum of spatial momenta is zero.

![Centre-of-momentum frame diagram](images/com-frame.svg)

::: notes
Scatter appears _elastic_ in this frame, as pcl and photon mmtm conserved.

:::

## Lab frame {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
data-menu-title="theory"
}

Inertial frame in which the electron is at rest. This will also be the assumed
rest frame for our particle detectors, hence _lab_ frame.

![Lab frame diagram](images/lab-frame.svg)

::: notes
Scatter appears _inelastic_, as photon (incident pcl) mmtm changes.

Compton's formula for photon shift calc'd by mass shell condition in this
frame, _ie._

1/ω' - 1/ω = (1 - cosθ) / m
:::

## Differential cross section {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
data-menu-title="theory"
}


Cross section, $\sigma$, used to characterise interaction strength.
Analogous to effective cross sectional area of particle through beam,
while capturing relativistic and quantum dynamics information.

$$
\begin{aligned}
\mathrm{d} \sigma=& \frac{1}{2 E_{\mathcal{A}} 2 E_{\mathcal{B}}\left|v_{\mathcal{A}}-v_{\mathcal{B}}\right|}\left(\prod_{f} \frac{\mathrm{d}^{3} p_{f}}{(2 \pi)^{3}} \frac{1}{2 E_{f}}\right) \\
&\left|\mathcal{M}\left(p_{\mathcal{A}}, p_{\mathcal{B}} \rightarrow\left\{p_{f}\right\}\right)\right|^{2}(2 \pi)^{4} \delta^{(4)}\left(p_{\mathcal{A}}+p_{\mathcal{B}}-\sum p_{f}\right)
\end{aligned}
$$

Constructed from phase space volume, invariant amplitude $\mathcal{M}$, and
momentum conserving Dirac delta terms.

::: notes
Fermi's golden rule relates invariant amplitude with cross section.

More covariant form of denom:

2Ea * 2Eb * |va - vb| = 4√[(pa . pb)^2 - (ma * mb)^2]
:::

## Phase space integral {
data-background-image='images/bg/theory.jpg'
data-background-opacity=0.3
data-menu-title="theory"
}

The phase space volume for a two particle collision may be defined by the
integral,

$$
\int \mathrm{d} \Pi_{2}=\int
\frac{\mathrm{d}^{3} k^{\prime}} {(2 \pi)^{3} 2 E_{k^{\prime}}}
\frac{\mathrm{d}^{3} p^{\prime}}{(2 \pi)^{3} 2 E_{p^{\prime}}}(2 \pi)^{4}
\delta^{(4)}\left(p+k-k^{\prime}-p^{\prime}\right) \text{.}
$$

By making careful substitutions, 
and using fundamental theorem of calculus, can extract derivative
of cross section wrt specific quantities, _eg._
$\mathrm{d}\sigma / \mathrm{d}\cos\theta$.

The phase space of an interaction carries its kinematic information.

::: notes

:::

# Evaluating invariant amplitude {
data-background-image='images/bg/inv_amp.jpg'
data-background-opacity=0.5
data-menu-title="evaluating-invariant-amplitude"
}

::: notes

:::

## Spin averages and polarisation sums {
data-background-image='images/bg/inv_amp.jpg'
data-background-opacity=0.5
data-menu-title="evaluating-invariant-amplitude"
}

In the unpolarised case, we don't know the spins of particles.
The electron orientations are random, so we average
over initial particles, and sum over final particles.

$$
\langle |\mathcal{M}|^2 \rangle = \dfrac{1}{4} \sum_\text{spins} | \mathcal{M} |^2
$$

We apply the replacement
$\sum^2_{\lambda=1} \epsilon^\ast_{\mu\lambda} \epsilon_{\nu\lambda}
\to
- g_{\mu\nu}$, and the property of Dirac spinors,
$\sum_{s=1}^{2} u^{s}(p) \bar{u}^{s}(p) = (\not{p}+m)$,
to our spin averaged invariant amplitude, to obtain

$$
\begin{aligned}
\frac{1}{4} \sum_{\text {spins}}|\mathcal{M}|^{2}=
\dfrac{e^{4}}{4}
\bigg[
&\left(\not{p}^{\prime} + m\right)
\left(
\dfrac{% numerator
\gamma^{\mu} \not{k} \gamma^{\nu}
+ 2 \gamma^{\mu} p^{\nu}}
{2 p \cdot k}% denominator
+ \dfrac{% numerator
\gamma^{\nu} \not{k}^{\prime} \gamma^{\mu}
-2 \gamma^{\nu} p^{\mu}}
{2 p \cdot k^{\prime}}% denominator
\right) \\
& \left(\not{p} + m\right)
\left(
\dfrac{% numerator
\gamma_{\nu} \not{k} \gamma_{\mu}
+ 2 \gamma_{\mu} p_{\nu}}
{2 p \cdot k}% denominator
+ \dfrac{% numerator
\gamma_{\mu} \not{k}^{\prime} \gamma_{\nu}
- 2 \gamma_{\nu} p_{\mu}}
{2 p \cdot k^{\prime}} % denominator
\right)
\bigg]
\end{aligned}
$$


::: notes

:::

## Working out the traces {
data-background-image='images/bg/inv_amp.jpg'
data-background-opacity=0.5
data-menu-title="evaluating-invariant-amplitude"
}

Contracting covariant and contravariant indices yields the spin averaged
invariant amplitude as a sum of four traces.

$$
\frac{1}{4} \sum_{\text {spins}}|\mathcal{M}|^{2}
=
\dfrac{e^4}{4}
\left[
\dfrac
    {\operatorname{Tr} A}
    {\left(2 p \cdot k\right)^2}
+ \dfrac
    {\operatorname{Tr} B}
    {\left(2 p \cdot k\right) \left(2 p \cdot k^{\prime} \right)}
+ \dfrac
    {\operatorname{Tr} C}
    {\left(2 p \cdot k^{\prime} \right)\left(2 p \cdot k\right)}
+ \dfrac
    {\operatorname{Tr} D}
    {\left(2 p \cdot k^{\prime} \right)^2}
\right]
$$

Clifford algebra provides simplifications, _eg._ half the traces
contain odd number of $\gamma^\mu$ matrices, so
are identically zero. The traces are also related, such that
$\operatorname{Tr} B = \operatorname{Tr} C$, and similarly
$\operatorname{Tr} D=\operatorname{Tr} A \; \left(k \leftrightarrow-k^{\prime}\right)$.
Applying this gives

$$
\begin{aligned}
\frac{1}{4} \sum_{\text {spins }}|\mathcal{M}|^{2}=
2 e^{4}
\left[
\frac{m^2 - u}{s - m^2}
+ \frac{s - m^2}{m^2 - u}\right.
+&\left. 2 m^{2}\left(
\frac{2}{s - m^2} - \frac{2}{m^2 - u}
\right) \right. \\
+& \left. m^{4}\left(
\frac{2}{s - m^2} - \frac{2}{m^2 - u}
\right)^{2}
\right] 
\end{aligned}
$$

::: notes

:::

# Phase space integral {
data-background-image='images/bg/phase.jpg'
data-background-opacity=0.3
data-menu-title="phase-space-integral-1"
}

::: notes

:::

## Phase space {
data-background-image='images/bg/phase.jpg'
data-background-opacity=0.3
data-menu-title="phase-space-integral-1"
}

To evaluate the phase space integral introduced earlier
$$
\int \mathrm{d} \Pi_{2}=
\int \frac{\mathrm{d}^3 k^{\prime}}{(2 \pi)^{3} 2 E_{k^{\prime}}}
\frac{\mathrm{d}^3 p^{\prime}}{(2 \pi)^{3} 2 E_{p^{\prime}}}
(2 \pi)^{4} \delta^{(4)}\left(p + k - k^{\prime} - p^{\prime}\right)
$$

The momentum conserving Dirac delta reduces the calculation to a two
dimensional integral, rather than a six dimensional one. We split into
spatial and temporal momentum components
$$
\delta^{(4)}\left(p + k - k^{\prime} - p^{\prime}\right) =
\delta\left(
E_\mathbf{p} + \omega - E_\mathbf{p}^\prime - \omega^\prime
\right)
\delta^{(3)}\left(
| \mathbf{p} | + | \mathbf{k} | - | \mathbf{p}^\prime | - | \mathbf{k}^\prime |
\right)
$$

This may then be evaluated for a specific integration measure,
for instance we can substitute the solid angle
$$
\mathrm{d}^3 p = | \mathbf{p} |^2 \mathrm{d}p \; \mathrm{d}\Omega
$$

::: notes

:::
## In centre-of-momentum frame {
data-background-image='images/bg/phase.jpg'
data-background-opacity=0.3
data-menu-title="phase-space-integral-1"
}

In the centre-of-momentum frame, 4-momenta of incoming and outgoing
particles are
$$
\begin{array}{cccc}
p = (E, -\omega\mathbf{\hat{z}}) &
k = (\omega, \omega \mathbf{\hat{z}}) & 
p^\prime = (E, \mathbf{p}^\prime) &
k^\prime = (\omega, \omega \sin{\theta}, 0, \omega \cos{\theta}) & 
\end{array}
$$
and the phase space integral takes the form
$$
\int \mathrm{d} \Pi_{2} = \frac{1}{16 \pi^{2}} \int \mathrm{d} \Omega
\frac{\omega}{E_{\text{CoM}}}
$$

::: notes

:::

## In lab frame {
data-background-image='images/bg/phase.jpg'
data-background-opacity=0.3
data-menu-title="phase-space-integral-1"
}

Whereas in the lab frame, the 4-momenta are given by
$$
\begin{array}{cccc}
p = (m, 0) &
k = (\omega, \omega\mathbf{\hat{z}}) & 
p^\prime = (E^\prime, \mathbf{p}^\prime) &
k^\prime = (\omega^{\prime}, \omega^{\prime} \sin{\theta}, 0, \omega^{\prime} \cos{\theta}) & 
\end{array}
$$

and the phase space integral is obtained as

$$
\int \mathrm{d} \Pi_{2}
=
\dfrac{1}{16 \pi^2} \int \mathrm{d}\Omega \frac{\omega^{\prime \; 2}}{m \omega}
$$

::: notes

:::

# Obtaining the cross section {
data-background-image='images/bg/cross.jpg'
data-background-opacity=0.3
data-menu-title="obtaining-the-cross-section"
}

::: notes

:::

## Function of squared momentum transfer {
data-background-image='images/bg/cross.jpg'
data-background-opacity=0.3
data-menu-title="obtaining-the-cross-section"
}

We may now bring our equations for the phase space integral and the invariant
amplitude together. Substituting the integration measure, $\mathrm{d} t =
-2\omega^2\mathrm{d}\Omega / 2\pi$ and writing in
Mandelstam variables in the
centre-of-momentum frame, we obtain
$$
\begin{aligned}
\dfrac{\mathrm{d}\sigma\left(s, t\right)}{\mathrm{d}t}
= \dfrac{2\pi\alpha^2}{\left(s - m^2\right)^2}
\left[
\frac{s + t - m^2}{s - m^2}
+ \frac{s - m^2}{s + t - m^2}\right.
+&\left. 2 m^{2}\left(
\frac{2}{s - m^2} - \frac{2}{s + t - m^2}
\right) \right. \\
+& \left. m^{4}\left(
\frac{2}{s - m^2} - \frac{2}{s + t - m^2}
\right)^{2}
\right]
\end{aligned}
$$

Expressing in terms of scattering angle,
$t =
\frac{
-2\left(\frac{s-m^{2}}{2 m}\right)^{2}(1-\cos \theta)
}
{
1+\left(\frac{s-m^{2}}{2 m^{2}}\right)(1-\cos \theta)
}$,
and applying the range of $\cos\theta$ to this equation yields the domain
for $\mathrm{d}\sigma / \mathrm{d}t$
$$-\dfrac{\left(s - m^2\right)^2}{s} \leq t \leq 0$$

::: notes

:::

## Function of angle {
data-background-image='images/bg/cross.jpg'
data-background-opacity=0.3
data-menu-title="obtaining-the-cross-section"
}

We perform the same procedure in the lab frame, using integration
measure $\mathrm{d}\Omega = -2\pi\mathrm{d}(\cos\theta)$, to obtain
the angular dependence.

$$
\begin{aligned}
\dfrac{\mathrm{d}\sigma}{\mathrm{d}\cos\theta} =
\dfrac{1}{4m\omega} \dfrac{1}{8\pi} \dfrac{\omega^{\prime \; 2}}{\omega m}
2 e^{4} \left[
\frac{m^2 - u}{s - m^2}
+ \frac{s - m^2}{m^2 - u}\right.
+&\left. 2 m^{2}\left(
\frac{2}{s - m^2} - \frac{2}{m^2 - u}
\right) \right. \\
+& \left. m^{4}\left(
\frac{2}{s - m^2} - \frac{2}{m^2 - u}
\right)^{2}
\right] 
\end{aligned}
$$

Writing in terms of photon momenta obtains the famous Klein-Nishina formula
[@klein_1929]

$$
\dfrac{\mathrm{d}\sigma}{\mathrm{d}\cos\theta} = \frac{\pi \alpha^{2}}{m^{2}} \left(\frac{\omega^{\prime}}{\omega}\right)^{2}
\left[\frac{\omega^{\prime}}{\omega}+\frac{\omega}{\omega^{\prime}}-\sin ^{2} \theta\right]
$$

::: notes

:::

# Results {
data-background-image='images/bg/results.jpg'
data-background-opacity=0.3
data-menu-title="results"
}

::: notes

:::

## QED prediction for $\rm{d}\sigma/\rm{d}\cos\theta$ {
data-background-image='images/bg/results.jpg'
data-background-opacity=0.3
data-menu-title="results"
}

![Showing transition from wave-like behaviour of electromagnetic radiation
to particle-like as collision energy increased.](images/plots/dcos.svg){ width=65% }

::: notes

:::

## QED prediction for $\rm{d}\sigma/\rm{d}t$ {
data-background-image='images/bg/results.jpg'
data-background-opacity=0.3
data-menu-title="results"
}

![Wave-like behaviour in low energy regime, predicted by
Thomson scattering [@thomson_1906].](images/plots/dt_low.svg){ width=65% }

::: notes

:::

## QED prediction for $\rm{d}\sigma/\rm{d}t$ {
data-background-image='images/bg/results.jpg'
data-background-opacity=0.3
data-menu-title="results"
}

![Scattering behaviour shows influence of photon imparting
impulse to electron.](images/plots/dt_medium.svg){ width=65% }

::: notes

:::

## QED prediction for $\rm{d}\sigma/\rm{d}t$ {
data-background-image='images/bg/results.jpg'
data-background-opacity=0.3
data-menu-title="results"
}

![Scattering behaviour dominated by particle-like collisions
and momentum transfer.](images/plots/dt_high.svg){ width=65% }

::: notes

:::

# Conclusion {
data-background-image='images/bg/conclusion.jpg'
data-background-opacity=0.4
data-menu-title="conclusion"
}

In this work, we have used the new Quantum Electrodynamics to recover
the known scattering relationship between light and electrons, as written
down by Compton.

The processes were interpreted via tree-level Feynman diagrams, at the lowest
order.

Future work may involve higher order calculations, and the inclusion of
loops, to determine if this formulation makes new predictions about
this interaction.

Thank you for your attention, we welcome any questions.


::: notes

:::



# References {
data-background-image='images/bg/refs.jpg'
data-background-opacity=0.3
}


::: notes

:::





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

.reveal div.menubar {
    background: rgb(38 34 64 / 72%);
    border: 0;
}

.menubar li.menu-active a {
    color: white;
}

.column { /* left col */
    padding: 0 2.5% 0 0;
}

.column + .column { /* right col */
    padding: 0 0 0 2.5%;
}

.column .dp {
    display: inline-block;
    padding: 10px;
    width: 40%;
}

#feyn-diag-container .math.inline {
    position: relative;
    bottom: 90px;
}

.feyn-diags {
    display: inline-block;
}

#feyn_v2_v1_line, #feyn_v2_v1_line_arrow,
#feyn2_v1_v2_line, #feyn2_v1_v2_line_arrow  {
    stroke: #5adbff;
    fill:   #5adbff;
}

.node circle {
    display: none;
}

.node circle#feyn_v1_dot, .node circle#feyn_v2_dot,
.node circle#feyn2_v1_dot, .node circle#feyn2_v2_dot {
    display: inline;
}

#feyn2 + p {
    position: relative;
    left: 2em;
    vertical-align: super;
    margin: 0;
    padding: 0;
    display: inline-block;
    background: none;
}

#time-arrow {
    margin: 0;
    padding: 0;
    background: none;
}

h1 .math, h2 .math, h3 .math {
    text-transform: none !important;
}

.references {
    font-size: 0.85em;
}
</style>

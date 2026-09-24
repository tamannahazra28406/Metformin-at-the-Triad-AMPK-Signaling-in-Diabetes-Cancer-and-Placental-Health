# ============================================================
# AMPK Signaling Case Study — Structure 2: mTOR Kinase Complex
# PDB: 4JSP — Human mTORdeltaN-mLST8-ATPgammaS-Mg complex
# Yang et al., "mTOR kinase structure, mechanism and
# regulation." Nature (2013)
# ============================================================
# Why this structure matters for the case study:
# mTORC1 is the growth-signaling complex that AMPK suppresses
# (via TSC2/raptor phosphorylation, not shown directly in this
# structure). This is the catalytic core: mTOR's kinase domain
# bound to its obligate partner mLST8, with an ATP transition-
# state mimic in the active site — useful for pointing out how
# recessed/gated the active site is, which is central to how
# rapamycin and ATP-site inhibitors work.
# ============================================================

fetch 4jsp, async=0
hide everything
bg_color white
show cartoon

color lightorange, chain A     # mTOR kinase domain
color slate, chain B           # mLST8 (WD40 beta-propeller partner)

# ATP transition-state mimic (ATPgammaS) bound in the active site
show sticks, resn AGS
color yellow, resn AGS

# Magnesium ions coordinating the nucleotide
show spheres, resn MG
color green, resn MG
set sphere_scale, 0.4, resn MG

set ray_opaque_background, 1
orient
zoom all, 5

# Uncomment to render a publication-quality image:
# ray 1600, 1200
# png mtor_kinase_complex.png, dpi=300

print "mTOR-mLST8 complex (4JSP) loaded."
print "Chain A = mTOR kinase domain, Chain B = mLST8"
print "ATP-gamma-S marks the active site AMPK signaling ultimately restricts access to."

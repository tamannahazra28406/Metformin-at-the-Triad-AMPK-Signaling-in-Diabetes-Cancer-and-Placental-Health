# ============================================================
# AMPK Signaling Case Study — Structure 4: VEGF bound to its
# receptor Flt-1 (VEGFR1) -- the system sFlt-1 disrupts
# PDB: 1FLT — VEGF in complex with domain 2 of the Flt-1 receptor
# Wiesmann et al., "Crystal structure at 1.7A resolution of
# VEGF in complex with domain 2 of the Flt-1 receptor." Cell (1997)
# ============================================================
# Why this structure matters for the case study:
# sFlt-1 (soluble Flt-1) is a truncated, secreted version of
# this same receptor. It acts as a decoy: it binds VEGF and
# placental growth factor (PlGF) in the maternal bloodstream
# without transmitting any signal, starving the real membrane
# receptor of ligand. This structure shows the actual VEGF /
# Flt-1 binding interface that sFlt-1 hijacks -- useful for
# explaining *why* elevated sFlt-1 causes the anti-angiogenic,
# endothelial-damaging effects seen in preeclampsia.
# ============================================================

fetch 1flt, async=0
hide everything
bg_color white
show cartoon

# VEGF is a disulfide-linked homodimer (chains A/B);
# Flt-1 domain 2 binds at each "pole" (chains C/D)
color firebrick, chain A or chain B     # VEGF homodimer
color deepteal, chain C or chain D      # Flt-1 receptor domain 2

show sticks, resn CYS and (chain A or chain B)
color orange, resn CYS and (chain A or chain B)

set ray_opaque_background, 1
orient
zoom all, 5

# Uncomment to render a publication-quality image:
# ray 1600, 1200
# png vegf_flt1_complex.png, dpi=300

print "VEGF / Flt-1(VEGFR1) domain 2 complex (1FLT) loaded."
print "Red = VEGF homodimer, Teal = Flt-1 receptor domain 2"
print "sFlt-1 in preeclampsia is a soluble fragment that binds VEGF at this same"
print "interface but lacks the transmembrane/kinase domains -- a pure decoy."

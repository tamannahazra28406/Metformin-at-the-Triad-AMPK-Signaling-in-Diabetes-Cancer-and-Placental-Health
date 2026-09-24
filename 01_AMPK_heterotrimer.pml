# ============================================================
# AMPK Signaling Case Study — Structure 1: AMPK Heterotrimer
# PDB: 4RER — Human alpha1/beta2/gamma1 holo-AMPK complex
# Li et al., "Structural basis of AMPK regulation by adenine
# nucleotides and glycogen." Cell Research (2015)
# ============================================================
# Why this structure matters for the case study:
# This is the actual energy-sensing complex that metformin
# activates (indirectly, via a rising AMP:ATP ratio). The
# gamma subunit binds AMP directly (the "sensor"), the alpha
# subunit is the catalytic kinase domain, and the beta subunit
# scaffolds the complex and binds glycogen.
# ============================================================

fetch 4rer, async=0
hide everything
bg_color white
show cartoon

# Colour each subunit distinctly so the three-subunit
# architecture reads clearly in a still image
color skyblue, chain A        # alpha subunit (catalytic/kinase domain)
color salmon, chain B         # beta subunit (scaffold)
color palegreen, chain C      # gamma subunit (AMP-sensing)

# Show the bound ligands as sticks: AMP (the physiological
# activator), staurosporine (occupies the kinase active site
# in this crystal form), and the cyclodextrin glycogen-mimic
show sticks, resn AMP
color yellow, resn AMP
show sticks, resn STU
color magenta, resn STU

set cartoon_transparency, 0.0
set ray_opaque_background, 1
orient
zoom all, 5

# Uncomment to render a publication-quality image:
# ray 1600, 1200
# png ampk_heterotrimer.png, dpi=300

# Console summary
print "AMPK heterotrimer (4RER) loaded."
print "Chain A = alpha (kinase), Chain B = beta (scaffold), Chain C = gamma (AMP sensor)"

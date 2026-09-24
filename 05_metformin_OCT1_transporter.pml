# ============================================================
# AMPK Signaling Case Study — Structure 5: Metformin bound to
# its transporter, human OCT1 (the drug molecule itself, in situ)
# PDB: 8SC4 — Human OCT1 bound to metformin, inward-open state
# ============================================================
# Why this structure matters for the case study:
# Every other structure in this set shows a downstream *target*
# of metformin's effect. This one shows metformin itself (PDB
# ligand code MF8) bound to OCT1 (organic cation transporter 1),
# the transporter responsible for concentrating metformin inside
# hepatocytes in the first place -- a step that has to happen
# before any AMPK activation can occur at all, and a reminder
# that metformin's tissue-specific effects partly trace back to
# which tissues express this transporter.
# ============================================================

fetch 8sc4, async=0
hide everything
bg_color white
show cartoon
color wheat, polymer

# Metformin itself -- shown as large sticks/spheres so the
# small molecule is easy to spot against the transporter fold
show sticks, resn MF8
show spheres, resn MF8
set sphere_scale, 0.25, resn MF8
color purple, resn MF8

set ray_opaque_background, 1
orient resn MF8
zoom resn MF8, 8

# To see the whole transporter fold instead of the zoomed
# binding pocket, comment the two lines above and uncomment:
# orient
# zoom all, 5

# Uncomment to render a publication-quality image:
# ray 1600, 1200
# png metformin_oct1.png, dpi=300

print "Human OCT1 bound to metformin (8SC4) loaded."
print "Purple = metformin (ligand code MF8), sitting inside the transporter's"
print "inward-open translocation pathway. This is the actual drug molecule"
print "discussed throughout the case study, captured mid-transport."

# Dual-indexed library preparation of gDNA for Illumina sequencing

#### Author: James S. Santangelo

v1.0.0 (July 10, 2019)

## Setting up

### Reagents

**Table 1:** Reagents used during library prep, including supplier and catalog numbers. All costs are approximate and don't include lab consumables (e.g., tubes, tips, plates, etc.).

| Reagent | Supplier | Catalog # | Cost (CAD) | Cost/reaction |
|---------|----------|-----------|------------|---------------|
| dNTP | Fisher | Fermentas R1121 | 265 | 0.04 |
| ATP | Fisher | Fermentas R0441 | 52.25 | 0.07 |
| Tango buffer | Fisher | Fermentas BY5 | 14.3 | 0.01 |
| T4 Polynucleotide Kinase | Fisher | EK0032 | 249 | 0.17 |
| T4 DNA polymerase | Fisher | EP0062 | 249 | 0.33 |
| Nuclease free water | Fisher | NA | 33.2 | 0.02 |
| dATP | Fisher | LS10216018 | 61.41  | 0.04 |
| Taq | Fisher | LS18038067 | 276.22 | 0.55 |
| iTrusR2-stubRCp  | IDT | NA | 65.4 | 0.01 |
| iTrusR1-stub | IDT | NA | 35.4 | 0.003 |
| T4 DNA ligase  | Fisher | Fermentas EL0011 | 279.67 | 0.28 |
| Sera-Mag SpeedBeads | Fisher | 09-981-123 | 686 | 0.23 |
| PEG-8000 | VWR | 97061-098 | 64.83  | 0.02 |
| EDTA | VWR | 97062-656 | 61.14  | 0.02 |
| Tris Buffer | VWR | 97062-974 | 70.82 | 0.02 |
| Tween 20 | VWR | 97061-384 | 64.23  | 0.02 |
| NaCl | VWR | CA12001-384 | 56.34  | 0.02 |
| 50 bp DNA ladder | Fisher | FERSM0371 | 63.75 | 0.08 |
| ITru5_Group1_8-Indices | IDT | NA | 198.64 | 0.59 |
| ITru7_Group1_12-Indices | IDT | NA | 255.56 | 0.82 |
| Phusion HiFi polymerase | NEB | M0530S | 116.19 | 0.29 |
| **Total** | NA | NA | NA | **3.63** |

### Lab equipment

1. PCR thermocycler with heated lid
2. Gel rigs
3. 96-well plate magnet (e.g., Dynamag-96 well #12331D)
4. Racks for 0.2 mL PCR tubes or plates
5. PCR plates or tubes
6. 10 and 100 &#956;L multichannel or singlechannel pipettes

### Before starting

This protocol is used for preparing dual-indexed, Illumina-compatible gDNA libraries for whole genome sequencing. It doesn't rely on any commercial kits; rather, the protocol uses home-made master mixes for all reactions to minimize costs. Master mixes were retrieved from published sources and occasionally subject to minor changes (these will be indicated). References will be provided throughout to credit the original publications.

Briefly, this protocol uses an "on-bead" library preparation (Fisher _et al._ 2011) with "home-brewed" master mixes (Kobbs 1997; Meyer and Kircher 2010; Fisher _et al._ 2011) and SPRI beads (Rohland and Reich 2012), and incorporates i5 and i7 Ilummina indices into adapters through PCR (Glenn _et al._ 2016).

This protocol assumes that you have:
1. Hydrated all of index-containing forward and reverse PCR primers (described in supplementary file S6 in Glenn _et al._ 2016). These are diluted to 5 &#956;M.
2. Annealed the adapter stubs to form the Y-yoke adapter (Supplementary S7 in Glenn _et al._ 2016). These are diluted to 5 &#956;M. This is referred to as the _adaptor mix_ throughout the protocol_
3. Prepared the SPRI bead solution, which replaces Ampure XP beads for cleaning enzymatic reations (Rohland and Reich 2010; reproduced in supplementary file S8 in Glenn _et al._ 2016). Be sure to also prepare a PEG solution lacking the actual SPRI beads (file S8 in Glenn _et al._ 2016), which will be used throughout the protocol.
4. Prepared a fresh aliquot of 80% ethanol.

## Protocol

### Step 1: DNA shearing

1. Normalize DNA to 40 ng/&#956;L (quantified on Nanodrop).
    * _Note:_ 20 ng/&#956;L would probably be fine.
2. Shear DNA by sonication to mean fragment size of \~500 bp.
    * _Note:_ We initially sonicated to 300 bp usng a Bioruptor Pico following the manufacturer's protocol. However, this resulted in adaptor contamination in some of the reads, which had to be trimmed. We have not yet figured out the protocol to shear to 500 bp on a Bioruptor Pico since Diagenode doesn't provide this.

### Step 2: End-repair

1. Prepare the end-repair master mix below shown in table 2. Prepare 10 &#956;L &#215; 1.2 &#215; # samples of master mix. Each reaction requires 10 &#956;L.

    **Table 2:** End-repair master mix from Meyer and Kircher (2010). All volumes in &#956;L

    | Reagent      | Units | Initial conc. | Vol. | Final conc. |
    |--------------|-------|---------------|------|-------------|
    | Tango buffer | X     | 10            | 3.5  | 1           |
    | ATP          | mM    | 10            | 3.5  | 1           |
    | dNTP         | mM    | 10            | 0.35 | 0.1         |
    | T4 PNK       | U/uL  | 10            | 1.75 | 0.5         |
    | T4 POL       | U/uL  | 5             | 0.7  | 0.1         |
    | Water        | NA    | NA            | 0.2  | NA          |
    | **Total**    | NA    | NA            | NA   | **10**      |

2. Pipette 10 &#956;L of master mix in to 25 &#956;L of each DNA sample. Pipette mix thoroughly by pipetting up and down 10 to 15 times.
3. Incubate reation in thermocycler using the following conditions (from Fisher _et al._ 2011):
    * 15 mins at 12°C followed by 15 mins at 25°C (30 mins total).

### Step 3: Post end-repair cleanup

1. Add 100 &#956;L of SPRI bead solution to each sample. This is a 2.8X Bead:DNA ratio, which keeps dsDNA fragments but removes leftovers from end-repair master mix. Pipette mix thoroughly.
2. Incubate at room temperature for 5 to 15 minutes.
3. Place samples on magnetic rack and allow the beads to bind to the side of the tube. The supernatant should be clear.
4. Remove and discard the supernatant (the DNA is bound to the beads so won't be lost).
5. Add 80 &#956;L of freshly prepared 80% ethanol. Let sit on magnetic rack for 30 to 60 seconds and discard ethanol.
6. Perform another ethanol wash as in step 5.
7. Remove any residual ethanol with a pipette tip. Let samples sit uncovered at room temperature for 2 to 10 minutes or until all ethanol has evaporated.
    * **Important:** Do not let beads dry out too much as this will reduce yield. Beads should be matte brown (not glossy). Dry beads with begin to crack.
8. Elute DNA in 20 &#956;L TE (or dH<sup>2</sup>0). Pipette mix vigorously to homogenize beads and TE. The DNA will now be in solution.

**Note:** The beads from the above reaction will be kept through all subsequent enzymatic reactions and reused for all SPRI bead cleanups (except PCR). The beads do not interfere with the reactions (Fisher _et al._ 2011).

### Step 4: A-tailing

1. Prepare the A-tailing master mix shown in table 3. Prepare 10 &#956;L &#215; 1.2 &#215; # samples of master mix. Each reaction requires 10 &#956;L.

    **Table 3:** See Kobbs (1997) and [this wiki from the Rausher lab at Duke](https://wiki.duke.edu/display/rausherlab/A-tailing+of+PCR+products)for details on A-tailing. All volumes in &#956;L

    | Reagent    | Units | Initial conc. | Vol.  | Final conc. |
    |------------|-------|---------------|-------|-------------|
    | Taq buffer | X     | 10            | 3     | 1           |
    | dATP       | mM    | 10            | 0.6   | 0.2         |
    | Taq        | U     | 5             | 3     | 0.5         |
    | MgCl2      | mM    | 50            | 1.5   | 2.5         |
    | Water      | NA    | NA            | 1.9   | NA          |
    | **Total**  | NA    | NA            | **10**| NA          |

2. Add 10 &#956;L of master mix to 20 &#956;L each DNA sample.
3. Incubate in thermocycler for 30 minutes at 70°C.

### Step 5: Post A-tailing cleanup

1. Add 66 &#956;L of 20% PEG-8000/2.5 mM NaCl (i.e. SPRI bead solution without the beads) to samples. This is a 2.2X Bead:DNA ratio (Fisher _et al._ 2011).
2. Perform bead cleanup as in step 3, eluting DNA in 20 &#956;L of TE.

### Adapter ligation

1. Prepare the adapter ligation master mix shown in table 4. Prepare 10 &#956;L &#215; 1.2 &#215; # samples of master mix. Each reaction requires 10 &#956;L.

    **Table 4:** Adapter ligation master mix from Meyer and Kircher (2010). All volumes in &#956;L

    | Reagent    | Units | Initial conc. | Vol.  | Final conc. |
    |------------|-------|---------------|-------|-------------|
    | Taq buffer | X     | 10            | 3     | 1           |
    | dATP       | mM    | 10            | 0.6   | 0.2         |
    | Taq        | U     | 5             | 3     | 0.5         |
    | MgCl2      | mM    | 50            | 1.5   | 2.5         |
    | Water      | NA    | NA            | 1.9   | NA          |
    | **Total**  | NA    | NA            | **10**| NA          |

2. Add 5 &#956;L of 5 &#956;M adapter mix (see Before starting above) to each DNA sample.
3. Add 10 &#956;L of master mix to each sample. Pipette mix thoroughly. The total volume should now be 35 &#956;L.
4. Incubate in thermocycler for 30 minutes at 25°C

### Post adapter ligation cleanup

1. Add 31.5 &#956;L of 20% PEG/2.5 mM NaCl (i.e. speedbeads without the beads) to samples. This is a 0.9X bead:DNA ratio. This will get rid of smaller DNA fragments (e.g., < \~250 bp) like adapter dimers that may have formed during the ligation reaction.
2. Perform bead cleanup as in step 3, eluting DNA in 20 &#956;L of TE.
3. After elution, place beads on magnet and transfer supernatant to new tube/plate. The DNA is in the supernatant. This will be used for indexing PCR.

### Indexing PCR

1. Prepare the PCR master mix shown in table 5. Prepare 12.5 &#956;L &#215; 1.2 &#215; # samples (plus controls)of master mix. Each reaction requires 10 &#956;L.

    **Table 4:** (PCR master mix)[https://international.neb.com/Protocols/0001/01/01/pcr-protocol-m0530]. All volumes in &#956;L

    | Reagent            | Units | Initial conc.| Vol.     | Final conc. |
    |--------------------|-------|--------------|----------|-------------|
    | Phusion buffer     | X     | 5            | 5        | 1           |
    | dNTP               | mM    | 10           | 0.5      | 0.2         |
    | Phusion polymerase | U/uL  | 2            | 0.25     | 0.02        |
    | Water              | NA    | NA           | 6.75     | NA          |
    | **Total**          | NA    | NA           | **12.5** | NA          |

2. Add 12.5 &#956;L of master mix to empty PCR tubes/plates corresponding to the number of samples to be amplified and indexed.
3. Add 10 &#956;L of DNA sample to each well containing PCR master mix.
4. Add 1.25 &#956;L of forward primer and 1.25 &#956;L of reverse primer to each sample.
    * _Note:_ Each sample should receive a unique combination of forward and reverse primers since these will incorporate the indices into the libraries. 8 forward + 12 reverse primers can uniquely tag 96 individuals.
5. Perform PCR using the following conditions.
    * 98 &#176;C for 30 seconds
    * 8 to 14 cycles of:
        * 98 &#176;C for 30 seconds
        * 65 &#176;C for 30 seconds
        * 72 &#176;C for 60 seconds
    * 72 &#176;C for 1 minute

### Post-PCR cleanup

1. Add 25 &#956;L of 20% PEG/2.5 mM NaCl (i.e. speedbeads without the beads) to samples. This is a 1X bead:DNA ratio which should primer dimers and other small fragments remaining from PCR.
2. QC library by visualizing on a gel using the 50 bp Fermentas ladder or by passing through an Agilent Bioanalyzer with a DNA 1000 high sensitivity chip.

**Note:** Samples can now be quantified via Nanodrop or (preferably) Qubit/Picogreen. If pooling for sequencing or capture, normalize DNA concentrations to 20 ng/&#956;L and create pools.

## Testing the libraries

We tested the protocl above by shotgun sequencing two white clover (_Trifolium repens_) genomes to 35X coverage on a lane of HiSeq 4000. [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) reports for both sequencing libraries are available [HERE](./fastqc_reports/). While the reports show some warnings, these can be larger explained by the adapter trimming performed using [bbduk](https://jgi.doe.gov/data-and-tools/bbtools/bb-tools-user-guide/bbduk-guide/). The adapter contamination occured because we sheared DNA to a mean size of 300 bp, resulting adapter read-though of some smaller fragments during sequencing. We now recommend shaering to 500bp to minimize this. Nonetheless, few reads were lost and all remaining reads were high quality.








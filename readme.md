# Brainstorming

Clemens suggestions:

- One dataset for all questions
- Dataset with discrete features, spatial information for each feature, multiple variables for each feature
- Ideal dataset: Varna, but that's not published yet. So maybe `Michelsberg` in the `archdata` R package by Höhn (2002)? Or `matuskovo` in the `quantAAR` R package by Tocik (1979) if we add spatial information (would that be possible, Martin?)?
- A possible sequence of tasks for `Michelsberg`:

  1. Counts and lists of unique values for `site_name` & `mbk_phases`
  2. Column sums for material variables (`to3`, `f4`, ..., `t1a`) 
  3. Grouped counts of material by `site_name` & `mbk_phases` and further pivot tables
  4. Visualisation of grouped counts in plot matrizes. For `mbk_phases` these can be constructed as time series plots
  5. Spatial map of sites with mapping of counts computed in *iii.*
  6. Correspondence Analysis (CA) of material variables
  7. 2D and 3D Visualisation of CA results with mapping of `site_name` & `mbk_phases`
  8. Mapping of CA axis rank on spatial map
  9. **Bonus** Chi-square distance between all material variables and network visualisation and analysis

- All results must be presented in one html report with all code and plots. This can be rendered from IPython Notebook, Rmarkdown, Latex, etc. or compiled manually

# Abstract

Workshop organisation:
- Schmid, Clemens (Kiel University)
- Hinz, Martin (Bern University)
- Tietze, Carolin (Kiel University)

Keywords:
- Hackathon
- Scripting Languages
- Competition
- Programming

***

## Short Abstract (240 words)

## CAA Scripting Languages Hackathon I - Can you code this?

In general, scientific scripting languages are the best interface for archaeologists to translate research questions into a machine-readable and executable form for quantitative analysis. But, programming requires practice! Therefore, this workshop will be a small archaeological hackathon for both experienced and very new users of languages like R, Python, SQL or JavaScript. 

The registered participants are divided into small groups of people who are interested in the same programming language. These groups are equipped with a simple archaeological data set and a catalogue of analytical questions. In order to be successful in the competition the groups must find good answers using the framework of their choice and elaborate them. A jury selects the winner according to the criteria: correctness, reproducibility, readability, shortness and computation speed. 

The competition data set will contain information on different data scales as well as spatial information - a typical archaeological compilation that does not require any prior knowledge for a general understanding. The questions range from simple counting and sorting operations to standard pivot tables and descriptive statistics to demanding tasks such as the application of multivariate analyses or spatial queries.

This workshop will last 3.5 hours, with the actual group work phase lasting 3 hours. The winner of the competition will be announced and honoured at the CAA General Assembly and the crafted scripts will be distributed online.  

The workshop is organized by the ISAAKiel group (Initiative for Statistical Analysis in Archaeology Kiel: https://isaakiel.github.io/).

***

## Long Abstract (510 words)

### CAA Scripting Languages Hackathon I - Can you code this?

In general, scientific scripting languages are the best interface for archaeologists to translate research questions into a machine-readable and executable form for quantitative analysis. For every step of data processing - data acquisition, analysis and presentation - there are high-quality software frameworks that enable fast, elegant, human-readable and reproducible coding. And yet, script languages are still not widely used! One of the main reason for this is the often steep learning curve. An important goal of the proposed Special Interest Group on Scientific Scripting Languages in Archaeology (SIG SSLA) is to provide guidance on how to overcome this obstacle.

In our experience practice is the only way to learn to programme effectively. Therefore, this workshop will be a small archaeological hackathon for experienced and very new users of scripting languages like R, Python, SQL or JavaScript. The registered participants are divided into small groups of three to four people, who are interested in the same programming language but have different knowledge and skill level. These groups are equipped with both a simple archaeological data set and a catalogue of analytical questions. In order to be successful in the competition the groups must find good answers to the questions asked using the scripting language of their choice and elaborate them. A jury selects the winner according to the criteria: correctness, reproducibility, readability, shortness and computation speed.

The competition data set will contain information on different data scales as well as spatial information - a typical archaeological compilation that does not require any special or prior knowledge for a general understanding. The questions range from simple counting and sorting operations to standard pivot tables and descriptive statistics to demanding tasks such as the application of multivariate analyses or spatial queries. They are designed to reflect the typical requirements of everyday research. Additionally, an important recurring and intermediate task will be data visualisation using graphs and maps. Neither the data set nor the questions are provided in advance to ensure spontaneous and creative work on the spot.

The hackathon has a twofold aim of being fun and encouraging as well as challenging and instructive. These are the core values of the proposed SIG SSLA. New users learn strategies and concrete methods to tackle the common problems of computational data analysis in archaeology using the powerful toolset the different scripting languages provide. More experienced users are challenged to write good and clean code in a short time and share their knowledge with newcomers. The group formation process is inspired by the concept of an unconference and is intended to disrupt established hierarchies and exclusive interaction patterns of academic research that continue in small areas such as archaeology.

This workshop will last 3.5 hours, with the actual group work phase lasting 3 hours. The winner of the competition will be announced and honoured at the CAA General Assembly in the context of the official proposal for the SIG SSLA. The scripts produced during the competition will then be distributed online.  

The workshop is organized by the ISAAKiel group (Initiative for Statistical Analysis in Archaeology Kiel: https://isaakiel.github.io/).


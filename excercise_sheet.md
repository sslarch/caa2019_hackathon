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

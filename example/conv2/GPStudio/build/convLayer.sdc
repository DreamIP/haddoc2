# ----------------------------------------------------------------------------
# Create Generated Clock
# ----------------------------------------------------------------------------

derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty

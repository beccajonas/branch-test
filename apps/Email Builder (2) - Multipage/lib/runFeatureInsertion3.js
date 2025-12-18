async function runFeatureInsertionProcess3() {
  try {
    // Step 1: Process feature image
    if (featureSelect3.value!=trustpilot_review.value) {
    await getFTImageInfo3.trigger();
    }

    // Step 2: Process logo lockup image (if applicable)
    if (logoSwitch3.value) {
      await getLogoLockupImageInfo3.trigger();
    }

    // Step 3: Insert feature component
    await insertFeature3.trigger();

    // Step 4: Insert logo lockup (if applicable)
    if (logoSwitch3.value && (featureSelect3.value === feature_image_left.value || featureSelect3.value === feature_image_right.value)) {
      await insertLogoLockup3.trigger();

      // Step 5: Update logo lockup image
      await updateLogoLockupImage3.trigger();
    }

    // Step 6: Populate feature content
    await populateFeature3.trigger();

    // Step 7: Update feature image
    if (featureSelect3.value!=trustpilot_review.value) {
    await updateFeatureImage3.trigger();
            }

    return "Feature insertion process 3 completed successfully";
  } catch (error) {
    throw error;
  }
}

// Run the process
return runFeatureInsertionProcess3();

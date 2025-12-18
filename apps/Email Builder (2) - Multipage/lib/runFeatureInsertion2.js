async function runFeatureInsertionProcess2() {
  try {
    // Step 1: Process feature image
     if (featureSelect2.value!=trustpilot_review.value) {
    await getFTImageInfo2.trigger();
     }

    // Step 2: Process logo lockup image (if applicable)
    if (logoSwitch2.value) {
      await getLogoLockupImageInfo2.trigger();
    }

    // Step 3: Insert feature component
    await insertFeature2.trigger();

    // Step 4: Insert logo lockup (if applicable)
    if (logoSwitch2.value && (featureSelect2.value === feature_image_left.value || featureSelect2.value === feature_image_right.value)) {
      await insertLogoLockup2.trigger();

      // Step 5: Update logo lockup image
      await updateLogoLockupImage2.trigger();
    }

    // Step 6: Populate feature content
    await populateFeature2.trigger();

    // Step 7: Update feature image
        if (featureSelect2.value!=trustpilot_review.value) {
    await updateFeatureImage2.trigger();
        }

    return "Feature insertion process 2 completed successfully";
  } catch (error) {
    throw error;
  }
}

// Run the process
return runFeatureInsertionProcess2();

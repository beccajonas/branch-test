async function runFeatureInsertionProcess() {
  try {
    // Step 1: Process feature image
    if (featureSelect1.value!=trustpilot_review.value) {
    await getFTImageInfoNew.trigger();
    }

    // Step 2: Process logo lockup image (if applicable)
    if (logoSwitch1.value) {
      await getLogoLockupImageInfo.trigger();
    }

    // Step 3: Insert feature component
    await insertFeatureNew.trigger();

    // Step 4: Insert logo lockup (if applicable)
    if (logoSwitch1.value && (featureSelect1.value === feature_image_left.value || featureSelect1.value === feature_image_right.value)) {
      await insertLogoLockup.trigger();

      // Step 5: Update logo lockup image
      await updateLogoLockupImage.trigger();
    }

    // Step 6: Populate feature content
    await populateFeatureNew.trigger();

    // Step 7: Update feature image
    if (featureSelect1.value!=trustpilot_review.value) {
    await updateFeatureImageNew.trigger();
    }
      
    return "Feature insertion process completed successfully";
  } catch (error) {
    throw error;
  }
}

// Run the process
return runFeatureInsertionProcess();

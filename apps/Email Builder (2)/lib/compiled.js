async function runQueries() {
  try {
    await replaceHero.trigger();

    if (!heroDualSwitch.value) {
    await getImageInfo.trigger();
    await updateHeroImage.trigger();
    }

    if (heroSelect.value === hero_dual_was_now.value) {
      await updateAdditionalImages.trigger();
      await extractPrices.trigger();
      await preprocessHtmlContent.trigger();
      await replaceTopperWithText.trigger();
    } else if (heroSelect.value === hero_image.value || heroReskinMenu.value == heroSpotlight.value) {
      await newImageHeroQuery.trigger(); // Your new query
    }

    await updateHeroTopperColour.trigger();
    await populateCopy.trigger();
    await populateLegal.trigger();
    await removeUnusedBooklines.trigger();
    await updateBooklineSelect.trigger();

    if (heroSelect.value === hero_default.value) {
      await adjustHeroDefaultTemplate.trigger();
      await removeSubcopySection.trigger();
      await removeTopper.trigger();
    }

    if (contentDiscoverySwitch.value || vipSaleSwitch.value ) {
      await insertAdditionalContent.trigger();
      await updateSpecificImage.trigger();
      await populateAdditionalContent.trigger();
    }

    if (deviceSwitch.value) {
      await insertDirectDevice.trigger();
      await populateDirectDevice.trigger();
      await getDirectDeviceImageInfo.trigger();
      await updateDirectDeviceImages.trigger();
    }

    if (heroSelect.value === "None") {
   await removeTopper.trigger();
    }

    //  console.log("All queries completed successfully");
  } catch (error) {
    console.error("An error occurred:", error);
  }
}

// Run the async function
runQueries();

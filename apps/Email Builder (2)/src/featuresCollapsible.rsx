<Container
  id="featuresCollapsible"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="true"
  padding="12px"
  showHeader={true}
  showInEditor={true}
>
  <Header>
    <Text
      id="collapsibleTitle3"
      value="##### Features"
      verticalAlign="center"
    />
    <Select
      id="featureCount"
      emptyMessage="No options"
      itemMode="static"
      label=""
      labelPosition="top"
      labelWrap={true}
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="0"
    >
      <Option id="39ada" disabled={false} hidden={false} value="0" />
      <Option id="91d1d" value="1" />
      <Option id="3eb2f" value="2" />
      <Option id="00cd8" disabled={false} hidden={false} value="3" />
      <Event
        enabled="{{ featureCount.value > 0 }}"
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: true }] }}
        pluginId="featuresCollapsible"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Icon
      id="addFeature"
      hidden="{{featureCount.value > 2}}"
      horizontalAlign="right"
      icon="line/interface-add-square"
      margin="4px 4px"
      style={{ ordered: [] }}
    >
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "if (featureCount.value < 3) {  featureCount.setValue(featureCount.value + 1);\n}",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ featureCount <= 1 }} && {{ featuresCollapsible.setShowBody == false }}"
        event="click"
        method="run"
        params={{ ordered: [{ src: "featuresCollapsible.setShowBody(true)" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Icon>
    <Icon
      id="removeFeature"
      hidden="{{featureCount.value < 1}}"
      horizontalAlign="right"
      icon="line/interface-remove-square"
      margin="4px 4px"
      showInEditor={true}
    >
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "if (featureCount.value > 0) {\n  featureCount.setValue(featureCount.value - 1);\n}",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ featureCount.value > 0 && featureCount.value < 2 }}"
        event="click"
        method="setShowBody"
        params={{ ordered: [{ showBody: "false" }] }}
        pluginId="featuresCollapsible"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Icon>
  </Header>
  <View id="edacc" viewKey="View 1">
    <Form
      id="featureGroup1"
      footerPadding="4px 12px"
      headerPadding="0"
      hidden="{{featureCount.value < 1}}"
      margin="0px"
      padding="0px"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [] }}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="##### Feature 1"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <NumberInput
          id="startRow1"
          currency="USD"
          inputValue={0}
          label="Starting Row ⓘ"
          labelPosition="top"
          labelWrap={true}
          min="1"
          placeholder="Enter value"
          showClear={true}
          showSeparators={true}
          showStepper={true}
          tooltipText="The black row above your feature."
          value="1"
        />
        <Select
          id="booklineSelect1"
          data="{{ booklineDropdownOptions.value }}"
          emptyMessage="No options"
          label="Location"
          labelPosition="top"
          labels="{{ item.label }}"
          labelWrap={true}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value=""
          values="{{ item.value }}"
        />
        <Select
          id="dcrSelect1"
          data="{{ dcrMenuValues.value }}"
          emptyMessage="No options"
          label="DCR"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="None"
          values="{{ item.value }}"
        />
        <Select
          id="featureSelect1"
          emptyMessage="No options"
          itemMode="static"
          label="Legacy Feature Component"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="None"
        >
          <Option
            id="f8453"
            label="Feature Image Left"
            value="{{ feature_image_left.value }}"
          />
          <Option
            id="e8b2e"
            label="Feature Image Right"
            value="{{ feature_image_right.value }}"
          />
          <Option
            id="b7721"
            label="Blog Feature Horizontal"
            value="{{ blog_feature_horizontal.value }}"
          />
          <Option
            id="5978a"
            label="Trustpilot Review"
            value="{{ trustpilot_review.value }}"
          />
          <Option id="89dc8" disabled={false} hidden={false} value="None" />
          <Event
            enabled={
              '{{ featureReskinSelect1.value != "None" && featureSelect1.value != "None" }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "None" }] }}
            pluginId="featureReskinSelect1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={'{{ featureSelect1.value == "None" }}'}
            event="change"
            method="setValue"
            params={{
              ordered: [{ value: "{{ featureGenericImgLeft.value }}" }],
            }}
            pluginId="featureReskinSelect1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="featureReskinSelect1"
          data="{{ featureOptions.value }}"
          emptyMessage="No options"
          label="Rebrand Feature Component"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ featureGenericImgLeft.value }}"
          values="{{ item.value }}"
        >
          <Event
            enabled={
              '{{ featureReskinSelect1.value != "None" && featureSelect1.value != "None" }}'
            }
            event="change"
            method="resetValue"
            params={{ ordered: [] }}
            pluginId="featureSelect1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={'{{ featureReskinSelect1.value == "None" }}'}
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "{{ feature_image_left.value }}" }] }}
            pluginId="featureSelect1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ featureReskinSelect1.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#EEB711" }] }}
            pluginId="featureTopperColourSelect1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ featureReskinSelect1.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#0A59C6" }] }}
            pluginId="featureBackgroundColourSelect1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ !featureReskinSelect1.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#F2CBCC" }] }}
            pluginId="featureBackgroundColourSelect1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ !featureReskinSelect1.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#BF0000" }] }}
            pluginId="featureTopperColourSelect1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="featureTopperColourSelect1"
          colorByIndex="{{ item.value }}"
          data="{{ colourOptions.value }}"
          emptyMessage="No options"
          label="Topper 
Colour Selector"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ colourOptions.value[0].value }}"
          values="{{ item.value }}"
        />
        <Checkbox
          id="noTopperCheckbox1"
          hidden="true"
          label="No Topper"
          labelWidth="100"
          showInEditor={true}
        />
        <Select
          id="featureBackgroundColourSelect1"
          colorByIndex="{{ item.value }}"
          data="{{ featureBackgroundColourOptions.value }}"
          emptyMessage="No options"
          label="Background Colour Selector"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ featureBackgroundColourOptions.value[1].value }}"
          values="{{ item.value }}"
        />
        <FileDropzone
          id="featureImage1"
          _isUpgraded={true}
          appendNewSelection={true}
          hidden="{{ featureSelect1.value == trustpilot_review.value }}"
          iconBefore="bold/programming-browser-search"
          label="Feature Image"
          labelPosition="top"
          labelWrap={true}
          placeholder="Select or drag and drop"
          required="{{ featureSelect1.value != trustpilot_review.value }}"
          selectionType="multiple"
        />
        <Switch
          id="logoSwitch1"
          hidden="{{ featureSelect1.value == trustpilot_review.value }}"
          label="Logo Lockup"
          value="false"
        />
        <FileDropzone
          id="logoLockupImage1"
          _isUpgraded={true}
          appendNewSelection={true}
          hidden="{{ logoSwitch1.value == false }}"
          iconBefore="bold/programming-browser-search"
          label="Lockup Image"
          labelPosition="top"
          labelWrap={true}
          placeholder="Select or drag and drop"
          selectionType="multiple"
        />
      </Body>
      <Footer>
        <Button
          id="formButton4"
          submit={true}
          submitTargetId="featureGroup1"
          text="Insert"
        />
        <Button id="ftUndo1" text="Remove">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="undoFeature1"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="runFeatureInsertion"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Spacer id="spacer4" hidden="{{featureCount.value < 2}}" />
    <Form
      id="featureGroup2"
      footerPadding="4px 12px"
      headerPadding="0"
      hidden="{{featureCount.value < 2}}"
      margin="0px"
      padding="0px"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [] }}
    >
      <Header>
        <Text
          id="containerTitle6"
          value="##### Feature 2"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <NumberInput
          id="startRow2"
          currency="USD"
          inputValue={0}
          label="Starting Row ⓘ"
          labelPosition="top"
          labelWrap={true}
          min="1"
          placeholder="Enter value"
          showClear={true}
          showSeparators={true}
          showStepper={true}
          tooltipText="The black row above your feature."
          value="1"
        />
        <Select
          id="booklineSelect2"
          data="{{ booklineDropdownOptions.value }}"
          emptyMessage="No options"
          label="Location"
          labelPosition="top"
          labels="{{ item.label }}"
          labelWrap={true}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value=""
          values="{{ item.value }}"
        />
        <Select
          id="dcrSelect2"
          data="{{ dcrMenuValues.value }}"
          emptyMessage="No options"
          label="DCR"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="None"
          values="{{ item.value }}"
        />
        <Select
          id="featureSelect2"
          emptyMessage="No options"
          itemMode="static"
          label="Legacy Feature Component"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="None"
        >
          <Option
            id="f8453"
            label="Feature Image Left"
            value="{{ feature_image_left.value }}"
          />
          <Option
            id="e8b2e"
            label="Feature Image Right"
            value="{{ feature_image_right.value }}"
          />
          <Option
            id="5978a"
            label="Blog Feature Horizontal"
            value="{{ blog_feature_horizontal.value }}"
          />
          <Option
            id="6b517"
            disabled={false}
            hidden={false}
            label="Trustpilot Review"
            value="{{ trustpilot_review.value }}"
          />
          <Option id="1630f" disabled={false} hidden={false} value="None" />
          <Event
            enabled={
              '{{ featureReskinSelect2.value != "None" && featureSelect2.value != "None" }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "None" }] }}
            pluginId="featureReskinSelect2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={'{{ featureSelect2.value == "None" }}'}
            event="change"
            method="setValue"
            params={{
              ordered: [{ value: "{{ featureGenericImgLeft.value }}" }],
            }}
            pluginId="featureReskinSelect2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="featureReskinSelect2"
          data="{{ featureOptions.value }}"
          emptyMessage="No options"
          label="Rebrand Feature Component"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ featureGenericImgLeft.value }}"
          values="{{ item.value }}"
        >
          <Event
            enabled={
              '{{ featureReskinSelect2.value != "None" && featureSelect2.value != "None" }}'
            }
            event="change"
            method="resetValue"
            params={{ ordered: [] }}
            pluginId="featureSelect2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={'{{ featureReskinSelect2.value == "None" }}'}
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "{{ feature_image_left.value }}" }] }}
            pluginId="featureSelect2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ featureReskinSelect2.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#EEB711" }] }}
            pluginId="featureTopperColourSelect2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ !featureReskinSelect2.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#BF0000" }] }}
            pluginId="featureTopperColourSelect2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ featureReskinSelect2.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#0A59C6" }] }}
            pluginId="featureBackgroundColourSelect2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ !featureReskinSelect2.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#F2CBCC" }] }}
            pluginId="featureBackgroundColourSelect2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="featureTopperColourSelect2"
          colorByIndex="{{ item.value }}"
          data="{{ colourOptions.value }}"
          emptyMessage="No options"
          label="Topper 
Colour Selector"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ colourOptions.value[0].value }}"
          values="{{ item.value }}"
        />
        <Checkbox
          id="noTopperCheckbox2"
          hidden="true"
          label="No Topper"
          labelWidth="100"
          showInEditor={true}
        />
        <Select
          id="featureBackgroundColourSelect2"
          colorByIndex="{{ item.value }}"
          data="{{ featureBackgroundColourOptions.value }}"
          emptyMessage="No options"
          label="Background Colour Selector"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ featureBackgroundColourOptions.value[1].value }}"
          values="{{ item.value }}"
        />
        <FileDropzone
          id="featureImage2"
          _isUpgraded={true}
          appendNewSelection={true}
          hidden="{{ featureSelect2.value == trustpilot_review.value }}"
          iconBefore="bold/programming-browser-search"
          label="Feature Image"
          labelPosition="top"
          labelWrap={true}
          placeholder="Select or drag and drop"
          required="{{ featureSelect2.value != trustpilot_review.value }}"
          selectionType="multiple"
        />
        <Switch
          id="logoSwitch2"
          hidden="{{ featureSelect2.value == trustpilot_review.value }}"
          label="Logo Lockup"
          value="false"
        />
        <FileDropzone
          id="logoLockupImage2"
          _isUpgraded={true}
          appendNewSelection={true}
          hidden="{{ logoSwitch2.value == false }}"
          iconBefore="bold/programming-browser-search"
          label="Lockup Image"
          labelPosition="top"
          labelWrap={true}
          placeholder="Select or drag and drop"
          selectionType="multiple"
        />
      </Body>
      <Footer>
        <Button
          id="formButton5"
          submit={true}
          submitTargetId="featureGroup2"
          text="Insert"
        />
        <Button id="ftUndo2" text="Remove">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="undoFeature2"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="runFeatureInsertion2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Spacer id="spacer2" hidden="{{featureCount.value < 3}}" />
    <Form
      id="featureGroup3"
      footerPadding="4px 12px"
      headerPadding="0"
      hidden="{{featureCount.value < 3}}"
      margin="0px"
      padding="0px"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [] }}
    >
      <Header>
        <Text
          id="featureLabel3"
          value="##### Feature 3"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <NumberInput
          id="startRow3"
          currency="USD"
          inputValue={0}
          label="Starting Row ⓘ"
          labelPosition="top"
          labelWrap={true}
          min="1"
          placeholder="Enter value"
          showClear={true}
          showSeparators={true}
          showStepper={true}
          tooltipText="The black row above your feature."
          value="1"
        />
        <Select
          id="booklineSelect3"
          data="{{ booklineDropdownOptions.value }}"
          emptyMessage="No options"
          label="Location"
          labelPosition="top"
          labels="{{ item.label }}"
          labelWrap={true}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value=""
          values="{{ item.value }}"
        />
        <Select
          id="dcrSelect3"
          data="{{ dcrMenuValues.value }}"
          emptyMessage="No options"
          label="DCR"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="None"
          values="{{ item.value }}"
        />
        <Select
          id="featureSelect3"
          emptyMessage="No options"
          itemMode="static"
          label="Legacy Feature Component"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="None"
        >
          <Option
            id="f8453"
            label="Feature Image Left"
            value="{{ feature_image_left.value }}"
          />
          <Option
            id="e8b2e"
            label="Feature Image Right"
            value="{{ feature_image_right.value }}"
          />
          <Option
            id="5978a"
            label="Blog Feature Horizontal"
            value="{{ blog_feature_horizontal.value }}"
          />
          <Option
            id="b375d"
            disabled={false}
            hidden={false}
            label="Trustpilot Review"
            value="{{ trustpilot_review.value }}"
          />
          <Option id="211ff" disabled={false} hidden={false} value="None" />
          <Event
            enabled={
              '{{ featureReskinSelect3.value != "None" && featureSelect3.value != "None" }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "None" }] }}
            pluginId="featureReskinSelect3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={'{{ featureSelect3.value == "None" }}'}
            event="change"
            method="setValue"
            params={{
              ordered: [{ value: "{{ featureGenericImgLeft.value }}" }],
            }}
            pluginId="featureReskinSelect3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="featureReskinSelect3"
          data="{{ featureOptions.value }}"
          emptyMessage="No options"
          label="Rebrand Feature Component"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ featureGenericImgLeft.value }}"
          values="{{ item.value }}"
        >
          <Event
            enabled={
              '{{ featureReskinSelect3.value != "None" && featureSelect3.value != "None" }}'
            }
            event="change"
            method="resetValue"
            params={{ ordered: [] }}
            pluginId="featureSelect3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={'{{ featureReskinSelect3.value == "None" }}'}
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "{{ feature_image_left.value }}" }] }}
            pluginId="featureSelect3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ featureReskinSelect3.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#EEB711" }] }}
            pluginId="featureTopperColourSelect3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ !featureReskinSelect3.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#BF0000" }] }}
            pluginId="featureTopperColourSelect3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ featureReskinSelect3.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#0A59C6" }] }}
            pluginId="featureBackgroundColourSelect3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ !featureReskinSelect3.selectedLabel.startsWith("Feature_KoboPlus") }}'
            }
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "#F2CBCC" }] }}
            pluginId="featureBackgroundColourSelect3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="featureTopperColourSelect3"
          colorByIndex="{{ item.value }}"
          data="{{ colourOptions.value }}"
          emptyMessage="No options"
          label="Topper 
Colour Selector"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ colourOptions.value[0].value }}"
          values="{{ item.value }}"
        />
        <Checkbox
          id="noTopperCheckbox3"
          hidden="true"
          label="No Topper"
          labelWidth="100"
          showInEditor={true}
        />
        <Select
          id="featureBackgroundColourSelect3"
          colorByIndex="{{ item.value }}"
          data="{{ featureBackgroundColourOptions.value }}"
          emptyMessage="No options"
          label="Background Colour Selector"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{ featureBackgroundColourOptions.value[1].value }}"
          values="{{ item.value }}"
        />
        <FileDropzone
          id="featureImage3"
          _isUpgraded={true}
          appendNewSelection={true}
          hidden="{{ featureSelect3.value == trustpilot_review.value }}"
          iconBefore="bold/programming-browser-search"
          label="Feature Image"
          labelPosition="top"
          labelWrap={true}
          placeholder="Select or drag and drop"
          required="{{ featureSelect3.value != trustpilot_review.value }}"
          selectionType="multiple"
        />
        <Switch
          id="logoSwitch3"
          hidden="{{ featureSelect3.value == trustpilot_review.value }}"
          label="Logo Lockup"
          value="false"
        />
        <FileDropzone
          id="logoLockupImage3"
          _isUpgraded={true}
          appendNewSelection={true}
          hidden="{{ logoSwitch3.value == false }}"
          iconBefore="bold/programming-browser-search"
          label="Lockup Image"
          labelPosition="top"
          labelWrap={true}
          placeholder="Select or drag and drop"
          selectionType="multiple"
        />
      </Body>
      <Footer>
        <Button
          id="formButton6"
          submit={true}
          submitTargetId="featureGroup3"
          text="Insert"
        />
        <Button id="ftUndo3" text="Remove">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="undoFeature3"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="runFeatureInsertion3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
</Container>

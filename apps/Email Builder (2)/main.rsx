<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ map: { size: "12px" } }}
    h1Font={{ map: { size: "36px" } }}
    h2Font={{ map: { size: "28px" } }}
    h3Font={{ map: { size: "24px" } }}
    h4Font={{ map: { size: "18px" } }}
    h5Font={{ map: { size: "16px" } }}
    h6Font={{ map: { size: "14px" } }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#bf0000"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/confirmModal.rsx" />
  <Include src="./src/drawerFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="mainContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text id="containerTitle5" value="#### Main" verticalAlign="center" />
      </Header>
      <View id="60d33" viewKey="View 1">
        <TextInput
          id="sheetsURL"
          label="Sheets URL ⓘ"
          labelPosition="top"
          placeholder="Enter value"
          tooltipText="Paste your Google Sheets URL and hit 'Enter'"
          value="  "
        >
          <Event
            enabled={'{{ sheetsURL.value.startsWith("http") }}'}
            event="submit"
            method="trigger"
            params={{
              ordered: [
                {
                  options: {
                    object: {
                      onSuccess: null,
                      onFailure: null,
                      additionalScope: null,
                    },
                  },
                },
              ],
            }}
            pluginId="getSheetsList"
            type="datasource"
            waitMs=""
            waitType="debounce"
          />
        </TextInput>
        <Form
          id="mainForm"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          requireValidation={true}
          showBody={true}
          showBorder={false}
          showFooter={true}
        >
          <Header>
            <Text
              id="formTitle1"
              value="#### Form title"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Select
              id="sheetSelect"
              captionByIndex=""
              colorByIndex=""
              data="{{ parseSheetNames.value }}"
              disabledByIndex=""
              emptyMessage="No options"
              fallbackTextByIndex=""
              hidden="false"
              hiddenByIndex=""
              iconByIndex=""
              imageByIndex=""
              label="Sheet w/copy ⓘ"
              labelPosition="top"
              labels="{{ parseSheetNames.value }}"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
              tooltipByIndex=""
              tooltipText="Select the tab containing your copy"
              value="{{ sheetsURL.value && toggleValue.value && sheetsURL.value.length > 0 ? parseSheetNames.value[0] : null }}
"
              values="{{ item }}"
            />
            <TextInput
              id="copyColumn"
              label="Copy Column"
              labelPosition="top"
              labelWrap={true}
              placeholder="Enter value"
              value="C"
            />
            <Select
              id="heroSelect"
              emptyMessage="No options"
              itemMode="static"
              label="Legacy Hero Component
"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
              value="None"
            >
              <Option
                id="cf771"
                label="Hero Default"
                value="{{ hero_default.value }}"
              />
              <Option
                id="bcacd"
                label="Hero Single Image"
                value="{{ hero_image.value }}"
              />
              <Option
                id="c9abb"
                disabled={false}
                hidden={false}
                label="Hero Dual WasNow"
                value="{{ hero_dual_was_now.value }}"
              />
              <Option
                id="de96f"
                disabled={false}
                hidden={false}
                label="None"
                value="None"
              />
              <Event
                enabled={
                  '{{ heroReskinMenu.value != "None" && heroSelect.value != "None" }}'
                }
                event="change"
                method="setValue"
                params={{ ordered: [{ value: "None" }] }}
                pluginId="heroReskinMenu"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                enabled={'{{ heroSelect.value == "None" }}'}
                event="change"
                method="setValue"
                params={{
                  ordered: [{ value: "{{ heroStackedCenter.value }}" }],
                }}
                pluginId="heroReskinMenu"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Select>
            <Select
              id="heroReskinMenu"
              captionByIndex=""
              colorByIndex=""
              data="{{ heroReskinOptions.value }}"
              disabledByIndex=""
              emptyMessage="No options"
              fallbackTextByIndex=""
              hiddenByIndex=""
              iconByIndex=""
              imageByIndex=""
              label="Rebrand Hero Component"
              labelPosition="top"
              labels="{{ item.label }}"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
              tooltipByIndex=""
              value="{{ heroStackedCenter.value }}"
              values="{{ item.value }}"
            >
              <Event
                enabled={
                  '{{ heroReskinMenu.selectedLabel.startsWith("Hero_HalfHalf") || heroReskinMenu.selectedLabel.startsWith("Hero_VIP") }}'
                }
                event="change"
                method="setValue"
                params={{
                  ordered: [{ value: "  {{ colourOptions.value[6].value }}" }],
                }}
                pluginId="heroTopperColourSelect"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                enabled={
                  '{{ heroReskinMenu.selectedLabel.startsWith("Hero_KoboPlus") }}'
                }
                event="change"
                method="setValue"
                params={{
                  ordered: [{ value: "  {{ colourOptions.value[2].value }}" }],
                }}
                pluginId="heroTopperColourSelect"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                enabled={
                  '{{\n  !(heroReskinMenu.selectedLabel.startsWith("Hero_HalfHalf") || heroReskinMenu.selectedLabel.startsWith("Hero_VIP"))\n  &&\n  !heroReskinMenu.selectedLabel.startsWith("Hero_KoboPlus")\n}}\n'
                }
                event="change"
                method="setValue"
                params={{
                  ordered: [{ value: "  {{ colourOptions.value[0].value }}" }],
                }}
                pluginId="heroTopperColourSelect"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                enabled={
                  '{{ heroReskinMenu.value != "None" && heroSelect.value != "None" }}'
                }
                event="change"
                method="resetValue"
                params={{ ordered: [] }}
                pluginId="heroSelect"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                enabled={'{{ heroReskinMenu.value == "None" }}'}
                event="change"
                method="setValue"
                params={{ ordered: [{ value: "{{ hero_default.value }}" }] }}
                pluginId="heroSelect"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Select>
            <Text
              id="text2"
              value="<sub>Please see [Components Guide](https://app.clickup.com/45031420/v/dc/1ay7zw-81311/1ay7zw-683911).</sub>"
              verticalAlign="center"
            />
            <Switch
              id="heroDualSwitch"
              hidden="{{heroSelect.value !== hero_dual_was_now.value}}"
              label="Text Topper
"
            />
            <Select
              id="heroTopperColourSelect"
              colorByIndex="{{ item.value }}"
              data="{{ colourOptions.value }}"
              emptyMessage="No options"
              label="Topper Colour Selector
"
              labelPosition="top"
              labels="{{ item.label }}"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
              value="  {{ colourOptions.value[0].value }}"
              values="{{ item.value }}"
            />
            <Select
              id="heroBackgroundColourSelect"
              colorByIndex="{{ item.value }}"
              data="{{ colourOptions.value }}"
              emptyMessage="No options"
              hidden="true"
              label="Background Colour Selector
"
              labelPosition="top"
              labels="{{ item.label }}"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showInEditor={true}
              showSelectionIndicator={true}
              value="  {{ colourOptions.value[0].value }}"
              values="{{ item.value }}"
            />
            <FileDropzone
              id="heroDrop"
              _isUpgraded={true}
              appendNewSelection={true}
              hidden="{{ heroSelect.value === hero_dual_was_now.value && heroDualSwitch.value }}
"
              hideLabel=""
              iconBefore="bold/programming-browser-search"
              label="{{
  heroSelect.value === hero_dual_was_now.value 
    ? 'Topper Image' 
    : 'Hero Image'
}}
"
              labelPosition="top"
              placeholder="Select or drag and drop"
              required={true}
            />
            <Spacer id="spacer23" hidden="" showInEditor={true} />
            <Switch
              id="contentDiscoverySwitch"
              label="Content Discovery"
              labelWrap={true}
              style={{ ordered: [] }}
            >
              <Event
                event="change"
                method="clearValue"
                params={{ ordered: [] }}
                pluginId="vipSaleSwitch"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="change"
                method="clearValue"
                params={{ ordered: [] }}
                pluginId="deviceSwitch"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Switch>
            <Switch
              id="vipSaleSwitch"
              hidden="false"
              label="VIP Exclusive Sale"
              showInEditor={true}
            >
              <Event
                enabled=""
                event="change"
                method="clearValue"
                params={{ ordered: [] }}
                pluginId="contentDiscoverySwitch"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="change"
                method="clearValue"
                params={{ ordered: [] }}
                pluginId="deviceSwitch"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Switch>
            <Switch id="deviceSwitch" label="Direct Device">
              <Event
                enabled=""
                event="change"
                method="clearValue"
                params={{ ordered: [] }}
                pluginId="contentDiscoverySwitch"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="change"
                method="clearValue"
                params={{ ordered: [] }}
                pluginId="vipSaleSwitch"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Switch>
            <Spacer
              id="spacer22"
              hidden="{{ deviceSwitch.value == true }}"
              showInEditor={true}
            />
            <Select
              id="deviceCount"
              emptyMessage="No options"
              hidden="{{ deviceSwitch.value == false }}"
              itemMode="static"
              label="Device Count"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showInEditor={true}
              showSelectionIndicator={true}
              value="1"
            >
              <Option id="f907b" value="1" />
              <Option id="41a48" value="2" />
              <Option id="2990d" value="3" />
            </Select>
            <Spacer
              id="spacer15"
              hidden="{{ deviceSwitch.value == false }}"
              showInEditor={true}
            />
            <Container
              id="container1"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              hidden="{{ deviceSwitch.value == false }}"
              padding="0"
              showBody={true}
              showHeader={true}
              showInEditor={true}
            >
              <Header>
                <Text
                  id="containerTitle7"
                  value="###### Device 1"
                  verticalAlign="center"
                />
              </Header>
              <View id="341bd" viewKey="View 1">
                <FileDropzone
                  id="directDevice1Drop"
                  _isUpgraded={true}
                  appendNewSelection={true}
                  iconBefore="bold/programming-browser-search"
                  label="Device Image"
                  labelPosition="top"
                  maxCount={20}
                  maxSize="250mb"
                  placeholder="Select or drag and drop"
                  selectionType="multiple"
                />
                <Spacer id="spacer14" hidden="true" showInEditor={true} />
                <FileDropzone
                  id="directLogo1Drop"
                  _isUpgraded={true}
                  appendNewSelection={true}
                  hidden="true"
                  iconBefore="bold/programming-browser-search"
                  label="Logo Image"
                  labelPosition="top"
                  maxCount={20}
                  maxSize="250mb"
                  placeholder="Select or drag and drop"
                  selectionType="multiple"
                  showInEditor={true}
                />
              </View>
            </Container>
            <Spacer
              id="spacer16"
              hidden="{{ deviceSwitch.value == false }}"
              showInEditor={true}
            />
            <Container
              id="container2"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              hidden="{{ deviceSwitch.value == false || (deviceSwitch.value && deviceCount.value < 2) }}"
              padding="0"
              showBody={true}
              showHeader={true}
              showInEditor={true}
            >
              <Header>
                <Text
                  id="containerTitle8"
                  value="###### Device 2"
                  verticalAlign="center"
                />
              </Header>
              <View id="341bd" viewKey="View 1">
                <FileDropzone
                  id="directDevice2Drop"
                  _isUpgraded={true}
                  appendNewSelection={true}
                  iconBefore="bold/programming-browser-search"
                  label="Device Image"
                  labelPosition="top"
                  maxCount={20}
                  maxSize="250mb"
                  placeholder="Select or drag and drop"
                  selectionType="multiple"
                />
                <Spacer id="spacer18" hidden="true" showInEditor={true} />
                <FileDropzone
                  id="directLogo2Drop"
                  _isUpgraded={true}
                  appendNewSelection={true}
                  hidden="true"
                  iconBefore="bold/programming-browser-search"
                  label="Logo Image"
                  labelPosition="top"
                  maxCount={20}
                  maxSize="250mb"
                  placeholder="Select or drag and drop"
                  selectionType="multiple"
                  showInEditor={true}
                />
              </View>
            </Container>
            <Spacer
              id="spacer17"
              hidden="{{ deviceSwitch.value == false || (deviceSwitch.value && deviceCount.value < 2) }}"
              showInEditor={true}
            />
            <Container
              id="container3"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              hidden="{{ deviceSwitch.value == false || (deviceSwitch.value && deviceCount.value < 3) }}"
              padding="0"
              showBody={true}
              showHeader={true}
              showInEditor={true}
            >
              <Header>
                <Text
                  id="containerTitle9"
                  value="###### Device 3
"
                  verticalAlign="center"
                />
              </Header>
              <View id="341bd" viewKey="View 1">
                <FileDropzone
                  id="directDevice3Drop"
                  _isUpgraded={true}
                  appendNewSelection={true}
                  iconBefore="bold/programming-browser-search"
                  label="Device Image"
                  labelPosition="top"
                  maxCount={20}
                  maxSize="250mb"
                  placeholder="Select or drag and drop"
                  selectionType="multiple"
                />
                <Spacer id="spacer19" hidden="true" showInEditor={true} />
                <FileDropzone
                  id="directLogo3Drop"
                  _isUpgraded={true}
                  appendNewSelection={true}
                  hidden="true"
                  iconBefore="bold/programming-browser-search"
                  label="Logo Image"
                  labelPosition="top"
                  maxCount={20}
                  maxSize="250mb"
                  placeholder="Select or drag and drop"
                  selectionType="multiple"
                  showInEditor={true}
                />
              </View>
            </Container>
            <Spacer
              id="spacer20"
              hidden="{{ deviceSwitch.value == false}} || {{ deviceSwitch.value == true && deviceCount.value < 3 }}"
            />
            <Spacer
              id="spacer21"
              hidden="{{ deviceSwitch.value == false || (deviceSwitch.value && deviceCount.value < 3) }}"
              showInEditor={true}
            />
          </Body>
          <Footer>
            <Button
              id="mainSubmit"
              submit={true}
              submitTargetId="mainForm"
              text="Submit"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getSheetsData"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="featuresCollapsible"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="calloutsCollapsible"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="deviceBooklineCollapsible"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="responsysForm"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
    <Include src="./src/tabbedContainer1.rsx" />
    <Button
      id="resetTemplate"
      iconBefore="bold/interface-content-file"
      text="Reset Template"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{ Weekly_Template_Reskin.value }}" }] }}
        pluginId="htmlContentState"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer5" />
    <Button
      id="resetForm"
      iconBefore="bold/interface-file-clipboard-text"
      text="Reset Form
"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="clearForm"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer6" />
    <Button
      id="resetAll"
      iconBefore="bold/interface-arrows-turn-backward-alternate"
      text="Reset All
"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="clearForm"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{ Weekly_Template_Reskin.value }}" }] }}
        pluginId="htmlContentState"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer7" />
    <Button
      id="saveButton"
      iconBefore="bold/interface-content-save"
      text="Save File"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="exportHTML"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer1" hidden="" />
    <Spacer id="spacer11" />
    <Container
      id="calloutsCollapsible"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="true"
      padding="12px"
      showHeader={true}
      showInEditor={true}
    >
      <Header>
        <Text
          id="collapsibleTitle2"
          value="##### Callouts"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle2"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ calloutsCollapsible.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="calloutsCollapsible"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="edacc" viewKey="View 1">
        <Form
          id="calloutForm"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden="false"
          margin="0"
          padding="0"
          requireValidation={true}
          showBody={true}
          showBorder={false}
          showFooter={true}
          showInEditor={true}
        >
          <Header>
            <Text
              id="calloutTitle"
              value="#### Callouts"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Select
              id="calloutSelect"
              emptyMessage="No options"
              itemMode="static"
              label="Callout"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              required={true}
              showSelectionIndicator={true}
            >
              <Option
                id="7503d"
                label="Audiobook"
                value="{{ Audiobook.value }}"
              />
              <Option
                id="1b37b"
                label="Daily Deals"
                value="{{ DailyDeals.value }}"
              />
              <Option
                id="0200f"
                label="Kobo Plus Callout"
                value="{{ KoboPlusCallout.value }}"
              />
              <Option
                id="d2096"
                label="KSP VIP Callout"
                value="{{ KSPVIPCallout.value }}"
              />
            </Select>
            <Select
              id="calloutLocation"
              emptyMessage="No options"
              itemMode="static"
              label="Location"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              required={true}
              showSelectionIndicator={true}
            >
              <Option id="75f91" label="Below Hero" value="0" />
              <Option
                id="1b37b"
                hidden="{{ updateBooklineSelect.data.length <= 1 }}"
                label={
                  '{{ deviceSwitch.value ? "Below Device Card 1" : "Below Bookline 1" }}'
                }
                value="1"
              />
              <Option
                id="865dd"
                hidden="{{ updateBooklineSelect.data.length <= 2 }}"
                label={
                  '{{ deviceSwitch.value ? "Below Device Card 2" : "Below Bookline 2" }}'
                }
                value="2"
              />
              <Option
                id="3ee4b"
                hidden="{{ updateBooklineSelect.data.length <= 3 }}"
                label={
                  '{{ deviceSwitch.value ? "Below Device Card 3" : "Below Bookline 3" }}'
                }
                value="3"
              />
              <Option
                id="0200f"
                hidden="{{ updateBooklineSelect.data.length <= 4 }}"
                label={
                  '{{ deviceSwitch.value ? "Below Device Card 4" : "Below Bookline 4" }}'
                }
                value="4"
              />
              <Option
                id="70ea8"
                disabled={false}
                hidden="{{ !booklineYesNo.value }}"
                label="Below Device Bookline"
                value={'"DeviceBookline"'}
              />
            </Select>
            <Spacer id="spacer12" />
          </Body>
          <Footer>
            <Button
              id="calloutAdd"
              submit={true}
              submitTargetId="calloutForm"
              text="Add"
            />
            <Button id="calloutRemove" text="Remove">
              <Event
                event="click"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="removeCallout"
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
            pluginId="insertCallout"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
    <Form
      id="responsysForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="true"
      padding="12px"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      showInEditor={true}
    >
      <Header>
        <Text id="formTitle2" value="##### Responsys" verticalAlign="center" />
      </Header>
      <Body>
        <Select
          id="folderSelect"
          captionByIndex=""
          colorByIndex=""
          data=""
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Folder"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value={'{{ moment().format("MM [-] MMMM") }}'}
          values=""
        >
          <Option
            id="30bec"
            disabled={false}
            hidden={false}
            value="01 - January"
          />
          <Option
            id="9e3fa"
            disabled={false}
            hidden={false}
            value="02 - February"
          />
          <Option
            id="68f34"
            disabled={false}
            hidden={false}
            value="03 - March"
          />
          <Option
            id="052b6"
            disabled={false}
            hidden={false}
            value="04 - April"
          />
          <Option id="0a0f2" disabled={false} hidden={false} value="05 - May" />
          <Option
            id="c8fc0"
            disabled={false}
            hidden={false}
            value="06 - June"
          />
          <Option
            id="0073c"
            disabled={false}
            hidden={false}
            value="07 - July"
          />
          <Option
            id="b4213"
            disabled={false}
            hidden={false}
            value="08 - August"
          />
          <Option
            id="39174"
            disabled={false}
            hidden={false}
            value="09 - September"
          />
          <Option
            id="4d27b"
            disabled={false}
            hidden={false}
            value="10 - October"
          />
          <Option
            id="bc925"
            disabled={false}
            hidden={false}
            value="11 - November"
          />
          <Option
            id="7ac63"
            disabled={false}
            hidden={false}
            value="12 - December"
          />
          <Option
            id="802d1"
            disabled={false}
            hidden={false}
            value="ConversionDemo"
          />
        </Select>
        <TextInput
          id="campaignName"
          label="Campaign Name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
      </Body>
      <Footer>
        <Button
          id="uploadFormButton"
          iconBefore="bold/interface-upload-button-2"
          submit={true}
          submitTargetId="responsysForm"
          text="Upload"
        />
        <RadioGroup
          id="campaignTemplate"
          disabled="true"
          groupLayout="wrap"
          itemMode="static"
          label=""
          labelPosition="top"
          value="{{ self.values[0] }}"
        >
          <Option
            id="0cf31"
            label="Master Weekly Template"
            value="MASTER_WEEKLY_TEMPLATE"
          />
          <Option
            id="f98fd"
            label="Master Weekly WasNow Template"
            value="MASTER_WEEKLY_WASNOW_TEMPLATE"
          />
        </RadioGroup>
        <Button
          id="createCampaignButton"
          disabled="true"
          iconBefore="bold/interface-link-square-alternate"
          loading="{{ copyCampaign.isFetching }}"
          submitTargetId="responsysForm"
          text="Create Campaign"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="copyCampaign"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
      <Event
        event="submit"
        method="show"
        params={{ ordered: [] }}
        pluginId="confirmModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Spacer id="spacer8" hidden="" />
    <Container
      id="deviceBooklineCollapsible"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="true"
      padding="12px"
      showHeader={true}
      showInEditor={true}
    >
      <Header>
        <Text
          id="collapsibleTitle1"
          value="##### Device Bookline"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle1"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ deviceBooklineCollapsible.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="deviceBooklineCollapsible"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="edacc" viewKey="View 1">
        <Form
          id="deviceBooklineForm"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden="false"
          margin="0"
          padding="0"
          requireValidation={true}
          showBody={true}
          showBorder={false}
          showFooter={true}
          showInEditor={true}
        >
          <Header>
            <Text
              id="deviceBooklineLabel"
              value="#### Device Bookline"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <FileDropzone
              id="device1Drop"
              _isUpgraded={true}
              appendNewSelection={true}
              iconBefore="bold/programming-browser-search"
              label="Device 1"
              labelPosition="top"
              maxSize="275kb"
              parseFiles={true}
              placeholder="Select or drag and drop"
              required={true}
              selectionType="multiple"
            />
            <FileDropzone
              id="device2Drop"
              _isUpgraded={true}
              appendNewSelection={true}
              iconBefore="bold/programming-browser-search"
              label="Device 2"
              labelPosition="top"
              maxSize="275kb"
              parseFiles={true}
              placeholder="Select or drag and drop"
              required={true}
              selectionType="multiple"
            />
            <FileDropzone
              id="device3Drop"
              _isUpgraded={true}
              appendNewSelection={true}
              iconBefore="bold/programming-browser-search"
              label="Device 3"
              labelPosition="top"
              maxSize="275kb"
              parseFiles={true}
              placeholder="Select or drag and drop"
              required={true}
              selectionType="multiple"
            />
            <Select
              id="deviceBooklineLocation"
              emptyMessage="No options"
              itemMode="static"
              label="Location"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              required={true}
              showSelectionIndicator={true}
            >
              <Option id="75f91" label="Below Hero" value="1" />
              <Option
                id="1b37b"
                hidden="{{ updateBooklineSelect.data.length <= 1 }}"
                label={
                  '{{ deviceSwitch.value ? "Below Device Card 1" : "Below Bookline 1" }}'
                }
                value="2"
              />
              <Option
                id="865dd"
                hidden="{{ updateBooklineSelect.data.length <= 2 }}"
                label={
                  '{{ deviceSwitch.value ? "Below Device Card 2" : "Below Bookline 2" }}'
                }
                value="3"
              />
              <Option
                id="3ee4b"
                hidden="{{ updateBooklineSelect.data.length <= 3 }}"
                label={
                  '{{ deviceSwitch.value ? "Below Device Card 3" : "Below Bookline 3" }}'
                }
                value="4"
              />
              <Option
                id="0200f"
                hidden="{{ updateBooklineSelect.data.length <= 4 }}"
                label={
                  '{{ deviceSwitch.value ? "Below Device Card 4" : "Below Bookline 4" }}'
                }
                value="5"
              />
            </Select>
            <Select
              id="dcrDeviceBookline"
              emptyMessage="No options"
              itemMode="static"
              label="DCR"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
              value="None"
            >
              <Option id="c0c42" value="None" />
              <Option
                id="7a3c6"
                label="Hide for ESFNAC"
                value={'CX != "ESFNAC"'}
              />
              <Option
                id="34ea0"
                label="Hide for FRFNAC"
                value={'CX != "FRFNAC"'}
              />
              <Option
                id="aac1d"
                disabled={false}
                hidden={false}
                label="Hide for PTFNAC"
                value={'CX != "PTFNAC"'}
              />
              <Option
                id="f5b3f"
                disabled={false}
                hidden={false}
                label="Hide for ITM"
                value={'CX != "ITM"'}
              />
            </Select>
            <Spacer id="spacer13" />
          </Body>
          <Footer>
            <Button
              id="deviceBooklineSubmit"
              submit={true}
              submitTargetId="deviceBooklineForm"
              text="Add"
            />
            <Button id="button1" text="Remove">
              <Event
                event="click"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="removeDeviceBookline"
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
            pluginId="insertDeviceBookline"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="populateDeviceBookline"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getDeviceImageInfo"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
    <Spacer id="spacer9" hidden="" />
    <Include src="./src/featuresCollapsible.rsx" />
  </Frame>
</App>

<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [] }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="b05f7" value="Tab 1" />
      <Option id="e1b5a" value="Tab 2" />
      <Option id="71e9f" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="6c2c6"
    icon="bold/computer-screen-1"
    iconPosition="left"
    viewKey="Preview"
  >
    <HTML
      id="html1"
      css={include("../lib/html1.css", "string")}
      hidden=""
      html="{{ editableTextArea1.value }}"
    />
    <Button id="backToTop" text="Back to Top">
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: 'tabbedContainer1.scrollIntoView({block: "start", behavior: "smooth"});',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="5ad34"
    hidden="true"
    icon="bold/programming-browser-code-2"
    iconPosition="left"
    viewKey="Old Code"
  >
    <Text
      id="text1"
      disableMarkdown={true}
      style={{ ordered: [] }}
      value="{{ htmlContentState.value }}"
      verticalAlign="center"
    />
    <Button id="backToTop2" text="Back to Top">
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: 'tabbedContainer1.scrollIntoView({block: "start", behavior: "smooth"});',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="a61a9"
    disabled={false}
    hidden="false"
    icon="bold/programming-browser-code-2"
    iconPosition="left"
    viewKey="Code"
  >
    <EditableTextArea
      id="editableTextArea1"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      placeholder="Enter value"
      style={{ ordered: [] }}
      value="{{ htmlContentState.value }}"
    />
    <Button id="backToTop3" text="Back to Top">
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: 'tabbedContainer1.scrollIntoView({block: "start", behavior: "smooth"});',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>

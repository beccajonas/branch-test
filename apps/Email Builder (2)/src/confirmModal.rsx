<ModalFrame
  id="confirmModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showOverlay={true}
>
  <Header>
    <Text id="modalTitle1" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="confirmModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="modalText"
      horizontalAlign="center"
      showInEditor={true}
      value="Confirm upload to Responsys for <br>**{{ campaignName.value }}**?"
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button
      id="modalYesButton"
      loading="{{ tokenCheck.isFetching || createFolder.isFetching || uploadDocuments.isFetching || collectFiles.isFetching || uploadImages.isFetching }}"
      text="Yes"
    >
      <Event
        event="click"
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
        pluginId="tokenCheck"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="modalNoButton" text="Cancel">
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="confirmModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="resetValue"
        params={{ ordered: [] }}
        pluginId="modalText"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="modalYesButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>

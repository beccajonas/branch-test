<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <Folder id="templates">
    <State
      id="WeeklyTemplate"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '<!DOCTYPE html>\n<html lang="${HTML_LANGUAGE}">\n<head>\n<title>KOBO.COM</title>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\n<style>\n\t/* Common Overrides */\n\t\t* {line-height:normal;}\n\t\tbody {font-size:100% !important; margin:0 !important; padding:0 !important; -webkit-text-adjust:none;}\n\t\t.ExternalClass {width: 100%; line-height: 100%;}\n\t\t.ExternalClass p,\n\t\t.ExternalClass span,\n\t\t.ExternalClass font,\n\t\t.ExternalClass td{line-height: 100%;}\n\t\t::selection { color: #010101; background: #BF0000; }\n\t\t::-moz-selection { color: #010101; background: #BF0000; }\n\n\t\t/* Remove Apple Blue Links */\n\t\ta[x-apple-data-detectors] {\n\t\t\tcolor: inherit !important;\n\t\t\ttext-decoration: none !important;\n\t\t\tfont-size: inherit !important;\n\t\t\tfont-family: inherit !important;\n\t\t\tfont-weight: inherit !important;\n\t\t\tline-height: inherit !important;\n\t\t}\n</style>\n</head>\n<body>\n\n <!-- GENERAL COPY FOR ALL MAILINGS INCLUDES SHOP NOW BUY NOW VIEW ALL -->\n <#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/data_files/component_data_0603.htm\'>\n <#if BOOK1_WAS?isnull>\n \t<#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/data_files/weeklies_data.htm\'>  \n </#if>\n \n <!-- BOOK LOGIC and CODE -->\n <#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/data_files/bookline_weeklies_logic.htm\'>\n <#import \'cms://contentlibrary/!componentlibrary/!mobilefirst/data_files/booklines_weeklies_live.htm\' as bookline>\n\n\n<table role="presentation" width="100%" id="w100" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="table-layout:fixed;">\n\t<tr>\n\t\t<td width="550" align="center">\n\t\t\t<table role="presentation" width="550" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n\t\t\t\t<tr>\n\t\t\t\t\t<td width="550">\n            <!-- Preview Text -->\n            <table role="presentation" width="550" border="0" cellpadding="0" cellspacing="0">\n            \t<tr><td width="550" style="color:#fefefe;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:1px;text-align:center;">Preview Text - FILL THIS IN | </td></tr>\n            </table>\n            <!-- /Preview Text -->\n\n            <table role="presentation">\n              <tr><td data-content-region-name="SKIPS">DRAG SKIP LOGIC HERE</td></tr>\n            </table>\n\n            <!-- Header -->\n            <#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/header_footer/!masterheader.htm\'>\n            <!-- /Header -->\n\n            <!-- Hero  -->\n            COPY CODE FOR HERO FROM HERO_IMAGE_CODE\n            \n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n              <tr><td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n            </table>\n            <!-- /Hero -->\n\t\t\t\t\t\t\n            <!-- Bookline 1 -->\n            <#if BL1_COUNTER gt 0 >\n              <!-- Bookline 1 Title -->\n              <#if BOOKLINE1_TITLE?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE1_TITLE}</#noescape>\n                    </td>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 1 Title -->\n              \n              <@bookline.DISPLAY_BOOKLINE1 NUM_BOOKS=BL1_COUNTER />\n\n              <!-- Bookline 1 View All CTA -->\n              <#if BOOKLINE1_LINK?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:20px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE1_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE1_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                      </a>\n                      </td>\n                      <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 1 View All CTA -->\n            </#if>\n            <!-- / Bookline 1 -->\n\n            <!-- Bookline 2 -->\n            <#if BL2_COUNTER gt 0 >\n              <!-- Bookline 2 Title -->\n              <#if BOOKLINE2_TITLE?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE2_TITLE}</#noescape>\n                    </td>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 2 Title -->\n\n              <@bookline.DISPLAY_BOOKLINE2 NUM_BOOKS=BL2_COUNTER />\n\n              <!-- Bookline 2 View All CTA -->\n              <#if BOOKLINE2_LINK?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:20px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE2_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE2_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                      </a>\n                      </td>\n                      <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 2 View All CTA -->\n            </#if>\n            <!-- / Bookline 2 -->\n\n            <!-- Bookline 3 -->\n            <#if BL3_COUNTER gt 0 >\n              <!-- Bookline 3 Title -->\n              <#if BOOKLINE3_TITLE?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE3_TITLE}</#noescape>\n                    </td>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 3 Title -->\n\n              <@bookline.DISPLAY_BOOKLINE3 NUM_BOOKS=BL3_COUNTER />\n\n              <!-- Bookline 3 View All CTA -->\n              <#if BOOKLINE3_LINK?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:20px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE3_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE3_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE3_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                      </a>\n                      </td>\n                      <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- Bookline 3 View All CTA -->\n            </#if>\n            <!-- / Bookline 3 -->\n\n            <!-- Bookline 4 -->\n            <#if BL4_COUNTER gt 0 >\n              <!-- Bookline 4 Title -->\n              <#if BOOKLINE4_TITLE?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE4_TITLE}</#noescape>\n                    </td>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 4 Title -->\n\n              <@bookline.DISPLAY_BOOKLINE4 NUM_BOOKS=BL4_COUNTER />\n\n              <!-- Bookline 4 View All CTA -->\n              <#if BOOKLINE4_LINK?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:20px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE4_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE4_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE4_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                      </a>\n                      </td>\n                      <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 4 View All CTA -->\n            </#if>\n            <!-- / Bookline 4 -->\n\n            <!-- Bookline 5 -->\n            <#if BL5_COUNTER gt 0 >\n            <#if BOOKLINE5_TITLE?has_content>\n              <!-- Bookline 5 Title -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE5_TITLE}</#noescape>\n                  </td>\n                  <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <!-- / Bookline 5 Title -->\n              </#if>\n              \n              <@bookline.DISPLAY_BOOKLINE5 NUM_BOOKS=BL5_COUNTER />\n\n              <#if BOOKLINE5_LINK?has_content>\n              <!-- Bookline 5 View All CTA -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:20px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE5_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE5_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE5_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                    </a>\n                    </td>\n                    <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              </#if>\n              <!-- Bookline 5 View All CTA -->\n            </#if>\n            <!-- / Bookline 5 -->\n       \n            <!-- Footer -->\n            <#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/header_footer/!masterfooter.htm\'>\n            <!-- /Footer -->\n\n  <!-- DELETE IF NO LEGAL -->\n            <!-- Grey Line Break -->\n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="1" width="502" bgcolor="#cccccc" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n            <!-- /Grey Line Break -->\n  <!-- / NO LEGAL -->\n\n            <!-- LEGAL 1 - DELETE IF NOT NEEDED -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="550" style="color:#444444;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:10px;text-align:left;line-height:1.2;">\n                    <b>Legal Heading:</b> Legal Copy <a href="${clickthrough(\'LEGAL1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">Legal Link</a>\n                  </td>\n                </tr>\n              </table>\n              <!-- / LEGAL 1 -->\n\n              <!-- LEGAL 2 - DELETE IF NOT NEEDED -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="550" style="color:#444444;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:10px;text-align:left;line-height:1.2;">\n                    <b>Legal Heading:</b> Legal Copy <a href="${clickthrough(\'LEGAL2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">Legal Link</a>\n                  </td>\n                </tr>\n              </table>\n              <!-- / LEGAL 2 -->\n\n              <!-- LEGAL 3 - DELETE IF NOT NEEDED -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="550" style="color:#444444;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:10px;text-align:left;line-height:1.2;">\n                    <b>Legal Heading:</b> Legal Copy <a href="${clickthrough(\'LEGAL3_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">Legal Link</a>\n                  </td>\n                </tr>\n              </table>\n              <!-- / LEGAL 3 -->\n\n              <!-- LEGAL 4 - DELETE IF NOT NEEDED -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="550" style="color:#444444;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:10px;text-align:left;line-height:1.2;">\n                    <b>Legal Heading:</b> Legal Copy <a href="${clickthrough(\'LEGAL4_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">Legal Link</a>\n                  </td>\n                </tr>\n              </table>\n              <!-- / LEGAL 4 -->\n\n              <!-- LEGAL 5 - DELETE IF NOT NEEDED -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="550" style="color:#444444;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:10px;text-align:left;line-height:1.2;">\n                    <b>Legal Heading:</b> Legal Copy <a href="${clickthrough(\'LEGAL5_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">Legal Link</a>\n                  </td>\n                </tr>\n              </table>\n              <!-- / LEGAL 5 -->\n\n              <!-- LEGAL 6 - DELETE IF NOT NEEDED -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="550" style="color:#444444;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:10px;text-align:left;line-height:1.2;">\n                    <b>Legal Heading:</b> Legal Copy <a href="${clickthrough(\'LEGAL6_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">Legal Link</a>\n                  </td>\n                </tr>\n              </table>\n              <!-- / LEGAL 6 -->\n\n              <!-- LEGAL 7 - DELETE IF NOT NEEDED -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="550" style="color:#444444;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:10px;text-align:left;line-height:1.2;">\n                    <b>Legal Heading:</b> Legal Copy <a href="${clickthrough(\'LEGAL7_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">Legal Link</a>\n                  </td>\n                </tr>\n              </table>\n              <!-- / LEGAL 7 -->\n\n              <!-- LEGAL 8 - DELETE IF NOT NEEDED -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="550" style="color:#444444;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:10px;text-align:left;line-height:1.2;">\n                    <b>Legal Heading:</b> Legal Copy <a href="${clickthrough(\'LEGAL8_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#444444;text-decoration:underline;" target="_blank">Legal Link</a>\n                  </td>\n                </tr>\n              </table>\n              <!-- / LEGAL 8 -->\n\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n\t\t\t\t\t</td>\n\t\t\t\t</tr>\n\t\t\t</table>\n\t\t</td>\n    </tr>\n</table>\n</body>\n</html>'
      }
    />
    <State
      id="blog_feature_horizontal"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '<!-- Master Email Feature Blog Horizontal -->       \n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t<td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;border:1px solid #CCCCCC;" >\n\t\t\t    <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n\t\t\t\t    <tbody>\n\t\t\t\t\t    <tr>\n\t\t\t\t\t\t\t<td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="251">\n                                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                    <!-- Add image here, fill out alt text, width and height -->\n                                    <img src="images/BlogImage.jpg" alt="XXX" height="240" width="251" style="display: block;">\n                                </a>\n    \t\t\t\t\t\t</td>\n    \t\t\t\t\t\t<td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n    \t\t\t\t\t\t<td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;" width="267">\n        \t\t\t\t\t\t<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="267">\n                                    <tbody>\n                                        <!-- HEADLINE -->\n                                        <tr>\n                                            <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                            <td width="238" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;color:#000000;text-align:left;line-height:1.4;">\n                                                <!-- BLOG TITLE  -->\n                                                Lorem ipsum<br> dolor sit amet, consectetur elit\n        \t\t\t\t\t\t\t\t\t</td>\n                                            <td width="13" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        </tr>\n                                        <!-- / HEADLINE ENDS-->\n                                        <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <!-- SUBCOPY -->\n                                        <tr>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1;text-decoration:none;" width="238">\n                                                Lorem ipsum dolor sit amet\n                                            </td>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="13">&nbsp;</td>\n                                        </tr>\n                                        <!-- SUBCOPY ENDS -->\n                                        <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <!-- CTA -->\n                                        <tr>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1;text-decoration:none;" width="238">\n                                                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                                    Semper diam in >\n                                                </a>\n                                            </td>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="13">&nbsp;</td>\n                                        </tr>\n                                        <!-- / CTA ENDS -->\n                                    </tbody>\n                                </table>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</tbody>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Master Email Feature Blog Horizontal --> '
      }
    />
    <State
      id="deviceBookline"
      value={
        '<!--Device Bookline WAS/NOW-->\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td width="16"style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n        <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                <tbody>\n                    <!-- Headline  -->\n                    <tr>\n                        <td colspan="3" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;text-align:center;line-height:1.2;" width="518">\n                            <!-- Update headline here  -->\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit\n                        </td>\n                    </tr>\n                    <!-- /Headline  -->\n                    <tr><td height="20" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                    <!-- Device line  -->\n                    <tr>\n                        <td width="518" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                                <tr>\n                                    <!-- Device 1 -->\n                                    <td width="162" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" valign="top">\n                                        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="162">\n                                            <tbody>\n                                                <tr>\n                                                    <td style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- tabindex="-1" means keyboard users will only need to click CTA for book link -> removing redundancies -->\n                                                        <a tabindex="-1" href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                                                            <!-- Add image BUT LEAVE ALT-TEXT NULL   -->\n                                                            <img src="images/libra.png" alt="" width="162" height="140">\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <a href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;" target="_blank">\n                                                            <!-- Update device name here   -->\n                                                            DEVICE 1 NAME\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- Update WAS price here   -->\n                                                        ${MT_COPY_WAS} <span style="text-decoration: line-through; color: #BF0000;"><span style="color:#000000;">$XXX.XX</span></span>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- Update NOW price here   -->\n                                                        ${MT_COPY_NOW} $XXX.XX\n                                                    </td>\n                                                </tr>\n                                            </tbody>\n                                        </table>\n                                    </td>\n                                    <!-- /Device 1 -->\n                                    <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                    <!-- Device 2 -->\n                                    <td width="162" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" valign="top">\n                                        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="162">\n                                            <tbody>\n                                                <tr>\n                                                    <td style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- tabindex="-1" means keyboard users will only need to click CTA for book link -> removing redundancies -->\n                                                        <a tabindex="-1" href="${clickthrough(\'DEVICE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                                                            <!-- Add image BUT LEAVE ALT-TEXT NULL   -->\n                                                            <img src="images/clara.png" alt="" width="162" height="140">\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <a href="${clickthrough(\'DEVICE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;" target="_blank">\n                                                            <!-- Update device name here   -->\n                                                            DEVICE 2 NAME\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- Update WAS price here   -->\n                                                        ${MT_COPY_WAS} <span style="text-decoration: line-through; color: #BF0000;"><span style="color:#000000;">$XXX.XX</span></span>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- Update NOW price here   -->\n                                                        ${MT_COPY_NOW} $XXX.XX\n                                                    </td>\n                                                </tr>\n                                            </tbody>\n                                        </table>\n                                    </td>\n                                    <!-- /Device 2 -->\n                                    <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                    <!-- Device 3 -->\n                                    <td width="162" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" valign="top">\n                                        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="162">\n                                            <tbody>\n                                                <tr>\n                                                    <td style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- tabindex="-1" means keyboard users will only need to click CTA for book link -> removing redundancies -->\n                                                        <a tabindex="-1" href="${clickthrough(\'DEVICE3_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                                                            <!-- Add image BUT LEAVE ALT-TEXT NULL   -->\n                                                            <img src="images/forma.png" alt="" width="162" height="140">\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <a href="${clickthrough(\'DEVICE3_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;" target="_blank">\n                                                            <!-- Update device name here   -->\n                                                            DEVICE 3 NAME\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- Update WAS price here   -->\n                                                        ${MT_COPY_WAS} <span style="text-decoration: line-through; color: #BF0000;"><span style="color:#000000;">$XXX.XX</span></span>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:center;line-height:1.2;" width="162">\n                                                        <!-- Update NOW price here   -->\n                                                        ${MT_COPY_NOW} $XXX.XX\n                                                    </td>\n                                                </tr>\n                                            </tbody>\n                                        </table>\n                                    </td>\n                                    <!-- /Device 3 -->\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                    <!-- /Device line  -->\n                    <tr><td height="20" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                    <!-- CTA section  -->\n                    <tr>\n                        <td width="59" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        <td height="64" style="background-color:#ffffff;border: 1px solid #000000; color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;">\n                            <a href="${clickthrough(\'CTA1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px;" target="_blank">\n                                ${MT_COPY_VIEWALL_EREADER}\n                            </a>\n                        </td>\n                        <td width="59" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <!-- /CTA section  -->\n                </tbody>\n            </table>\n        </td>\n        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tbody>\n        <tr>\n            <td height="20" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n    </tbody>\n</table>\n<!--/ Device Bookline WAS/NOW-->'
      }
    />
    <State
      id="device_content_card"
      value={
        '<!-- Device Content Card -->\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="384" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1.2;mso-line-height-rule:exactly;">\n            <!-- DEVICE IMAGE -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="384">\n                <tr>\n                    <td width="384" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.2;">\n                        <a tabindex="-1" href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                            <!-- Add image BUT LEAVE ALT-TEXT NULL  -->\n                            <img alt="" src="images/KoboClara.png" width="384" height="228" style="display:block;" border="0" />\n                        </a>\n                    </td>\n                </tr>\n                <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n            </table>\n\n            <!-- DEVICE NAME -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="384">\n                <tr>\n                    <td width="384" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.2;">\n                        <!-- DEVICE TITLE IMAGE(EXPORT LOCKUP) AND ALT TEXT - UPDATE HEIGHT AS NEEDED -->\n                        <img src="images/Lockup_Clara2e.png" width="384" height="37" alt="DEVICE NAME" style="display:block;" border="0" />\n                    </td>\n                </tr>\n                <tr><td height="17" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n            </table>\n\n            <!-- DEVICE UNDERLINE -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="384">\n                <tr>\n                    <td width="84" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <!-- DECORATIVE LINE UNDER LOCKUP -->\n                    <td width="217" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:2px;text-align:center;line-height:1;border-bottom: 1px solid #000000;">&nbsp;\n                    </td>\n                    <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>  \n                </tr>\n                <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n            </table>\n\n            <!-- LIST OF FEATURES -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="384">\n                <tr>\n                    <td width="384" style="font-family: Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:16px;color:#000000;line-height:1.2;text-align:left;">\n                        <!-- FEATURES COPY -->\n                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque elit faucibus id mattis at nisl lobortis. Morbi enim vitae faucibus posuere massa auctor iaculis mattis. Enim sit rhoncus facilisis a lacus est fermentum est. Sed enim non duis amet donec adipiscing malesuada ut netus. Rhoncus nibh amet id mollis ut.         \n                    </td>\n                </tr>\n                <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                <!-- / LIST OF FEATURES ENDS -->\n\n                <!-- PRICING -->\n                <!-- DELETE IF NO NOW PRICE -->\n                <tr>\n                    <td width="384" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:38px;line-height:1.4;text-align:center;">\n                    <!-- DEVICE "NOW" PRICE -->\n                        $XXX.XX       \n                    </td>\n                </tr>\n                <!-- / DELETE IF NO NOW PRICE -->\n\n                <!-- DELETE IF NO WAS PRICE -->\n                <tr>   \n                    <td width="384" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.4;text-align:center;">\n                        <!-- DEVICE "WAS" PRICE -->\n                        ${MT_COPY_WAS}: <span style="text-decoration:line-through;color:#000000;">$XXX.XX</span>\n                    </td>\n                </tr>\n                <!-- / DELETE IF NO WAS PRICE -->\n\n                <!-- DELETE IF NO SAVE PRICE -->\n                <tr>\n                    <td width="384" style="color: #BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.4;text-align:center;">\n                        <!-- DEVICE "YOU SAVE" PRICE -->\n                        ${MT_COPY_SAVE}: $XX.XX     \n                    </td>\n                </tr>\n                <!-- DELETE IF NO SAVE PRICE -->\n                <!-- / PRICING ENDS -->\n            </table>\n\n            <!-- CTA -->\n            <table role="presentation" width="384" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                <tr>\n                    <td width="66" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;border: 1px solid #000000;">\n                        <!-- UPDATE ARIA-LABEL WITH CTA AND DEVICE NAME (EX. "BUY KOBO CLARA") -->\n                        <a aria-label="CTA COPY DEVICE NAME" href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                            <!--  CTA COPY (EX. "BUY KOBO CLARA") -->\n                            CTA COPY\n                        </a>\n                    </td>\n                    <td width="65" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n\n                <!-- LEGAL - Delete if not needed  -->\n                <tr><td height="8" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                <tr>\n                    <td width="384" colspan="3" style="color: #000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.4;text-align:center;">\n                        SALE ENDS AT MIDNIGHT      \n                    </td>\n                </tr>\n                <!-- /LEGAL - Delete if not needed  -->\n            </table>\n            <!-- / CTA -->\n\n        <td width="83" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n\n<!-- /Device Content Card -->'
      }
    />
    <State
      id="feature_image_left"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '<!-- Master Email Feature Left -->       \n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n      <!-- LEFT SIDE - Image -->\n      <td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="267">\n          <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n        <!-- Add image here - FILL IN PATH, ALT & HEIGHT - WIDTH SHOULD REMAIN THE SAME-->\n                        <img src="images/" alt="XXX" height="0" width="267" style="display: block;"></a>\n        </td> \n      <!-- / LEFT SIDE - Image -->\n      <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n      <!-- RIGHT SIDE - Content -->\n      <td width="251" style="font-family:arial,sans-serif;font-weight:normal;" >\n          <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="251">\n            <tr>\n              <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n            <tr>\n              <td style="font-family:arial,sans-serif;font-weight:normal;vertical-align:middle;" width="251">\n              <!-- INSERT LOGO LOCKUP & VIP HERE -->\n                <!-- Topper  -->\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="251">\n                    <tr>\n                      <td height="7" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <tr>\n                      <td style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;color:#000000;text-align:center;line-height:17px;letter-spacing:2.37px;" width="251">\n                            — Topper —\n                            </td>\n                    </tr>\n                    <tr>\n                      <td height="7" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                </table>\n                <!-- /Topper -->\n                <!-- Feature Text Content -->\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="251">\n                  <!-- SPACER - Delete if no VIP/Topper/Logo LockUp -->\n                  <tr> \n                    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <!-- /SPACER -->\n                  <!-- Headline -->\n                  <tr>\n                    <td style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;color:#000000;text-align:center;line-height:28px;" width="251">\n                          HEADLINE\n                    </td>\n                  </tr>\n                  <!-- /Headline -->\n                  <!-- Subcopy -->\n                  <tr>\n                    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr>\n                    <td align="left" style="color:#000000;font-family:Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:16px;text-align:center;line-height:18px;" width="251">Subcopy - Lorem ipsum dolor sit amet, consectetur adipiscing elit.</td>\n                  </tr>\n                  <!-- /Subcopy -->\n                  <!-- Pricing -->\n                  <tr>\n                    <td width="251" style="font-family:arial,sans-serif;font-weight:normal;">\n                      <table role="presentation" width="251" border="0" cellpadding="0" cellspacing="0">\n                       <tr>\n                          <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;\n                          </td>\n                        </tr>\n                        <tr>\n                          <td style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:38px;text-align:center;line-height:1.2; color: #000000;">\n                              <!-- PASTE LARGE NOW PRICE BELOW -->\n                              XX.XX\n                          </td>\n                        </tr>\n                        <tr>\n                          <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;">\n                            ${MT_COPY_WAS}: <span style="text-decoration:line-through;">XX.XX</span> ${MT_COPY_SAVE}: XX.XX\n                          </td>\n                        </tr>\n                      </table> \n                    </td>\n                  </tr>\n                  <!-- /Pricing -->\n                  <!-- CTA -->\n                    <tr>\n                      <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <tr>\n                       <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;border: 1px solid #000000;">\n                          <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary Button</a>\n                         </td>\n                      </tr>\n                  <!-- /CTA -->\n                  <!-- Expiry -->\n                    <tr>\n                      <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <tr>\n                      <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;" width="251">    \n                          SALE ENDS AT MIDNIGHT    \n                      </td>\n                    </tr>\n                  <!-- /Expiry -->\n                </table>\n                <!-- /Feature Text Content -->\n              <!-- INSERT KSP CALLOUT HERE -->\n              </td>\n            </tr>\n          <tr>\n            <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n        </table>\n      </td>\n      <!-- /RIGHT SIDE -->\n      <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n      </tr>   \n</table>\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Master Email Feature Left -->       '
      }
    />
    <State
      id="feature_image_right"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '<!-- Master Email Feature Right -->\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n      <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  <!-- LEFT SIDE - CONTENT -->\n      <td width="251" style="font-family:arial,sans-serif;font-weight:normal;" >\n          <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="251">\n            <tr>\n              <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n            <tr>\n              <td style="font-family:arial,sans-serif;font-weight:normal;vertical-align:middle;" width="251">\n              <!-- INSERT LOGO LOCKUP, VIP HERE -->\n                <!-- Topper  -->\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="251">\n                  <tr>\n                    <td height="7" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr>\n                    <td style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;color:#000000;text-align:center;line-height:17px;letter-spacing:2.37px;" width="251">\n                          — TOPPER TEXT HERE —\n                          </td>\n                  </tr>\n                  <tr>\n                    <td height="7" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                </table>\n                <!-- /Topper -->\n                <!-- Feature Text Content -->\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="251">\n                  <!-- SPACER - Delete if no VIP/Topper/Logo LockUp -->\n                    <tr> \n                      <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr> \n                  <!-- /SPACER -->\n                  <!-- Headline -->\n                    <tr>\n                      <td style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;color:#000000;text-align:center;line-height:28px;" width="251">\n                            HEADLINE TEXT HERE \n                      </td>\n                    </tr>\n                  <!-- /Headline -->\n                  <!-- Subcopy -->\n                    <tr>\n                      <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <tr>\n                      <td align="left" style="color:#000000;font-family:Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:16px;text-align:center;line-height:18px;" width="251">Subcopy - Lorem ipsum dolor sit amet, consectetur adipiscing elit.</td>\n                    </tr>\n                  <!-- /Subcopy -->\n                  <!-- Pricing -->\n                    <tr>\n                      <td width="251" style="font-family:arial,sans-serif;font-weight:normal;">\n                        <table role="presentation" width="251" border="0" cellpadding="0" cellspacing="0">\n                             <tr>\n                                <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;\n                                </td>\n                            </tr>\n                            <tr>\n                                <td style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:38px;text-align:center;line-height:1.2; color: #000000;">\n                                    <!-- PASTE LARGE NOW PRICE BELOW -->\n                                    XX.XX\n                                </td>\n                            </tr>\n                            <tr>\n                                <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;">\n                                  ${MT_COPY_WAS}: <span style="text-decoration:line-through;">XX.XX</span> ${MT_COPY_SAVE}: XX.XX\n                                </td>\n                            </tr>\n                        </table> \n                      </td>\n                    </tr>\n                  <!-- /Pricing -->\n                  <!-- CTA -->\n                    <tr>\n                      <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <tr>\n                       <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;border: 1px solid #000000;">\n                          <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary Button</a>\n                         </td>\n                      </tr>\n                  <!-- /CTA -->      \n                  <!-- Expiry -->\n                    <tr>\n                      <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <tr>\n                      <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;" width="251">    \n                          SALE ENDS AT MIDNIGHT    \n                      </td>\n                    </tr>\n                  <!-- /Expiry -->\n                </table>\n                <!-- /Feature Text Content -->\n              <!-- INSERT KSP CALLOUT HERE -->\n              </td>\n            </tr>\n          <tr>\n            <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n        </table>\n      </td>\n  <!-- /LEFT SIDE -->\n      <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  <!-- RIGHT SIDE - Image -->    \n      <td width="267" style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;">\n          <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n        <!-- Add image here, FILL IN PATH, ALT AND HEIGHT - WIDTH SHOULD REMAIN THE SAME -->\n                        <img src="images/" alt="XXX" height="0" width="267" style="display: block;"></a>\n        </td>\n  <!-- / RIGHT SIDE -->  \n      </tr>   \n</table>\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Master Email Feature Right -->'
      }
    />
    <State
      id="feature_logoLockup"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '<!-- Logo Lockup  -->\n  <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="251">\n    <tr> <!-- SPACER - Delete if no Topper -->\n      <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr> <!-- /SPACER -->\n    <tr>\n      <td style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:20px;color:#000000;text-align:center;line-height:23px;" width="251">\n      <!-- Logo - FILL IN PATH, ALT, WIDTH & HEIGHT - WIDTH SHOULD NOT EXCEED 251-->\n                <img src="images/" alt="" width="0" height="0" style="display: block; text-align: center;margin:auto;">\n      <!-- /Logo -->\n      </td>\n    </tr>\n  </table>\n<!-- /Logo Lockup -->'
      }
    />
    <State
      id="hero_default"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '<!-- Hero - Default -->\n  <!-- INSERT IMAGE TOPPER & VIP HERE -->\n  <!-- Text Topper -  Delete if using Image Topper -->\n    <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <!-- Change background color as needed, default is black-->\n          <td width="550" height="51" style="background-color: #000000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                   \n            — Topper —\n          </td>\n        </tr>\n    </table>\n  <!-- /Text Topper -->\n  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <!-- Hero Image-->      \n    <tr>\n      <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;" target="_blank">\n          <!-- FILL IN PATH, ALT & HEIGHT -->\n          <img src="images/" width="550" height="0" alt="Hero Image Alt" style="display:block;background:#bf0000;" border="0" />\n        </a>\n      </td>\n    </tr>\n    <tr>\n      <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Hero Image-->\n    <!-- Headline & Subcopy -->\n      <tr>\n        <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n          <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n            <tr>\n              <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:32px;text-align:center;line-height:37px;">HEADLINE</td>\n              <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td> \n            </tr>\n            <tr>\n              <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n            <tr>\n              <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td width="502" style="color:#000000;font-family:Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:24px;text-align:center;line-height:27px;">\n                SUBCOPY - Lorem ipsum dolor sit amet, consectetur adipiscing \n                <!-- PROMOCODE -->\n                  <span style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;">${PROMOCODE}</span>\n                <!-- /PROMOCODE -->\n              </td>\n              <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td> \n            </tr>\n          </table>\n        </td>\n      </tr>\n      <tr>\n        <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n      </tr>\n      <!-- /Headline & Subcopy -->\n      <!-- CTA -->\n      <tr>\n        <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n          <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n              <tr>\n                  <td width="103" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  <td height="66" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Primary Button</a></td>\n                 <td width="103" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n          </table>\n        </td>\n      </tr>\n      <!-- /CTA -->\n      <!-- Expiry - Delete if not needed -->\n      <tr>\n        <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n      </tr>\n      <tr>\n        <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;">\n          SALE ENDS AT MIDNIGHT\n        </td>\n      </tr>\n      <!-- /Expiry -->\n  </table>\n  <!-- INSERT KSP CALLOUT HERE -->\n<!-- /Hero - Default -->'
      }
    />
    <State
      id="hero_dual_was_now"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n    <!-- IMG TOPPER and FILL IN ALT TEXT -->\n            <img src="images/topper.png" width="550" height="xx" alt="" style="display:block;background:#bf0000;" border="0" />\n        </td>\n    </tr>\n    <tr>\n        <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr> \n</table>\n<!-- /Topper -->\n\n<!-- SUB TOPPER HERE -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="352" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;line-height:28px;text-align: center;letter-spacing:3.819px;">\n            TEST TEXT\n        </td>\n        <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n</table>\n<!-- /SUB TOPPER HERE -->\n\n<!-- HEADLINE HERE -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td width="65" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="420" style="font-family:\'Trebuchet MS\', \'Lucida Sans Unicode\', \'Lucida Grande\', \'Lucida Sans\', Arial, sans-serif,sans-serif;font-weight:bold;font-size:36px;line-height:1.2;text-align: center;">\n    \n            Uncover the Unexpected\n        </td>\n        <td width="65" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>             \n</table>\n<!-- /HEADLINE HERE -->\n\n\n<!-- SUB COPY HERE -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n    <tr>\n        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="518" style="font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:normal;font-size:25px;line-height:normal;text-align: center;">\n            Lorem ipsum dolor sit amet, consectetur adipiscing\n        </td>\n        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /SUB COPY HERE -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n    <tr>\n        <td width="216" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="118" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:2px;text-align:center;line-height:1;border-bottom: solid;">&nbsp;\n        </td>\n        <td width="216" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>  \n    </tr>\n    <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>  \n</table>  \n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    <!-- FIRST BOOK SECTION -->\n        <td width="251" valign="bottom">\n            <table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="251" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                        <a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;" target="_blank">\n        <!-- FIRST BOOK IMAGE PATH IN "SRC" BELOW & ALT TEXT INCLUDING AUTHOR -->\n                            <img src="https://cdn.kobo.com/book-images/42904535-777e-4161-8f63-d86ec7ad749e/353/569/90/False/cosmic-queries-2.jpg" width="251"  alt="Book title ${MT_COPY_BY} Author Name" style="display:block;" >\n                        </a>\n                    </td>\n                </tr>\n                <tr>\n                    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="251" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:38px;line-height:1.2;text-align: center;">\n        <!-- NOW PRICING BELOW -->\n                        $X.XX\n                    </td>\n                </tr>\n            </table>\n\n    <!-- WAS/SAVE PRICING DELETE IF NOT NEEDED -->\n            <table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="251" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;text-align: center;">\n                        ${MT_COPY_WAS} \n        <!-- FIRST BOOK WAS PRICING IN BETWEEN SPAN TAGS TO APPLY RED STRIKETHROUGH  -->\n                        <span style="text-decoration:line-through;color:#000000;text-decoration-color:#BF0000;">$X.xx</span>\n                    </td>\n                </tr>\n                <tr>\n\n                    <td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="251" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;text-align: center;">\n        <!-- FIRST BOOK SAVE PRICE BELOW -->\n                        ${MT_COPY_SAVE} $X.XX\n                    </td>\n                </tr>\n            </table>\n    <!-- / WAS/SAVE PRICING -->\n\n            <table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="1" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1.2;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="59" style="background-color:#BF0000;color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:bold;font-size:16px;text-align:center;line-height:1.2;">\n                        <a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="display:block;padding:10px;text-decoration: none;color: #FFFFFF">\n                        <!-- FIRST BOOK CTA COPY update if not ebook -->\n                            ${MT_COPY_BUYEBOOK}\n                        </a>\n                    </td>\n                    <td width="1" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1.2;mso-line-height-rule:exactly;">&nbsp;</td>\n<!-- SECOND BOOK SECTION -->\n        <td width="251" valign="bottom">\n            <table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="251" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                        <a href="${clickthrough(\'HERO2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;" target="_blank">\n        <!-- ADD IN SECOND IMAGE PATH & ALT TEXT -->\n                            <img src="https://cdn.kobo.com/book-images/b0643741-d812-484e-a654-8803c16aba5f/353/569/90/False/cosmic-queries-1.jpg" width="251"  alt="Book title ${MT_COPY_BY} Author Name" style="display:block;" >\n                        </a>\n                    </td>\n                </tr>\n                <tr>\n                    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="251" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:38px;line-height:1.2;text-align: center;">\n        <!-- SECOND NOW PRICING -->   \n                        FREE or $X.XX\n                    </td>\n                </tr>\n            </table>\n\n    <!-- 30-DAY TRIAL DELETE IF NOT NEEDED -->\n            <table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="251" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;text-align: center;">\n        <!-- 30-DAY TRIAL SUBCOPY --> \n                        with a 30-day \n                    </td>\n                </tr>\n                <tr>\n                    <td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="251" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;text-align: center;">\n                        trial or $XX.xx\n                    </td>\n                </tr>\n                <tr>\n                    <td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n    <!-- / 30-DAY TRIAL -->\n\n    <!-- WAS/SAVE PRICING DELETE IF NOT NEEDED -->\n            <table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="251" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;text-align: center;">\n                        ${MT_COPY_WAS} \n        <!-- SECOND BOOK WAS PRICING IN BETWEEN SPAN TAGS TO APPLY RED STRIKETHROUGH  -->\n                        <span style="text-decoration:line-through;color:#000000;text-decoration-color:#BF0000;">$X.xx</span>\n                    </td>\n                </tr>\n                <tr>\n\n                    <td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="251" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;text-align: center;">\n        <!-- SECOND BOOK SAVE PRICE BELOW -->\n                        ${MT_COPY_SAVE} $X.XX\n                    </td>\n                </tr>\n            </table>\n    <!-- / WAS/SAVE PRICING -->\n\n            <table role="presentation" width="251" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="1" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="59" style="background-color:#BF0000;color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:bold;font-size:16px;text-align:center;line-height:1.2;">\n                        <a href="${clickthrough(\'HERO2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="display:block;padding:10px;text-decoration: none;color: #FFFFFF">\n                        <!-- SECOND BOOK CTA COPY - update if not audiobook -->\n                            ${MT_COPY_BUYABOOK}\n                        </a>\n                    </td>\n                    <td width="1" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n        \n<!-- IF NO KSP DELETE TO END OF KSP -->\n    <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n            <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>   \n        <tr>\n            <td width="550" style="font-family: Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:26px;line-height:1.2;text-align: center;">\n        <!-- PASTE IN KSP COPY BELOW -->\n                Plus, earn <span style="font-weight:bold;">5x</span> the Kobo Super Points\n            </td>\n        </tr>\n        <tr>\n            <td width="550" style="font-family: Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:26px;line-height:1.2;text-align: center;">\n        <!-- PASTE IN KSP SECOND COPY BELOW -->\n                or <span style="font-weight:bold;">10x</span> the points if you’re a <img src="/contentlibrary/!componentlibrary/!mobilefirst/component_blocks/images/vip.png" height="50" alt="VIP" style="display:inline-block;vertical-align:middle;" border="0"> \n            </td>\n        </tr>\n    </table>\n<!-- /END OF KSP -->'
      }
    />
    <State
      id="hero_image"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '  <!-- Text Topper -  Delete if using Image Topper -->\n    <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <!-- Change background color as needed, default is black-->\n          <td width="550" height="51" style="background-color: #000000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n            — Topper —\n          </td>\n        </tr>\n    </table>\n  <!-- /Text Topper -->\n<!-- 1 image Hero - Don\'t forgot ALT text and heights -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n\t<tr>\n\t\t<td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n\t\t\t<a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;" target="_blank">\n\t\t\t\t<img src="images/XXXX" width="550" height="0" alt="Get the eBook" style="display:block;background:#bf0000;" border="0" />\n\t\t\t</a>\n\t\t</td>\n\t</tr>\n</table>\n<!-- /1 image Hero -->'
      }
    />
    <State
      id="trustpilot_review"
      value={
        '<!--TRUSTPILOT REVIEW-->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <tr>\n    <td height="24"\n      style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n      &nbsp;</td>\n  </tr>\n  <tr>\n    <td width="15"\n      style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n      &nbsp;</td>\n    <!--Left Side - Logo and Star Rating-->\n    <td style="font-family:arial,sans-serif;font-weight:normal;vertical-align:middle;" width="245">\n      <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="245">\n        <tr>\n          <td height="20"\n            style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            &nbsp;</td>\n        </tr>\n        <!--Trustpilot Logo-->\n        <tr>\n          <td style="font-family:arial,sans-serif;font-weight:normal;" width="245">\n            <!--Logo placeholder - update path, alt, height, width-->\n            <img src="https://cdn.kobo.com/merch-assets/magento/component-assets/trustpilot/trustpilot-logo.jpg"\n              alt="Trustpilot" width="215" height="53">\n          </td>\n        </tr>\n        <!--/ Trustpilot Logo-->\n        <tr>\n          <td height="16"\n            style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            &nbsp;</td>\n        </tr>\n        <!--Trustpilot Star Rating-->\n        <tr>\n          <td style="font-family:arial,sans-serif;font-weight:normal;" width="245">\n            <!--Star rating placeholder - update path, alt, height, width-->\n            <img src="https://cdn.kobo.com/merch-assets/magento/component-assets/trustpilot/trustpilot-5stars.jpg"\n              alt="5 out of 5 stars" width="245" height="47">\n          </td>\n        </tr>\n        <!--/ Trustpilot Star Rating-->\n        <tr>\n          <td height="16"\n            style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            &nbsp;</td>\n        </tr>\n        <!-- Review Author text-->\n        <tr>\n          <td\n            style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:700;font-size:16px;text-align:left;line-height:18px;"\n            width="245">\n            By Lee\n          </td>\n        </tr>\n        <!--/ Review Author text-->\n        <tr>\n          <td height="19"\n            style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            &nbsp;</td>\n        </tr>\n      </table>\n    </td>\n    <!--/ Left Side - Logo and Star Rating-->\n    <td width="24"\n      style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n      &nbsp;</td>\n    <!-- Right Side - Review text and Link-->\n    <td style="font-family:arial,sans-serif;font-weight:normal;vertical-align:middle;" width="251">\n      <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="251">\n        <!-- Review text-->\n        <tr>\n          <td\n            style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:400;font-size:16px;text-align:left;line-height:18px;"\n            width="251">\n            <!-- Placeholder text - fill in from brief-->\n            “Having owned several<br> Kobo ereaders, this is by far the best. It is responsive, meatier, and very\n            affordable compared to the competition. I have experienced no problems or glitches with my<br>\n            Kobo Libra 2. I would highly recommend!”\n          </td>\n        </tr>\n        <!--/ Review text-->\n        <tr>\n          <td height="24"\n            style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            &nbsp;</td>\n        </tr>\n        <!-- More reivews link-->\n        <tr>\n          <td\n            style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:700;font-size:16px;text-align:left;line-height:18px;"\n            width="251">\n\n            <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank"\n              style="color:#000000;">\n              <!-- Placeholder text - fill in from brief-->\n              Read more reviews >\n            </a>\n          </td>\n        </tr>\n        <!--/ More reivews link-->\n      </table>\n    </td>\n    <!--/  Right Side - Review text and Link-->\n    <td width="15"\n      style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n      &nbsp;</td>\n  </tr>\n  <tr>\n    <td height="24"\n      style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n      &nbsp;</td>\n  </tr>\n</table>\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <tr>\n    <td height="40"\n      style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n      &nbsp;</td>\n  </tr>\n</table>\n<!--/ TRUSTPILOT REVIEW-->'
      }
    />
    <State
      id="vipMemberSale"
      value={
        '<!-- VIP MEMBERSHIP SALE -->\n\n<!-- PromoCode -->     \n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color:#FFFFFF">\n    <tr>\n        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Icon - Delete if not needed  -->\n                <tr>\n                    <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                        <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="235" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="32" style="color:#EEEEEE;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:18px;text-align:center;line-height:1.2;">\n                                    <img  src="/contentlibrary/!componentlibrary/images/star.png" width="32" height="32" alt="" style="display:block;" border="0" /></td>\n                                <td width="235" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <tr>\n                    <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- /Icon - Delete if not needed  -->\n                <!-- Headline  -->\n                <tr>\n                    <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                        <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="423" style="color:#000000;font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:24px;text-align:center;line-height:1.2;">\n                                    Get 10% off, <br>get your first FREE book\n                                </td>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <!-- /Headline  -->\n                <tr>\n                    <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Subcopy  -->\n                <tr>\n                    <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                        <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="423" style="color:#000000;font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim netus commodo vestibulum platea lacus ultrices venenatis aliquet\n                                </td>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <!-- /Subcopy  -->\n                <tr>\n                    <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                 <!-- Promo Code  -->\n                <tr>\n                    <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                        <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="423" style="color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:22px;text-align:center;line-height:1.2;">\n                                    XXXXXXXXXXXXXX\n                                </td>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <!-- /Promo Code   -->\n                <tr>\n                    <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n\n            <!-- CTA - delete if not needed-->\n            <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="126" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;border: 1px solid #000000;">\n                        <a href="${clickthrough(\'KSP_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                            Redeem Now\n                        </a>\n                    </td>\n                    <td width="126" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n             <!-- / CTA -->\n\n        </td>\n        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n\n<!-- /PromoCode -->\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n  <tr>\n    <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n</table>\n\n<!-- BOOK SPOTLIGHT -->\n\n<table role="presentation"  width="550" align="left" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n    <tr>\n        <td width="16"style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="518" style="color:#fefefe;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:1px;text-align:center;">\n            <!-- HEADLINE CODE FOR "RECOMMENDATIONS" SPOTLIGHTS -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="516">\n                <tbody>\n                    <tr>\n                        <td width="34" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        <td width="52" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:19px;text-align:center;line-height:1.2;">\n                            <img alt="" height="2" width="52" style="display:block;background-color:#ffffff;" border="0" src="/contentlibrary/!componentlibrary/!mobilefirst/component_blocks/images/line1.jpg">\n                        </td>\n                        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        <td width="315" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:24px;text-align:center;line-height:28px;">\n                            <!-- MAIN TITLE COPY -->\n                            Sit id pretium mattis viverra consequat sit.\n                        </td>\n                        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        <td width="52" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:19px;text-align:center;line-height:1.2;">\n                            <img alt="" height="2" width="52" style="display:block;background-color:#ffffff;" border="0" src="/contentlibrary/!componentlibrary/!mobilefirst/component_blocks/images/line1.jpg">\n                        </td>\n                        <td width="33" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                </tbody>       \n            </table>\n            <table role="presentation"  border="0" cellpadding="0" cellspacing="0" width="518">\n                <tr><td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n            </table>    \n            <!-- /HEADLINE ENDS -->\n\n            <table role="presentation"  width="518" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n                <tr>\n                    <td width="247" valign="top">\n                        <table role="presentation"  width="247" align="center" border="0" cellpadding="0" cellspacing="0">\n                            <!-- BOOK IMAGE and update alt text. Keep "BY" Lookup -->\n                            <tr>\n                                <td width="247" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:22px;line-height:1.2;text-align:center;">     \n                                    <!-- tabindex="-1" means keyboard users will only need to click CTA for book link -> removing redundancies -->\n                                    <a tabindex="-1" href="${clickthrough(\'FT_BOOK1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;" target="_blank">\n                                        <img alt="Cosmos ${MT_COPY_BY} Carl Sagan" width="247" style="display:block;background-color:#ffffff;" border="0" src="https://cdn.kobo.com/book-images/362a218a-aadd-453e-a97a-5acae38c4f83/353/569/90/False/cosmos-8.jpg">\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>             \n                    </td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="247" valign="top">\n                        <table role="presentation"  width="247" align="center" border="0" cellpadding="0" cellspacing="0">\n                            <!-- BOOK TITLE -->\n                            <tr>\n                                <td width="247" valign="top" style="font-family:\'Trebuchet MS\';font-weight:bold;font-size:24px;line-height:1.2; color:#000000;text-align:left;">\n                                    BOOK TITLE\n                                </td>\n                            </tr>\n                            <!-- / BOOK TITLE ENDS-->\n                            <!-- AUTHOR -->\n                            <tr><td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            <tr>\n                                <td width="247" style="font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:normal;font-size:16px;line-height:1.2; color:#000000;text-align:left;">\n                                    AUTHOR\n                                </td>\n                            </tr>\n                            <!-- / AUTHOR ENDS -->\n                            <!-- DESCRIPTION -->       \n                            <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>  \n                            <tr>\n                                <td width="247" style="font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:normal;font-size:16px;line-height:1.2; color:#000000;text-align:left;">\n                                    DESCRIPTION. Cosmos is one of the bestselling science books of all time. In clear-eyed prose, Sagan reveals a jewel-like blue world inhabited by a life form that is just beginning to discover its own identity and to venture into the vast ocean of space.\n                                </td>\n                            </tr>\n                            <!-- / DESCRIPTION ENDS -->\n                        </table>\n\n                        <!-- PRICING INFO -->\n                        <table role="presentation" width="250" border="0" cellpadding="0" cellspacing="0">\n                            <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            <tr>\n                                <!-- NOW PRICE -->\n                                <td width="133" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:38px;text-align:center;line-height:1.2; color: #000000;">\n                                    <!-- PASTE LARGE NOW PRICE BELOW -->\n                                    XX.XX\n                                </td>\n                                <!-- / NOW PRICE ENDS -->\n                                <td width="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="109">\n                                    <table role="presentation" width="109" align="center" border="0" cellpadding="0" cellspacing="0">\n                                        <!-- WAS PRICE - PASTE IN PRICE, KEEP \'MT_COPY_WAS\' LOOKUP -->\n                                        <tr>\n                                            <td width="109" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;color: #000000;text-align:left;">\n                                                ${MT_COPY_WAS}: <span style="text-decoration:line-through;">XX.XX</span>\n                                            </td>\n                                        </tr>\n                                        <!-- / WAS PRICE ENDS -->\n\n                                        <!-- SAVE PRICE - PASTE IN PRICE, KEEP \'MT_COPY_SAVE\' LOOKUP -->\n                                        <tr>\n                                            <td width="109" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;color: #000000;text-align:left;">\n                                                ${MT_COPY_SAVE}: XX.XX\n                                            </td>  \n                                        </tr>\n                                        <!-- / SAVE PRICE ENDS --> \n                                    </table>\n                                </td>\n                            </tr>\n                        </table>\n                        <!-- / PRICING INFO ENDS -->  \n\n                        <!-- WHITE CTA -->\n                        <table role="presentation" width="250" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n                            <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            <tr>\n                                <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:20px;text-align:center;line-height:1.2;border: 1px solid #000000;">\n <a aria-label="TITLE ${MT_COPY_BY} AUTHOR. CTA COPY" href="${clickthrough(\'FT_BOOK1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                                        <!-- ADD CTA COPY IN BELOW -->\n                                        CTA COPY\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                        <!-- / WHITE CTA ENDS --> \n\n                    </td>\n                </tr>\n            </table>\n        </td>\n        <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tbody>\n        <tr><td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n    </tbody>\n</table>\n\n<!-- /BOOK SPOTLIGHT -->\n\n<!-- /VIP MEMBERSHIP SALE -->'
      }
    />
  </Folder>
  <Folder id="templateReskins">
    <State
      id="Weekly_Template_Reskin"
      value={
        '<!DOCTYPE html>\n<html lang="${HTML_LANGUAGE}">\n<head>\n<title>KOBO.COM</title>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\n<style>\n\t/* Common Overrides */\n\t\t* {line-height:normal;}\n\t\tbody {font-size:100% !important; margin:0 !important; padding:0 !important; -webkit-text-adjust:none;}\n\t\t.ExternalClass {width: 100%; line-height: 100%;}\n\t\t.ExternalClass p,\n\t\t.ExternalClass span,\n\t\t.ExternalClass font,\n\t\t.ExternalClass td{line-height: 100%;}\n\t\t::selection { color: #010101; background: #BF0000; }\n\t\t::-moz-selection { color: #010101; background: #BF0000; }\n\n\t\t/* Remove Apple Blue Links */\n\t\ta[x-apple-data-detectors] {\n\t\t\tcolor: inherit !important;\n\t\t\ttext-decoration: none !important;\n\t\t\tfont-size: inherit !important;\n\t\t\tfont-family: inherit !important;\n\t\t\tfont-weight: inherit !important;\n\t\t\tline-height: inherit !important;\n\t\t}\n</style>\n</head>\n<body>\n\n <!-- GENERAL COPY FOR ALL MAILINGS INCLUDES SHOP NOW BUY NOW VIEW ALL -->\n <#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/data_files/component_data_0603.htm\'>\n <#if BOOK1_WAS?isnull>\n \t<#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/data_files/weeklies_data.htm\'>  \n </#if>\n \n <!-- BOOK LOGIC and CODE -->\n <#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/data_files/bookline_weeklies_logic.htm\'>\n <#import \'cms://contentlibrary/!componentlibrary/!mobilefirst/data_files/booklines_weeklies_live.htm\' as bookline>\n\n\n<table role="presentation" width="100%" id="w100" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="table-layout:fixed;">\n\t<tr>\n\t\t<td width="550" align="center">\n\t\t\t<table role="presentation" width="550" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n\t\t\t\t<tr>\n\t\t\t\t\t<td width="550">\n            <!-- Preview Text -->\n            <table role="presentation" width="550" border="0" cellpadding="0" cellspacing="0">\n            \t<tr><td width="550" style="color:#fefefe;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:1px;text-align:center;">Preview Text - FILL THIS IN | </td></tr>\n            </table>\n            <!-- /Preview Text -->\n\n            <table role="presentation">\n              <tr><td data-content-region-name="SKIPS">DRAG SKIP LOGIC HERE</td></tr>\n            </table>\n\n            <!-- Header -->\n            <#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/header_footer/!masterheader.htm\'>\n            <!-- /Header -->\n\n            <!-- Hero  -->\n            COPY CODE FOR HERO (SELECT THE HERO FILE AS PER FIGMA)\n            \n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n              <tr><td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n            </table>\n            <!-- /Hero -->\n\t\t\t\t\t\t\n            <!-- Bookline 1 -->\n            <#if BL1_COUNTER gt 0 >\n              <!-- Bookline 1 Title -->\n              <#if BOOKLINE1_TITLE?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:22px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE1_TITLE}</#noescape>\n                    </td>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 1 Title -->\n              \n              <@bookline.DISPLAY_BOOKLINE1 NUM_BOOKS=BL1_COUNTER />\n\n              <!-- Bookline 1 View All CTA -->\n              <#if BOOKLINE1_LINK?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE1_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE1_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                      </a>\n                      </td>\n                      <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 1 View All CTA -->\n            </#if>\n            <!-- / Bookline 1 -->\n\n            <!-- Bookline 2 -->\n            <#if BL2_COUNTER gt 0 >\n              <!-- Bookline 2 Title -->\n              <#if BOOKLINE2_TITLE?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:22px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE2_TITLE}</#noescape>\n                    </td>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 2 Title -->\n\n              <@bookline.DISPLAY_BOOKLINE2 NUM_BOOKS=BL2_COUNTER />\n\n              <!-- Bookline 2 View All CTA -->\n              <#if BOOKLINE2_LINK?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE2_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE2_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                      </a>\n                      </td>\n                      <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 2 View All CTA -->\n            </#if>\n            <!-- / Bookline 2 -->\n\n            <!-- Bookline 3 -->\n            <#if BL3_COUNTER gt 0 >\n              <!-- Bookline 3 Title -->\n              <#if BOOKLINE3_TITLE?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:22px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE3_TITLE}</#noescape>\n                    </td>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 3 Title -->\n\n              <@bookline.DISPLAY_BOOKLINE3 NUM_BOOKS=BL3_COUNTER />\n\n              <!-- Bookline 3 View All CTA -->\n              <#if BOOKLINE3_LINK?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE3_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE3_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE3_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                      </a>\n                      </td>\n                      <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- Bookline 3 View All CTA -->\n            </#if>\n            <!-- / Bookline 3 -->\n\n            <!-- Bookline 4 -->\n            <#if BL4_COUNTER gt 0 >\n              <!-- Bookline 4 Title -->\n              <#if BOOKLINE4_TITLE?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:22px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE4_TITLE}</#noescape>\n                    </td>\n                    <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 4 Title -->\n\n              <@bookline.DISPLAY_BOOKLINE4 NUM_BOOKS=BL4_COUNTER />\n\n              <!-- Bookline 4 View All CTA -->\n              <#if BOOKLINE4_LINK?has_content>\n                <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE4_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE4_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE4_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                      </a>\n                      </td>\n                      <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                </table>\n              </#if>\n              <!-- / Bookline 4 View All CTA -->\n            </#if>\n            <!-- / Bookline 4 -->\n\n            <!-- Bookline 5 -->\n            <#if BL5_COUNTER gt 0 >\n            <#if BOOKLINE5_TITLE?has_content>\n              <!-- Bookline 5 Title -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                  <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  <td width="516" style="color:#010101;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:22px;text-align:center;line-height:1.2;"><#noescape>${BOOKLINE5_TITLE}</#noescape>\n                  </td>\n                  <td width="17" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              <!-- / Bookline 5 Title -->\n              </#if>\n              \n              <@bookline.DISPLAY_BOOKLINE5 NUM_BOOKS=BL5_COUNTER />\n\n              <#if BOOKLINE5_LINK?has_content>\n              <!-- Bookline 5 View All CTA -->\n              <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                  <tr>\n                    <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:center;line-height:1.2;border: 1px #000000 solid;"><a href="${clickthrough(\'BOOKLINE5_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                      <#if BOOKLINE5_CTA_TYPE == "ebook">${MT_COPY_VIEWALL_EBOOK}\n                      <#elseif BOOKLINE5_CTA_TYPE == "abook">${MT_COPY_VIEWALL_ABOOK}\n                      <#else>${MT_COPY_VIEWALL}\n                      </#if>\n                    </a>\n                    </td>\n                    <td width="150" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                <tr><td height="40" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              </table>\n              </#if>\n              <!-- Bookline 5 View All CTA -->\n            </#if>\n            <!-- / Bookline 5 -->\n       \n            <!-- Footer -->\n            <#include \'cms://contentlibrary/!componentlibrary/!mobilefirst/header_footer/!masterfooter.htm\'>\n            <!-- /Footer -->\n\n            <!-- Legal Section  -->\n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" bgcolor="#DADADA">\n              <tr>\n                <td width="550">\n                  <!-- LEGAL 1 - DELETE IF NOT NEEDED -->\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">\n                        <b>Legal Heading:</b> <br />Legal Copy <a href="${clickthrough(\'LEGAL1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:underline;" target="_blank">Legal Link</a>\n                      </td>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                  <!-- / LEGAL 1 -->\n\n                  <!-- LEGAL 2 - DELETE IF NOT NEEDED -->\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">\n                        <b>Legal Heading:</b> <br />Legal Copy <a href="${clickthrough(\'LEGAL2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:underline;" target="_blank">Legal Link</a>\n                      </td>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                  <!-- / LEGAL 2 -->\n\n                  <!-- LEGAL 3 - DELETE IF NOT NEEDED -->\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">\n                        <b>Legal Heading:</b> <br />Legal Copy <a href="${clickthrough(\'LEGAL3_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:underline;" target="_blank">Legal Link</a>\n                      </td>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                  <!-- / LEGAL 3 -->\n\n                  <!-- LEGAL 4 - DELETE IF NOT NEEDED -->\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">\n                        <b>Legal Heading:</b> <br />Legal Copy <a href="${clickthrough(\'LEGAL4_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:underline;" target="_blank">Legal Link</a>\n                      </td>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                  <!-- / LEGAL 4 -->\n\n                  <!-- LEGAL 5 - DELETE IF NOT NEEDED -->\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">\n                        <b>Legal Heading:</b> <br />Legal Copy <a href="${clickthrough(\'LEGAL5_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:underline;" target="_blank">Legal Link</a>\n                      </td>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                  <!-- / LEGAL 5 -->\n\n                  <!-- LEGAL 6 - DELETE IF NOT NEEDED -->\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">\n                        <b>Legal Heading:</b> <br />Legal Copy <a href="${clickthrough(\'LEGAL6_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:underline;" target="_blank">Legal Link</a>\n                      </td>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                  <!-- / LEGAL 6 -->\n\n                  <!-- LEGAL 7 - DELETE IF NOT NEEDED -->\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">\n                        <b>Legal Heading:</b> <br />Legal Copy <a href="${clickthrough(\'LEGAL7_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:underline;" target="_blank">Legal Link</a>\n                      </td>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                  <!-- / LEGAL 7 -->\n\n                  <!-- LEGAL 8 - DELETE IF NOT NEEDED -->\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:left;line-height:1.2;">\n                        <b>Legal Heading:</b> <br />Legal Copy <a href="${clickthrough(\'LEGAL8_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:underline;" target="_blank">Legal Link</a>\n                      </td>\n                      <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                  <!-- / LEGAL 8 -->   \n                   \n                  <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                    <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                  </table>\n                </td>\n              </tr>\n            </table>\n            <!-- /Legal section  -->\n\n\t\t\t\t\t</td>\n\t\t\t\t</tr>\n\t\t\t</table>\n\t\t</td>\n    </tr>\n</table>\n</body>\n</html>'
      }
    />
    <State
      id="bookSpotlight"
      value={
        '<!-- BOOK SPOTLIGHT -->\n\n<table role="presentation"  width="550" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n    <tr>\n        <td width="16"style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="518" style="color:#fefefe;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:1px;text-align:center;">\n            <!-- MAY WE SUGGEST HEADLINE -->\n            <table role="presentation"  border="0" cellpadding="0" cellspacing="0" width="518">\n                <tbody>\n                    <tr>\n                        <td width="124" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        <td width="24" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:19px;text-align:center;line-height:1.2;">\n                            <img alt="" height="1" width="24" style="display:block;background-color:#ffffff;" border="0" src="/contentlibrary/!componentlibrary/!mobilefirst/component_blocks/images/line1.jpg">\n                        </td>\n                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        <td width="174" style="color:#000000;font-family: Georgia;font-size: 24px;font-style: italic;font-weight: 400;line-height: 27px;letter-spacing: 0px;text-align: center;">\n                            <!-- MAIN TITLE COPY -->\n                            May we suggest\n                        </td>\n                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        <td width="24" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:19px;text-align:center;line-height:1.2;">\n                            <img alt="" height="1" width="24" style="display:block;background-color:#ffffff;" border="0" src="/contentlibrary/!componentlibrary/!mobilefirst/component_blocks/images/line1.jpg">\n                        </td>\n                        <td width="124" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                </tbody>       \n            </table>\n            <table role="presentation"  border="0" cellpadding="0" cellspacing="0" width="518">\n                <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n            </table>\n            <!-- / MAY WE SUGGEST HEADLINE ENDS -->\n\n            <!-- HEADLINE -->\n            <table role="presentation"  border="0" cellpadding="0" cellspacing="0" width="518">\n                <tr>\n                    <td width="518" style="color:#000000;font-family: Trebuchet MS;font-size: 32px;font-weight: 400;line-height: 37px;letter-spacing: 0px;text-align: center;">\n                        HEADLINE\n                    </td>\n                </tr>\n            </table>\n            <table role="presentation"  border="0" cellpadding="0" cellspacing="0" width="518">\n                <tr><td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n            </table>    \n            <!-- /HEADLINE ENDS -->\n\n            <table role="presentation"  width="518" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n                <tr>\n                    <td width="247" valign="top">\n                        <table role="presentation"  width="247" align="center" border="0" cellpadding="0" cellspacing="0">\n                            <!-- BOOK IMAGE and update alt text. Keep "BY" Lookup -->\n                            <tr>\n                                <td width="247" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:22px;line-height:1.2;text-align:center;">     \n                                    <!-- tabindex="-1" means keyboard users will only need to click CTA for book link, removing redundancies -->\n                                    <a tabindex="-1" href="${clickthrough(\'FT_BOOK1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;" target="_blank">\n                                        <img alt="Cosmos ${MT_COPY_BY} Carl Sagan" width="247" style="display:block;background-color:#ffffff;" border="0" src="https://cdn.kobo.com/book-images/362a218a-aadd-453e-a97a-5acae38c4f83/353/569/90/False/cosmos-8.jpg">\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>             \n                        <!-- CTA for KOBO PLUS SPOTLIGHT -->\n                        <table role="presentation"  width="247" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n                            <tr><td height="30" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            <tr>\n                                <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:20px;text-align:center;line-height:1.2;border: 1px solid #000000;">\n                                    <!-- ADD BOOK COVER AND UPDATE ARIA-LABEL WITH BOOK TITLE, AUTHOR, & CTA COPY. KEEP "BY" LOOKUP  -->\n                                    <a aria-label="TITLE ${MT_COPY_BY} AUTHOR. CTA COPY" href="${clickthrough(\'FT_BOOK1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                                        <!-- CTA COPY -->\n                                        CTA COPY\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                        <!-- / KOBO PLUS CTA -->\n                    </td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="247" valign="top">\n                        <table role="presentation"  width="247" align="center" border="0" cellpadding="0" cellspacing="0">\n                            <!-- BOOK TITLE -->\n                            <tr>\n                                <td width="247" valign="top" style="font-family:\'Trebuchet MS\';font-weight:bold;font-size:24px;line-height:1.2; color:#000000;text-align:left;">\n                                    BOOK TITLE\n                                </td>\n                            </tr>\n                            <!-- / BOOK TITLE ENDS-->\n                            <!-- AUTHOR -->\n                            <tr><td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            <tr>\n                                <td width="247" style="font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:normal;font-size:16px;line-height:1.2; color:#000000;text-align:left;">\n                                    AUTHOR\n                                </td>\n                            </tr>\n                            <!-- / AUTHOR ENDS -->\n                            <!-- NARRATOR -->\n                            <tr><td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            <tr>\n                                <td width="247" style="font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:normal;font-size:16px;line-height:1.2; color:#000000;text-align:left;">\n                                    NARRATOR\n                                </td>\n                            </tr>\n                            <!-- / NARRATOR ENDS --> \n                            <!-- DESCRIPTION -->       \n                            <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>  \n                            <tr>\n                                <td width="247" style="font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:normal;font-size:16px;line-height:1.2; color:#000000;text-align:left;">\n                                    DESCRIPTION. Cosmos is one of the bestselling science books of all time. In clear-eyed prose, Sagan reveals a jewel-like blue world inhabited by a life form that is just beginning to discover its own identity and to venture into the vast ocean of space.\n                                </td>\n                            </tr>\n                            <!-- / DESCRIPTION ENDS -->\n                        </table>\n\n                        <!-- WHITE CTA remove if not needed  -->\n                        <table role="presentation"  width="247" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n                            <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            <tr>\n                                <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:20px;text-align:center;line-height:1.2;border: 1px solid #000000;">\n                                    <!-- ADD BOOK COVER AND UPDATE ARIA-LABEL WITH BOOK TITLE, AUTHOR, & CTA COPY. KEEP "BY" LOOKUP  -->\n                                    <a aria-label="TITLE ${MT_COPY_BY} AUTHOR. CTA COPY" href="${clickthrough(\'FT_BOOK1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                                        <!-- CTA COPY -->\n                                        CTA COPY\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                        <!-- / WHITE CTA ENDS --> \n\n                        <!-- RED CTA remove if not needed -->\n                        <table role="presentation"  width="247" align="center" border="0" cellpadding="0" cellspacing="0" style="margin:0 auto;">\n                            <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            <tr>\n                                <td height="66" style="text-align: center; line-height: 29px; background: #BF0000;">\n                                    <!-- ADD BOOK COVER AND UPDATE ARIA-LABEL WITH BOOK TITLE, AUTHOR, & CTA COPY. KEEP "BY" LOOKUP  -->\n                                    <a aria-label="TITLE ${MT_COPY_BY} AUTHOR. CTA COPY" href="${clickthrough(\'FT_BOOK1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="font-weight: bold;display: block;line-height: 1.2; text-align: center; text-decoration: none; font-family:Trebuchet MS; font-size: 20px;color: #ffffff;padding:10px 0;"> \n                                        CTA COPY\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                        <!-- / RED CTA ENDS -->\n\n                    </td>\n                </tr>\n            </table>\n        </td>\n        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n\n<table role="presentation"  border="0" cellpadding="0" cellspacing="0" width="550">\n    <tbody>\n        <tr><td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n    </tbody>\n</table>\n\n<!-- /BOOK SPOTLIGHT -->'
      }
    />
    <State
      id="deviceBooklineReskin"
      value={
        '<!--Device Bookline -->\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td width="16"style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n        <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                <tbody>\n                    <!-- Headline  -->\n                    <tr>\n                        <td colspan="3" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:22px;text-align:center;line-height:1.2;" width="518">\n                            <!-- Update headline here  -->\n                            Tellus lorem in eros venenatis ornare lobortis.\n                        </td>\n                    </tr>\n                    <!-- /Headline  -->\n                    <tr><td height="36" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                    <!-- Device line  -->\n                    <tr>\n                        <td width="518" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                                <tr>\n                                    <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                    <!-- Device 1 -->\n                                    <td width="146" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" valign="top">\n                                        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="146">\n                                            <tbody>\n                                                <tr>\n                                                    <td style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- tabindex="-1" means keyboard users will only need to click CTA for book link -> removing redundancies -->\n                                                        <a tabindex="-1" href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                                                            <!-- Add image BUT LEAVE ALT-TEXT NULL   -->\n                                                            <img src="images/device-1.png" alt="" width="146" height="146">\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <a href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;" target="_blank">\n                                                            <!-- Update device name here   -->\n                                                            DEVICE 1 NAME\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- Update WAS price here   -->\n                                                        ${MT_COPY_WAS} <span style="text-decoration: line-through; color: #000000;font-size: 18px;">$XXX.XX</span>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- Update NOW price here   -->\n                                                        ${MT_COPY_NOW} <span style="font-size:18px;">$XXX.XX</span> \n                                                    </td>\n                                                </tr>\n                                            </tbody>\n                                        </table>\n                                    </td>\n                                    <!-- /Device 1 -->\n                                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                    <!-- Device 2 -->\n                                    <td width="146" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" valign="top">\n                                        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="146">\n                                            <tbody>\n                                                <tr>\n                                                    <td style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- tabindex="-1" means keyboard users will only need to click CTA for book link -> removing redundancies -->\n                                                        <a tabindex="-1" href="${clickthrough(\'DEVICE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                                                            <!-- Add image BUT LEAVE ALT-TEXT NULL   -->\n                                                            <img src="images/device-2.png" alt="" width="146" height="146">\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <a href="${clickthrough(\'DEVICE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;" target="_blank">\n                                                            <!-- Update device name here   -->\n                                                            DEVICE 2 NAME\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- Update WAS price here   -->\n                                                        ${MT_COPY_WAS} <span style="text-decoration: line-through; color: #000000;font-size: 18px;">$XXX.XX</span>\n                                                    </td>\n                                                </tr>\n                                                <tr>\n                                                    <td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                </tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- Update NOW price here   -->\n                                                        ${MT_COPY_NOW} <span style="font-size:18px;">$XXX.XX</span>\n                                                    </td>\n                                                </tr>\n                                            </tbody>\n                                        </table>\n                                    </td>\n                                    <!-- /Device 2 -->\n                                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                    <!-- Device 3 -->\n                                    <td width="146" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" valign="top">\n                                        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="146">\n                                            <tbody>\n                                                <tr>\n                                                    <td style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:12px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- tabindex="-1" means keyboard users will only need to click CTA for book link -> removing redundancies -->\n                                                        <a tabindex="-1" href="${clickthrough(\'DEVICE3_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                                                            <!-- Add image BUT LEAVE ALT-TEXT NULL   -->\n                                                            <img src="images/device-3.png" alt="" width="146" height="146">\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="10" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <a href="${clickthrough(\'DEVICE3_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;" target="_blank">\n                                                            <!-- Update device name here   -->\n                                                            DEVICE 3 NAME\n                                                        </a>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- Update WAS price here   -->\n                                                        ${MT_COPY_WAS} <span style="text-decoration: line-through; color: #000000;font-size: 18px;">$XXX.XX</span>\n                                                    </td>\n                                                </tr>\n                                                <tr><td height="5" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                <tr>\n                                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;" width="146">\n                                                        <!-- Update NOW price here   -->\n                                                        ${MT_COPY_NOW} <span style="font-size:18px;">$XXX.XX</span>\n                                                    </td>\n                                                </tr>\n                                            </tbody>\n                                        </table>\n                                    </td>\n                                    <!-- /Device 3 -->\n                                     <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                    <!-- /Device line  -->\n                    <tr><td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                    <!-- CTA section  -->\n                    <tr>\n                        <td width="134" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        <td height="64" style="background-color:#ffffff;border: 1px solid #000000; color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;">\n                            <a href="${clickthrough(\'CTA1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px;" target="_blank">\n                                ${MT_COPY_VIEWALL_EREADER}\n                            </a>\n                        </td>\n                        <td width="134" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <!-- /CTA section  -->\n                </tbody>\n            </table>\n        </td>\n        <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!--/ Device Bookline -->'
      }
    />
    <State
      id="deviceContentCardListReskin"
      value={
        '<!-- Device Content Card  -->\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td width="51" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="448" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1.2;mso-line-height-rule:exactly;">\n            <!-- DEVICE IMAGE -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="448">\n                <tr>\n                    <td width="448" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.2;">\n                        <a tabindex="-1" href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                            <!-- Add image and fill in Alt-text with the device name  -->\n                            <img alt="Device name" src="/contentlibrary/!componentlibrary/images/kobo-clara-placeholder.jpg" width="448" height="408" style="display:block;" border="0" />\n                        </a>\n                    </td>\n                </tr>\n            </table>\n\n            <!-- LIST OF FEATURES -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="448">\n                <tr>\n                    <td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="400" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;line-height:1.2;text-align:left;">\n                        <!-- FEATURES COPY -->\n                        <ul style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;line-height:1.2;text-align:left;margin-bottom:0;margin-top:0;">\n                            <li style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.2;text-align:left;margin-bottom:5px;">Lorem ipsum dolor sit amet consectetur. Pulvinar</li>\n                            <li style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.2;text-align:left;margin-bottom:5px;">vestibulum nibh tortor lacus. Massa senectus leo</li>\n                            <li style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.2;text-align:left;margin-bottom:5px;">dictum tempor. Massa diam a morbi quam ipsum.</li>\n                            <li style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.2;text-align:left;margin-bottom:0px;">Aliquet non condimentum enim mauris vivamus.</li>\n                        </ul>         \n                    </td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- / LIST OF FEATURES ENDS -->\n\n                <!-- PRICING -->\n                <!-- DELETE IF NO NOW PRICE -->\n                <tr>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="400" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:36px;line-height:1.2;text-align:center;">\n                    <!-- DEVICE "NOW" PRICE -->\n                        $XX.XX       \n                    </td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- / DELETE IF NO NOW PRICE -->\n\n                <!-- DELETE IF NO WAS/SAVE PRICE -->\n                <tr>\n                    <td colspan="3" height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>   \n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="400" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;text-align:center;">\n                        <!-- DEVICE "WAS" PRICE -->\n                        ${MT_COPY_WAS}: <span style="text-decoration:line-through;color:#000000;">$XX.XX</span> ${MT_COPY_SAVE}: $XX.XX\n                    </td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- / DELETE IF NO WAS PRICE -->\n                <!-- / PRICING ENDS -->\n            </table>\n\n            <!-- CTA -->\n            <table role="presentation" width="448" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;border: 1px solid #000000;">\n                        <!-- UPDATE ARIA-LABEL WITH CTA AND DEVICE NAME (EX. "BUY KOBO CLARA") -->\n                        <a aria-label="CTA COPY DEVICE NAME" href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                            <!--  CTA COPY (EX. "BUY KOBO CLARA") -->\n                            Secondary CTA\n                        </a>\n                    </td>\n                    <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n\n                <!-- LEGAL - Delete if not needed  -->\n                <tr>\n                    <td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="250" style="color: #000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.2;text-align:center;">\n                        SALE ENDS AT MIDNIGHT      \n                    </td>\n                    <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- /LEGAL - Delete if not needed  -->\n                <tr>\n                    <td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n            <!-- / CTA -->\n\n        <td width="51" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Device Content Card  -->'
      }
    />
    <State
      id="deviceContentCardParagraphReskin"
      value={
        '<!-- Device Content Card  -->\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td width="51" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="448" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1.2;mso-line-height-rule:exactly;">\n            <!-- DEVICE IMAGE -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="448">\n                <tr>\n                    <td width="448" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.2;">\n                        <a tabindex="-1" href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="text-decoration:none;" target="_blank">\n                            <!-- Add image and fill in Alt-text with the device name  -->\n                            <img alt="Device name" src="/contentlibrary/!componentlibrary/images/kobo-clara-placeholder.jpg" width="448" height="408" style="display:block;" border="0" />\n                        </a>\n                    </td>\n                </tr>\n            </table>\n\n            <!-- LIST OF FEATURES -->\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="448">\n                <tr>\n                    <td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="400" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;line-height:1.2;text-align:left;">\n                        <!-- FEATURES COPY -->\n                        <ul style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;line-height:1.2;text-align:left;margin-bottom:0;margin-top:0;">\n                            <li style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.2;text-align:left;margin-bottom:5px;">Lorem ipsum dolor sit amet consectetur. Pulvinar</li>\n                            <li style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.2;text-align:left;margin-bottom:5px;">vestibulum nibh tortor lacus. Massa senectus leo</li>\n                            <li style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.2;text-align:left;margin-bottom:5px;">dictum tempor. Massa diam a morbi quam ipsum.</li>\n                            <li style="font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;color:#000000;letter-spacing:0.09px;line-height:1.2;text-align:left;margin-bottom:0px;">Aliquet non condimentum enim mauris vivamus.</li>\n                        </ul>         \n                    </td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- / LIST OF FEATURES ENDS -->\n\n                <!-- PRICING -->\n                <!-- DELETE IF NO NOW PRICE -->\n                <tr>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="400" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:36px;line-height:1.2;text-align:center;">\n                    <!-- DEVICE "NOW" PRICE -->\n                        $XX.XX       \n                    </td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- / DELETE IF NO NOW PRICE -->\n\n                <!-- DELETE IF NO WAS/SAVE PRICE -->\n                <tr>\n                    <td colspan="3" height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>   \n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="400" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;line-height:1.2;text-align:center;">\n                        <!-- DEVICE "WAS" PRICE -->\n                        ${MT_COPY_WAS}: <span style="text-decoration:line-through;color:#000000;">$XX.XX</span> ${MT_COPY_SAVE}: $XX.XX\n                    </td>\n                    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- / DELETE IF NO WAS PRICE -->\n                <!-- / PRICING ENDS -->\n            </table>\n\n            <!-- CTA -->\n            <table role="presentation" width="448" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;border: 1px solid #000000;">\n                        <!-- UPDATE ARIA-LABEL WITH CTA AND DEVICE NAME (EX. "BUY KOBO CLARA") -->\n                        <a aria-label="CTA COPY DEVICE NAME" href="${clickthrough(\'DEVICE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                            <!--  CTA COPY (EX. "BUY KOBO CLARA") -->\n                            Secondary CTA\n                        </a>\n                    </td>\n                    <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n\n                <!-- LEGAL - Delete if not needed  -->\n                <tr>\n                    <td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="250" style="color: #000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;line-height:1.2;text-align:center;">\n                        SALE ENDS AT MIDNIGHT      \n                    </td>\n                    <td width="99" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- /LEGAL - Delete if not needed  -->\n                <tr>\n                    <td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n            <!-- / CTA -->\n\n        <td width="51" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Device Content Card  -->'
      }
    />
    <State
      id="promoCode"
      value={
        '<!-- PromoCode -->     \n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color:#FFFFFF">\n    <tr>\n        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n            <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Icon - Delete if not needed  -->\n                <tr>\n                    <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                        <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="235" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="32" style="color:#EEEEEE;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:18px;text-align:center;line-height:1.2;">\n                                    <img  src="/contentlibrary/!componentlibrary/images/star.png" width="32" height="32" alt="" style="display:block;" border="0" /></td>\n                                <td width="235" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <tr>\n                    <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- /Icon - Delete if not needed  -->\n                <!-- Headline  -->\n                <tr>\n                    <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                        <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="423" style="color:#000000;font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:24px;text-align:center;line-height:1.2;">\n                                    Get 10% off, <br>get your first FREE book\n                                </td>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <!-- /Headline  -->\n                <tr>\n                    <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Subcopy  -->\n                <tr>\n                    <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                        <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="423" style="color:#000000;font-family: \'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim netus commodo vestibulum platea lacus ultrices venenatis aliquet\n                                </td>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <!-- /Subcopy  -->\n                <tr>\n                    <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                 <!-- Promo Code  -->\n                <tr>\n                    <td width="502" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                        <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="423" style="color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:22px;text-align:center;line-height:1.2;">\n                                    XXXXXXXXXXXXXX\n                                </td>\n                                <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <!-- /Promo Code   -->\n                <tr>\n                    <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n\n            <!-- CTA - delete if not needed-->\n            <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="126" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;border: 1px solid #000000;">\n                        <a href="${clickthrough(\'KSP_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                            Redeem Now\n                        </a>\n                    </td>\n                    <td width="126" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n             <!-- / CTA -->\n\n        </td>\n        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n\n<!-- /PromoCode -->'
      }
    />
    <State
      id="trustpilotReviewReskin"
      value={
        '<!-- Trustpilot Feature  -->\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="6">&nbsp;</td>\n\n        <!-- Feature 1  -->\n        <td width="537">\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="537">\n                <tbody>\n                    <tr>\n                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n\n                        <td width="489">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="489">\n                                <tr><td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                <!-- Star Rating and Trustpilot logo  -->\n                                <tr>\n                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="150">\n                                        <img src="/contentlibrary/!componentlibrary/images/trustpilot-ratings.png" alt="5 out of 5 stars" width="172" height="33" style="display: block;">\n                                    </td>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="166">&nbsp;</td>\n                                    <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="167">\n                                        <img src="/contentlibrary/!componentlibrary/images/trustpilot-logo-v3.jpg" alt="Trustpilot" width="167" height="52" style="display: block;">\n                                    </td>\n                                </tr>\n                                <!-- /Star Rating and Trustpilot logo   -->\n                                <tr><td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                <!-- Review Author text-->\n                                <tr>\n                                    <td colspan="3" style="color:#000000;font-family:Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:18px;text-align:left;line-height:1.2;" width="489">\n                                        <span style="font-weight: bold;">Lee</span>, Kobo customer from [Country]\n                                    </td>\n                                </tr>\n                                <!--/ Review Author text-->\n                                <tr><td height="15" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                <!-- Review text-->\n                                <tr>\n                                    <td colspan="3" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:400;font-size:16px;text-align:left;line-height:1.2;" width="251">\n                                        <!-- Placeholder text - fill in from brief-->\n                                        “Having owned several Kobo ereaders, this is by far the best.\n                                        <br>\n                                        It is responsive, meatier, and very affordable compared to the competition. I have experienced no problems or glitches with my\n                                        Kobo Libra 2. I would highly recommend!”\n                                    </td>\n                                </tr>\n                                <!--/ Review text-->\n                                <tr><td height="25" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                <!-- More reivews link-->\n                                <tr>\n                                    <td colspan="3" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:700;font-size:16px;text-align:left;line-height:1.2;" width="489">\n                                        <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank"\n                                        style="color:#000000;">\n                                        <!-- Placeholder text - fill in from brief-->\n                                        Read more reviews >\n                                        </a>\n                                    </td>\n                                </tr>\n                                <!--/ More reivews link-->\n                                <tr><td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                            </table>\n                        </td>\n\n                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                    </tr>\n                </tbody>\n            </table>\n        </td>\n        <!-- /Feature 1  -->\n\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="7">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Trustpilot Feature  -->'
      }
    />
  </Folder>
  <Folder id="objects">
    <State
      id="bookSpotlightObj"
      value={
        '[\n  {\n    keyword: ["Headline"],\n    startComment: "MAY WE SUGGEST HEADLINE",\n    endComment: "MAY WE SUGGEST HEADLINE ENDS",\n    placeholder: "May we suggest"\n  },\n  {\n    keyword: ["Subcopy"],\n    startComment: "HEADLINE",\n    endComment: "HEADLINE ENDS",\n    placeholder: "HEADLINE"\n  },\n{\n    keyword: ["Noel"],\n    startComment: "CTA for KOBO PLUS SPOTLIGHT",\n    endComment: "KOBO PLUS CTA",\n    placeholder: "Noel"\n  },\n  {\n    keyword: ["Title"],\n    startComment: "",\n    endComment: "",\n    placeholder: "BOOK TITLE"\n  },\n  {\n    keyword: ["Author"],\n    startComment: "",\n    endComment: "",\n    placeholder: "AUTHOR"\n  },\n  {\n    keyword: ["Narrator"],\n    startComment: "NARRATOR",\n    endComment: "NARRATOR ENDS",\n    placeholder: "NARRATOR"\n  },\n  {\n    keyword: ["Description"],\n    startComment: "",\n    endComment: "",\n    placeholder: "DESCRIPTION. Cosmos is one of the bestselling science books of all time. In clear-eyed prose, Sagan reveals a jewel-like blue world inhabited by a life form that is just beginning to discover its own identity and to venture into the vast ocean of space."\n  }, \n  {\n    keyword: ["CTA"],\n    startComment: "",\n    endComment: "",\n    placeholder: "CTA COPY"\n  },\n{\n    keyword: ["Red"],\n    startComment: "RED CTA remove if not needed",\n    endComment: "RED CTA ENDS",\n    placeholder: "Der"\n  }\n]'
      }
    />
    <State
      id="deviceBooklineObj"
      value={
        '[\n{\nkeyword: ["Headline"],\nstartComment: "",\nendComment: "",\nplaceholder: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",\n},\n{\nkeyword: ["Headline"],\nstartComment: "",\nendComment: "",\nplaceholder: "Tellus lorem in eros venenatis ornare lobortis.",\n},\n{keyword: ["Device 1"],\nstartComment: "",\nendComment: "",\nplaceholder: "DEVICE 1 NAME",\n},\n{keyword: ["Price"],\nstartComment: "",\nendComment: "",\nplaceholder: "$XXX.XX",\n},\n{keyword: ["Device 2"],\nstartComment: "",\nendComment: "",\nplaceholder: "DEVICE 2 NAME",\n},\n{keyword: ["Price"],\nstartComment: "",\nendComment: "",\nplaceholder: "$XXX.XX",\n},\n{keyword: ["Device 3"],\nstartComment: "",\nendComment: "",\nplaceholder: "DEVICE 3 NAME",\n},\n{keyword: ["Price"],\nstartComment: "",\nendComment: "",\nplaceholder: "$XXX.XX",\n},\n{keyword: ["CTA"],\nstartComment: "",\nendComment: "",\nplaceholder: "${MT_COPY_VIEWALL_EREADER}",\n}\n]'
      }
    />
    <State
      id="directDeviceObj"
      value={
        '[\n  {\n    keyword: ["Description - (bulleted list of retail points from device M&P)"],\n    startComment: "LIST OF FEATURES",\n    endComment: "LIST OF FEATURES ENDS",\n    placeholder: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque elit faucibus id mattis at nisl lobortis. Morbi enim vitae faucibus posuere massa auctor iaculis mattis. Enim sit rhoncus facilisis a lacus est fermentum est. Sed enim non duis amet donec adipiscing malesuada ut netus. Rhoncus nibh amet id mollis ut.",\n  },\n  {\n  keyword: ["Noel"],\n  startComment: "DEVICE LEGAL COPY - DELETE IF NOT NEEDED",\n  endComment: "DEVICE LEGAL COPY - DELETE IF NOT NEEDED",\n  placeholder: "*dependent on individual usage",\n  },\n  {\n   keyword: ["Pricing"],\n    startComment: "",\n    endComment: "",\n    placeholder: "",\n  },\n  {\n   keyword: ["Was:","Was"],\n    startComment: "DELETE IF NO WAS PRICE",\n    endComment: "DELETE IF NO WAS PRICE",\n    placeholder: "$XXX.XX",\n  },\n  {\n    keyword: ["Now:","Now"],\n    startComment: "DELETE IF NO NOW PRICE",\n    endComment: "DELETE IF NO NOW PRICE",\n    placeholder: "$XXX.XX",\n  },\n {\n    keyword: ["Save:","Save"],\n    startComment: "DELETE IF NO SAVE PRICE",\n    endComment: "DELETE IF NO SAVE PRICE",\n    placeholder: "$XX.XX",\n  },\n  {\n    keyword: ["CTA"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "CTA COPY",\n  },\n {\n    keyword: ["CTA"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "CTA COPY DEVICE NAME",\n  },\n    {\n    keyword: ["Legal", "Legal/Expiry", "Expiry", "Expiration", "Disclaimer"],\n    startComment: "LEGAL - Delete if not needed ",\n    endComment: "LEGAL - Delete if not needed ",\n    placeholder: "SALE ENDS AT MIDNIGHT",\n  }\n]'
      }
    />
    <State
      id="ftBlogObj"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '[\n    {\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "Lorem ipsum<br> dolor sit amet, consectetur elit",\n    },\n    {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Lorem ipsum dolor sit amet",\n    },\n    { keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Semper diam in",\n    },\n] '
      }
    />
    <State
      id="ftLeftObj"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '[\n    {\n    keyword: ["Topper"],\n    startComment: "Topper",\n    endComment: "Topper",\n    placeholder: "— Topper —",\n    },\n    {\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "HEADLINE",\n    },\n    {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Subcopy - Lorem ipsum dolor sit amet, consectetur adipiscing elit.",\n    },\n    {\n    keyword: ["Was"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "XX.XX",\n    },\n    {\n    keyword: ["Now"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "XX.XX",\n    },\n    {\n    keyword: ["Save"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "XX.XX",\n    },\n    { keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Secondary Button",\n    },\n    {\n    keyword: ["Legal", "Legal/Expiry", "Expiry", "Expiration", "Disclaimer"],\n    startComment: "Expiry",\n    endComment: "Expiry",\n    placeholder: "SALE ENDS AT MIDNIGHT",\n    },\n] '
      }
    />
    <State
      id="ftRightObj"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '[\n{\n    keyword: ["Topper"],\n    startComment: "Topper",\n    endComment: "Topper",\n    placeholder: "— TOPPER TEXT HERE —",\n    },\n    {\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "HEADLINE TEXT HERE",\n    },\n    {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Subcopy - Lorem ipsum dolor sit amet, consectetur adipiscing elit.",\n    },\n    {\n    keyword: ["Was"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "XX.XX",\n    },\n    {\n    keyword: ["Now"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "XX.XX",\n    },\n    {\n    keyword: ["Save"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "XX.XX",\n    },\n    { keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Secondary Button",\n    },\n    {\n    keyword: ["Legal", "Legal/Expiry", "Expiry", "Expiration", "Disclaimer"],\n    startComment: "Expiry",\n    endComment: "Expiry",\n    placeholder: "SALE ENDS AT MIDNIGHT",\n    },\n] '
      }
    />
    <State
      id="heroDefaultObj"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '[\n  {\n    keyword: ["Preview"],\n    startComment: "Preview Text",\n    endComment: "Preview Text",\n    placeholder: "Preview Text - FILL THIS IN",\n  },\n  {\n    keyword: ["Topper","Frame Headline","Promo Corner"],\n    startComment: "Text Topper -  Delete if using Image Topper",\n    endComment: "Text Topper",\n    placeholder: "— Topper —",\n  },\n  {\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "HEADLINE",\n  },\n  {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "SUBCOPY - Lorem ipsum dolor sit amet, consectetur adipiscing \\n                <!-- PROMOCODE -->\\n                  <span style=\\"font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;\\">${PROMOCODE}</span>\\n                <!-- /PROMOCODE -->",\n  },\n  {\n    keyword: ["Title"],\n    startComment: "",\n    endComment: "",\n  },\n  {\n    keyword: ["Author"],\n    startComment: "",\n    endComment: "",\n  },\n  {\n    keyword: ["Was"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "was",\n  },\n  {\n    keyword: ["Now"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "now",\n  },\n  {\n    keyword: ["Save"],\n    startComment: "Pricing",\n    endComment: "Pricing",\n    placeholder: "save",\n  },\n  { \n    keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Primary Button",\n  },\n  {\n    keyword: ["Legal", "Legal/Expiry", "Expiry", "Expiration", "Disclaimer"],\n    startComment: "Expiry - Delete if not needed",\n    endComment: "Expiry",\n    placeholder: "SALE ENDS AT MIDNIGHT",\n  },\n]\n'
      }
    />
    <State
      id="heroDualObj"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '[\n  {\n    keyword: ["Preview"],\n    startComment: "Preview Text",\n    endComment: "Preview Text",\n    placeholder: "Preview Text - FILL THIS IN",\n  },\n  {\n    keyword: ["Topper"],\n    startComment: "Text Topper - Delete if using Image Topper",\n    endComment: "Text Topper",\n    placeholder: "Topper Text",\n  },\n{\n    keyword: ["Sub-Topper"],\n    startComment: "SUB TOPPER HERE",\n    endComment: "SUB TOPPER HERE",\n    placeholder: "TEST TEXT",\n  },\n  {\n    keyword: ["Headline"],\n    startComment: "HEADLINE HERE",\n    endComment: "HEADLINE HERE",\n    placeholder: "Uncover the Unexpected",\n  },\n  {\n    keyword: ["Title"],\n    startComment: "",\n    endComment: "",\n    placeholder: "Book title",\n  },\n  {\n    keyword: ["Author"],\n    startComment: "",\n    endComment: "",\n    placeholder: "Author Name",\n  },\n  {\n    keyword: ["Title"],\n    startComment: "",\n    endComment: "",\n    placeholder: "Book title",\n  },\n  {\n    keyword: ["Author"],\n    startComment: "",\n    endComment: "",\n    placeholder: "Author Name",\n  },\n  {\n    keyword: ["Subcopy"],\n    startComment: "SUB COPY HERE",\n    endComment: "SUB COPY HERE",\n    placeholder: "Lorem ipsum dolor sit amet, consectetur adipiscing",\n  },\n{\n    keyword: ["Was Price / You Save price (if required)"],\n    startComment: "WAS/SAVE PRICING DELETE IF NOT NEEDED",\n    endComment: "WAS/SAVE PRICING",\n    placeholder: "$X.xx",\n  },\n  { \n    keyword: ["CTA", "CTA 1", "eBook CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "${MT_COPY_BUYEBOOK}",\n  },\n  { \n    keyword: ["CTA 2", "Audio CTA", "Audio CTA 1"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "${MT_COPY_BUYABOOK}",\n  },\n  {\n    keyword: ["Legal", "Legal/Expiry", "Expiry", "Expiration", "Disclaimer"],\n    startComment: "Expiry - Delete if not needed",\n    endComment: "Expiry",\n    placeholder: "SALE ENDS AT MIDNIGHT",\n  },\n  {\n    keyword: ["30-DAY TRIAL"],\n    startComment: "30-DAY TRIAL DELETE IF NOT NEEDED",\n    endComment: " 30-DAY TRIAL",\n    placeholder: "",\n  },\n  {\n    keyword: ["KSP"],\n    startComment: "IF NO KSP DELETE TO END OF KSP",\n    endComment: "END OF KSP",\n    placeholder: "",\n  }\n]'
      }
    />
    <State
      id="trustpilotObj"
      value={
        '[\n    {\n    keyword: ["User name"],\n    startComment: "Review Author text",\n    endComment: "Review Author text",\n    placeholder: "By Lee",\n    },\n    {\n    keyword: ["Quote"],\n    startComment: "Review text",\n    endComment: "Review text",\n    placeholder: "Having owned several<br> Kobo ereaders, this is by far the best. It is responsive, meatier, and very\n            affordable compared to the competition. I have experienced no problems or glitches with my<br>\n            Kobo Libra 2. I would highly recommend!",\n    },\n    { keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Read more reviews",\n    },\n] '
      }
    />
    <State
      id="vipSaleObj"
      value={
        '[\n  {\n    "keyword": ["Icon"],\n    "startComment": "Icon - Delete if not needed",\n    "endComment": "Icon - Delete if not needed",\n    "placeholder": ""\n  },\n  {\n    "keyword": ["Headline"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "Get 10% off, <br>get your first FREE book"\n  },\n{\n    "keyword": ["Subcopy"],\n    "startComment": "Subcopy",\n    "endComment": "Subcopy",\n    "placeholder": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim netus commodo vestibulum platea lacus ultrices venenatis aliquet"\n  },\n  {\n    "keyword": ["PROMO CODE"],\n    "startComment": "Promo Code",\n    "endComment": "Promo Code",\n    "placeholder": "XXXXXXXXXXXXXX"\n  },\n  {\n    "keyword": ["CTA"],\n    "startComment": "CTA - delete if not needed",\n    "endComment": "CTA",\n    "placeholder": "Redeem Now"\n  },\n  {\n    "keyword": ["Headline"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "Sit id pretium mattis viverra consequat sit."\n  },\n  {\n    "keyword": ["Title"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "BOOK TITLE"\n  },\n  {\n    "keyword": ["Author"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "AUTHOR"\n  },\n  {\n    "keyword": ["Description"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "DESCRIPTION. Cosmos is one of the bestselling science books of all time. In clear-eyed prose, Sagan reveals a jewel-like blue world inhabited by a life form that is just beginning to discover its own identity and to venture into the vast ocean of space."\n  }, \n{\n    "keyword": ["Save"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "XX.XX"\n  },\n {\n    "keyword": ["Was"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "XX.XX"\n  },\n  {\n    "keyword": ["Now"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "XX.XX"\n  },\n  {\n    "keyword": ["CTA"],\n    "startComment": "",\n    "endComment": "",\n    "placeholder": "CTA COPY"\n  }\n]\n'
      }
    />
  </Folder>
  <Folder id="reskinObjects">
    <State
      id="ftReskinObj"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '[\n    {\n    keyword: ["Topper"],\n    startComment: "Topper & Promo Line",\n    endComment: "Topper & Promo Line",\n    placeholder: "TOPPER MESSAGE",\n    },\n    {\n    keyword: ["Promo Line"],\n    startComment: "",\n    endComment: "",\n    placeholder: "PROMO LINE",\n    },\n    {\n    keyword: ["Topper"],\n    startComment: "Message & Promo Line - Delete if not needed",\n    endComment: "Message & Promo Line",\n    placeholder: "TOPPER MESSAGE",\n    },\n    {\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "Norem ipsum <br />dolor sit amet",\n    },\n    {\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "Vertel het ons, en wij vertellen het jou",\n    },\n    {\n    keyword: ["Author"],\n    startComment: "Author - Delete if not needed",\n    endComment: "Author",\n    placeholder: "by Lorem Ipsum",\n    },\n    {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.",\n    },\n    {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euturpis molestie, dictum est a, mattis tellus.",\n    },\n    {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Ontvang betere leesaanbevelingen in enkele klikken",\n    },\n    {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit",\n    },\n    {\n    keyword: ["Now"],\n    startComment: "Pricing - Delete if not needed",\n    endComment: "Pricing",\n    placeholder: "$XX.xx",\n    },\n   {\n    keyword: ["Was"],\n    startComment: "WAS SAVE PRICING",\n    endComment: "WAS SAVE PRICING",\n    placeholder: "",\n    },\n    { \n    keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Secondary CTA",\n    },\n    { \n    keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Begin nu",\n    },\n    { \n    keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "CTA",\n    },\n    {\n    keyword: ["Legal", "Legal/Expiry", "Expiry", "Expiration", "Disclaimer"],\n    startComment: "Expiry - Delete if not needed",\n    endComment: "Expiry",\n    placeholder: "SALE ENDS AT MIDNIGHT",\n    },\n] '
      }
    />
    <State
      id="heroGenericStackedLeftObj"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '[\n  {\n    keyword: ["Preview"],\n    startComment: "Preview Text",\n    endComment: "Preview Text",\n    placeholder: "Preview Text - FILL THIS IN",\n  },\n  {\n    keyword: ["Topper","Frame Headline","Promo Corner"],\n    startComment: "Message topper - Delete if not needed",\n    endComment: "Message topper",\n    placeholder: "Topper Text",\n  },\n{\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "ANorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut",\n  },\n{\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "ANorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut",\n  },\n  { \n    keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Hero CTA",\n  },\n]'
      }
    />
    <State
      id="heroReskinObj"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '[\n  {\n    keyword: ["Preview"],\n    startComment: "Preview Text",\n    endComment: "Preview Text",\n    placeholder: "Preview Text - FILL THIS IN",\n  },\n  {\n    keyword: ["Topper","Frame Headline","Promo Corner"],\n    startComment: "Message topper - Delete if not needed",\n    endComment: "Message topper",\n    placeholder: "Topper Text",\n  },\n{\n    keyword: ["Topper","Frame Headline","Promo Corner"],\n    startComment: "Text Topper",\n    endComment: "Text Topper",\n    placeholder: "Topper Text",\n  },\n  {\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",\n  },\n{\n    keyword: ["Headline"],\n    startComment: "Headline",\n    endComment: "Headline",\n    placeholder: "Norem ipsum dolor sit amet",\n  },\n  {\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",\n  },\n{\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "“Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.”",\n  },\n{\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.",\n  },\n{\n    keyword: ["Subcopy"],\n    startComment: "Subcopy",\n    endComment: "Subcopy",\n    placeholder: "Lorem ipsum dolor sit amet, consectetur adipiscing",\n  },\n{\n    keyword: ["PromoCode"],\n    startComment: "PROMOCODE",\n    endComment: "PROMOCODE",\n    placeholder: "${PROMOCODE}",\n  },\n{\n    keyword: ["PromoCode"],\n    startComment: "PROMOCODE",\n    endComment: "PROMOCODE",\n    placeholder: "<!-- PROMOCODE --> \\n\n<span style=\\"font-weight:bold;\\">${PROMOCODE}</span>",\n  },\n{\n    keyword: ["Title"],\n    startComment: "",\n    endComment: "",\n  },\n  {\n    keyword: ["Author"],\n    startComment: "",\n    endComment: "",\n  },\n  {\n    keyword: ["Now"],\n    startComment: "Pricing - Delete if not needed",\n    endComment: "Pricing",\n    placeholder: "$XX.xx",\n  },\n  {\n    keyword: ["Was"],\n    startComment: "Was and save pricing",\n    endComment: "Was and save pricing",\n    placeholder: "XX.xx",\n  },\n  {\n    keyword: ["Save"],\n    startComment: "Was and save pricing",\n    endComment: "Was and save pricing",\n    placeholder: "$X.xx",\n  },\n  { \n    keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Hero CTA",\n  },\n  { \n    keyword: ["CTA"],\n    startComment: "CTA",\n    endComment: "CTA",\n    placeholder: "Secondary CTA",\n  },\n  {\n    keyword: ["Legal", "Legal/Expiry", "Expiry", "Expiration", "Disclaimer"],\n    startComment: "Expiry - Delete if not needed",\n    endComment: "Expiry",\n    placeholder: "SALE ENDS AT MIDNIGHT",\n  },\n]'
      }
    />
  </Folder>
  <Folder id="unused">
    <JavascriptQuery
      id="replacePreview"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/replacePreview.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="featureNew">
    <State
      id="featureImgHeightState1"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="featureImgHeightState2"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="featureImgHeightState3"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="featureImgWidthState1"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="featureImgWidthState2"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State id="featureImgWidthState3" />
    <JavascriptQuery
      id="getFTImageInfo2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/getFTImageInfo2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="getFTImageInfo3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/getFTImageInfo3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="getFTImageInfoNew"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/getFTImageInfoNew.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="getLogoLockupImageInfo"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/getLogoLockupImageInfo.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="getLogoLockupImageInfo2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/getLogoLockupImageInfo2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="getLogoLockupImageInfo3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/getLogoLockupImageInfo3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="insertFeature2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertFeature2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateFeatureTopperColour2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateFeatureBackgroundColour2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="insertFeature3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertFeature3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateFeatureTopperColour3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateFeatureBackgroundColour3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="insertFeatureNew"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertFeatureNew.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateFeatureTopperColour1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateFeatureBackgroundColour1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="insertLogoLockup"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertLogoLockup.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="insertLogoLockup2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertLogoLockup2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="insertLogoLockup3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertLogoLockup3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <State
      id="logoLockupImgHeightState1"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="logoLockupImgHeightState2"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="logoLockupImgHeightState3"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="logoLockupImgWidthState1"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="logoLockupImgWidthState2"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <State
      id="logoLockupImgWidthState3"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="0"
    />
    <JavascriptQuery
      id="populateFeature2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/populateFeature2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="populateFeature3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/populateFeature3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="populateFeatureNew"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/populateFeatureNew.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="runFeatureInsertion"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/runFeatureInsertion.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="runFeatureInsertion2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/runFeatureInsertion2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="runFeatureInsertion3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/runFeatureInsertion3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="undoFeature1"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/undoFeature1.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="undoFeature2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/undoFeature2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="undoFeature3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/undoFeature3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="updateFeatureImage2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureImage2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="updateFeatureImage3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureImage3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="updateFeatureImageNew"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureImageNew.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="updateLogoLockupImage"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateLogoLockupImage.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="updateLogoLockupImage2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/updateLogoLockupImage2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="updateLogoLockupImage3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/updateLogoLockupImage3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="callouts">
    <State
      id="Audiobook"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="<!-- AUDIOBOOK CALLOUT -->
<#include 'cms://contentlibrary/!componentlibrary/!mobilefirst/callouts/audiobook_nov2022/audiobook_callout_'+ CX +'.htm'>"
    />
    <State
      id="DailyDeals"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="<!-- DAILY DEALS CALLOUT INCLUDE -->
<#include 'cms://contentlibrary/!componentlibrary/!mobilefirst/callouts/dailydeals/dailydeals_'+ CX +'.htm'>"
    />
    <State
      id="KSPVIPCallout"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="<!-- KSP VIP CALLOUT -->
<#include 'cms://contentlibrary/!componentlibrary/!mobilefirst/callouts/ksp_sept2022/ksp_callout_'+ CX +'.htm'>"
    />
    <State
      id="KoboPlusCallout"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="<!-- KOBO PLUS CALLOUT INCLUDE -->
<#include 'cms://contentlibrary/!componentlibrary/!mobilefirst/callouts/koboplus_nov2022/koboplus_callout_'+ CX +'.htm'>"
    />
    <JavascriptQuery
      id="insertCallout"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertCallout.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="removeCallout"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/removeCallout.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="deviceBkl">
    <State id="booklineDropdownOptions" value="[]" />
    <State id="booklineYesNo" value="false" />
    <JavascriptQuery
      id="decreaseBooklineCount"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/decreaseBooklineCount.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State id="device1ImgState" value="0" />
    <State id="device1ImgWidthState" value="0" />
    <State id="device2ImgState" value="0" />
    <State id="device2ImgWidthState" value="0" />
    <State id="device3ImgState" value="0" />
    <State id="device3ImgWidthState" value="0" />
    <JavascriptQuery
      id="getDeviceImageInfo"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/getDeviceImageInfo.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { onSuccess: null },
                  { onFailure: null },
                  { additionalScope: null },
                ],
              },
            },
          ],
        }}
        pluginId="updateDeviceImages"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="increaseBooklineCount"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/increaseBooklineCount.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="insertDeviceBookline"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertDeviceBookline.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="increaseBooklineCount"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="populateDeviceBookline"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/populateDeviceBookline.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="removeDeviceBookline"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/removeDeviceBookline.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="decreaseBooklineCount"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="updateDeviceImages"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateDeviceImages.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="directDevice">
    <State id="directDevice1DevHeight" value="null" />
    <State id="directDevice1DevWidth" value="null" />
    <State id="directDevice1LogoHeight" />
    <State id="directDevice1LogoWidth" />
    <State id="directDevice2DevHeight" />
    <State id="directDevice2DevWidth" />
    <State id="directDevice2LogoHeight" />
    <State id="directDevice2LogoWidth" />
    <State id="directDevice3DevHeight" />
    <State id="directDevice3DevWidth" />
    <State id="directDevice3LogoHeight" />
    <State id="directDevice3LogoWidth" />
    <JavascriptQuery
      id="getDirectDeviceImageInfo"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/getDirectDeviceImageInfo.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="insertDirectDevice"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/insertDirectDevice.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="populateDirectDevice"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/populateDirectDevice.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="updateDirectDeviceImages"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateDirectDeviceImages.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="responsys">
    <RESTQuery
      id="authenticate"
      bodyType="form"
      headers={
        '[{"key":"Content-Type","value":"application/x-www-form-urlencoded"}]'
      }
      isHidden={false}
      query="/rest/api/v1.3/auth/token"
      resourceName="5c8b9710-abb7-4cd3-abb7-9807826cf5b4"
      runWhenModelUpdates={false}
      type="POST"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createFolder"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <JavascriptQuery
      id="collectFiles"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/collectFiles.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="campaignTemplate"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="createCampaignButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { onSuccess: null },
                  { onFailure: null },
                  { additionalScope: null },
                ],
              },
            },
          ],
        }}
        pluginId="deleteFolder"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setValue"
        params={{ ordered: [{ value: '"Upload failed. Please try again."' }] }}
        pluginId="modalText"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="modalYesButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <RESTQuery
      id="copyCampaign"
      body={
        '[{"key":"newCampaignName","value":"{{ campaignName.value }}"},{"key":"folderName","value":"1 - Weekly 2025"}]'
      }
      bodyType="json"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"},{"key":"Content-Type","value":"application/json"}]'
      }
      isHidden={false}
      query="/rest/api/v1.5/campaigns/{{ campaignTemplate.value }}/actions/copy"
      resourceName="cc50f55e-255a-4204-acee-a6f082570efe"
      runWhenModelUpdates={false}
      type="POST"
    />
    <RESTQuery
      id="createFolder"
      body={
        '[{"key":"folderPath","value":"/contentlibrary/1 - weekly emails/2025/{{ folderSelect.value }}/{{ campaignName.value }}/images"}]'
      }
      bodyType="json"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"},{"key":"Content-Type","value":"application/json"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      query="/rest/api/v1.3/clFolders"
      queryFailureConditions={'[{"condition":"","message":""}]'}
      resourceName="cc50f55e-255a-4204-acee-a6f082570efe"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      successMessage={'"Folder created successfully"'}
      type="POST"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="grabCampaignName"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setValue"
        params={{
          ordered: [
            {
              value: '"Upload Failed. Please check if folder already exists."',
            },
          ],
        }}
        pluginId="modalText"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalYesButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <JavascriptQuery
      id="debugCreateFolderError"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/debugCreateFolderError.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="debugCreateFolderError2"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/debugCreateFolderError2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="deleteDocument"
      body={
        '[{"key":"documentPath","value":"/contentlibrary/1 - weekly emails/2025/{{ folderSelect.value }}/{{ campaignName.value }}/{{ collectFiles.data }}.htm"},{"key":"content","value":"{{ html1.html }}"}]'
      }
      bodyType="json"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"},{"key":"Content-Type","value":"application/json"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      query="/rest/api/v1.3/clDocs"
      resourceName="cc50f55e-255a-4204-acee-a6f082570efe"
      runWhenModelUpdates={false}
      type="DELETE"
    />
    <RESTQuery
      id="deleteFolder"
      cookies="[]"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      query="/rest/api/v1.3/clFolders/contentlibrary/1 - weekly emails/2025/{{ folderSelect.value }}/{{ campaignName.value }}"
      resourceName="cc50f55e-255a-4204-acee-a6f082570efe"
      runWhenModelUpdates={false}
      type="DELETE"
    >
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="confirmModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="deleteImage"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"}]'
      }
      isHidden={false}
      query="/rest/api/v1.3/clItems/{{ imagePathVariable }}"
      resourceName="cc50f55e-255a-4204-acee-a6f082570efe"
      runWhenModelUpdates={false}
      type="DELETE"
    />
    <RESTQuery
      id="deleteImagesFolder"
      cookies="[]"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      query="/rest/api/v1.3/clFolders/contentlibrary/1 - weekly emails/2025/{{ folderSelect.value }}/{{ campaignName.value }}/images"
      resourceName="cc50f55e-255a-4204-acee-a6f082570efe"
      runWhenModelUpdates={false}
      type="DELETE"
    />
    <JavascriptQuery
      id="grabCampaignName"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/grabCampaignName.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="uploadDocuments"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <RESTQuery
      id="refresh"
      body={'[{"key":"auth_type","value":"token","operation":"text"}]'}
      bodyType="form-data"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      query="/rest/api/v1.3/auth/token"
      resourceName="5c8b9710-abb7-4cd3-abb7-9807826cf5b4"
      runWhenModelUpdates={false}
      type="POST"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createFolder"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <JavascriptQuery
      id="responsysCompiled"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/responsysCompiled.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="responsysCompiled2"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/responsysCompiled2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="tokenCheck"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/tokenCheck.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="uploadDocuments"
      body={
        '[{"key":"documentPath","value":"/contentlibrary/1 - weekly emails/2025/{{ folderSelect.value }}/{{ campaignName.value }}/{{ grabCampaignName.data }}.htm"},{"key":"content","value":"{{ html1.html }}"}]'
      }
      bodyType="json"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"},{"key":"Content-Type","value":"application/json"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      query="/rest/api/v1.3/clDocs"
      resourceName="cc50f55e-255a-4204-acee-a6f082570efe"
      runWhenModelUpdates={false}
      type="POST"
    >
      <Event
        event="success"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { onSuccess: null },
                  { onFailure: null },
                  { additionalScope: null },
                ],
              },
            },
          ],
        }}
        pluginId="collectFiles"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="deleteFolder"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setValue"
        params={{ ordered: [{ value: '"Upload failed. Please try again."' }] }}
        pluginId="modalText"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="modalYesButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="uploadImages"
      body={
        '[{"key":"itemPath","value":"{{ imagePathVariable }}"},{"key":"itemData","value":"{{ imageDataVariable }}"}]'
      }
      bodyType="json"
      headers={
        '[{"key":"Authorization","value":"{{ authenticate.data.authToken }}"},{"key":"Content-Type","value":"application/json"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      query="/rest/api/v1.3/clItems?"
      resourceName="cc50f55e-255a-4204-acee-a6f082570efe"
      runWhenModelUpdates={false}
      type="POST"
    >
      <Event
        event="failure"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="deleteFolder"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setValue"
        params={{ ordered: [{ value: '"Upload failed. Please try again."' }] }}
        pluginId="modalText"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="modalYesButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Folder id="heroReskin">
    <State
      id="colourOptions"
      value={
        '[\n  {\n    "label": "‎ ‎ Red",\n    "value": "#BF0000"\n  },\n  {\n    "label": "‎ ‎ Orange",\n    "value": "#CB4F11"\n  },\n{\n    "label": "‎ ‎ Yellow",\n    "value": "#EEB711"\n  },\n{\n    "label": "‎ ‎ Green",\n    "value": "#005830"\n  },\n{\n    "label": "‎ ‎ Blue",\n    "value": "#0A59C6"\n  },\n{\n    "label": "‎ ‎ Pink",\n    "value": "#AD2F74"\n  },\n{\n    "label": "‎ ‎ Black",\n    "value": "#000000"\n  },\n{\n    "label": "‎ ‎ VIP Red",\n    "value": "#990000"\n  },\n{\n    "label": "‎ ‎ None",\n    "value": "None"\n  }\n]'
      }
    />
    <State
      id="heroHalfHalf"
      value={
        '<!-- Hero Half & Half  -->\n<!-- Text Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n      <!-- Change background color as needed, default is black-->\n      <td width="550" height="48" style="background-color: #000000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n</table>\n<!-- /Text Topper -->\n\n<!-- Update the background-color to match Figma, if needed  -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color: #F2CBCC;">\n  <!-- Hero Image -->      \n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;" target="_blank">\n        <!-- FILL IN PATH, ALT & HEIGHT (and background colour, if needed) -->\n        <img src="images/hero-placeholder-halfHalf.png" width="550" height="300" alt="Hero Image Alt" style="display:block;background:#F2CBCC;" border="0" />\n      </a>\n    </td>\n  </tr>\n  <!-- /Hero Image -->\n  <tr>\n    <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          <td width="502">\n            <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n              <!-- Headline  -->\n              <tr>\n                <td width="502" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:center;line-height:37px;">\n                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n                </td>\n              </tr>\n              <!-- /Headline  -->\n              <tr>\n                <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n              <!-- Subcopy  -->\n              <tr>\n                <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:center;line-height:1.2;">\n                  Lorem ipsum dolor sit amet, consectetur adipiscing\n                  <!-- PROMOCODE -->\n                    <span style="font-weight:bold;">${PROMOCODE}</span>\n                  <!-- /PROMOCODE -->\n                </td>\n              </tr>\n              <!-- /Subcopy  -->\n              <!-- Pricing - Delete if not needed  -->\n              <tr>\n                <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n              <tr>\n                <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:36px;text-align:center;line-height:1.2;">\n                  $XX.xx\n                </td>\n              </tr>\n              <tr>\n                <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n              <!-- Was and save pricing  -->\n              <tr>\n                <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;">\n                  ${MT_COPY_WAS}: <span style="text-decoration:line-through;">XX.xx</span> ${MT_COPY_SAVE}: $X.xx\n                </td>\n              </tr>\n              <!-- Was and save pricing  -->\n              <!-- /Pricing  -->\n            </table>\n          </td>\n          <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n      </table>\n    </td>\n  </tr>\n  <tr>\n    <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Headline & Subcopy -->\n  <!-- CTA -->\n  <tr>\n    <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n          <tr>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td height="70" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n      </table>\n    </td>\n  </tr>\n  <!-- /CTA -->\n  <!-- Expiry - Delete if not needed -->\n  <tr>\n    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <tr>\n    <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;">\n      SALE ENDS AT MIDNIGHT\n    </td>\n  </tr>\n  <!-- /Expiry -->\n  <tr>\n    <td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n</table>\n<!-- /Hero Half & Half  -->'
      }
    />
    <State
      id="heroKoboPlusSidePlus"
      value={
        '<!-- ******************************* SIDE BY SIDE Layout (Plus) ******************************* -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n      <td colspan="3" height="24" style="background-color: #EEB711;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color:#0A59C6;">\n  <tr>\n    <!-- Left side (content)  -->\n    <td width="315" style="vertical-align: middle;">\n      <table role="presentation" width="315" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n          <td width="280">\n            <table role="presentation" width="280" cellspacing="0" cellpadding="0" border="0">\n              <!-- Kobo Plus logo  -->\n              <tr>\n                <td width="109" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                  <img src="/contentlibrary/!componentlibrary/images/kp-logo-white.png" width="109" height="27" alt="Kobo Plus" style="display:block;background:#0A59C6;" border="0" />\n                </td>\n                <td width="171" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n              <!-- /Kobo Plus logo  -->\n              <tr><td colspan="2" height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- Headline  -->\n              <tr>\n                <td colspan="2" width="280" style="color:#ffffff;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:left;line-height:1.2;">\n                  Norem ipsum dolor sit amet\n                </td>\n              </tr>\n              <!-- /Headline  -->\n              <tr><td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- Subcopy -->\n              <tr>\n                <td colspan="2" width="280" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n                  Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n                </td>\n              </tr>\n              <!-- /Subcopy -->\n              <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- CTA -->\n              <tr>\n                <td colspan="2" width="280">\n                  <table role="presentation" width="280" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                      <td width="30" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                </td>          \n              </tr>\n              <!-- /CTA -->\n              <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- Expiry - Delete if not needed -->\n              <tr>\n                <td colspan="2" width="280" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.4;">\n                  SALE ENDS AT MIDNIGHT\n                </td>\n              </tr>\n            </table>\n          </td>\n\n          <td width="11" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n\n      </table>\n    </td>\n    <!-- /Left side (content)  -->\n\n    <!-- Right side (Image)  -->\n    <td width="235" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <!-- FILL IN PATH & HEIGHT --> \n      <img src="/contentlibrary/!componentlibrary/images/kp-plus-fullside.png" width="235" height="480" alt="" style="display:block" border="0" />\n    </td>\n    <!-- /Right side (Image) -->\n  </tr>\n</table>\n<!-- /SIDE BY SIDE Layout (Plus) -->'
      }
    />
    <State
      id="heroKoboPlusSideSide"
      value={
        '<!-- ******************************* SIDE BY SIDE Layout (Book Covers) ******************************* -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n      <td colspan="3" height="24" style="background-color: #EEB711;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color:#0A59C6;">\n  <tr>\n    <!-- Left side (content)  -->\n    <td width="315" style="vertical-align: bottom;">\n      <table role="presentation" width="315" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n          <td width="280">\n            <table role="presentation" width="280" cellspacing="0" cellpadding="0" border="0">\n              <!-- Kobo Plus logo  -->\n              <tr>\n                <td width="109" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                  <img src="/contentlibrary/!componentlibrary/images/kp-logo-white.png" width="109" height="27" alt="Kobo Plus" style="display:block;background:#0A59C6;" border="0" />\n                </td>\n                <td width="171" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n              <!-- /Kobo Plus logo  -->\n              <tr><td colspan="2" height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- Headline  -->\n              <tr>\n                <td colspan="2" width="280" style="color:#ffffff;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:left;line-height:1.2;">\n                  Norem ipsum dolor sit amet\n                </td>\n              </tr>\n              <!-- /Headline  -->\n              <tr><td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- Subcopy -->\n              <tr>\n                <td colspan="2" width="280" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n                  Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n                </td>\n              </tr>\n              <!-- /Subcopy -->\n              <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- CTA -->\n              <tr>\n                <td colspan="2" width="280">\n                  <table role="presentation" width="280" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                      <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                      <td width="30" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                  </table>\n                </td>          \n              </tr>\n              <!-- /CTA -->\n              <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- Expiry - Delete if not needed -->\n              <tr>\n                <td colspan="2" width="280" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.4;">\n                  SALE ENDS AT MIDNIGHT\n                </td>\n              </tr>\n            </table>\n          </td>\n\n          <td width="11" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n\n        <tr><td colspan="2" height="22" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n\n        <tr>\n          <td colspan="3" width="315" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <img src="/contentlibrary/!componentlibrary/images/kp-plus-bottomside-v2.png" width="315" height="81" alt="" style="display:block;background:#0A59C6;" border="0" />\n          </td>\n        </tr>\n\n      </table>\n    </td>\n    <!-- /Left side (content)  -->\n\n    <!-- Right side (Image)  -->\n    <td width="235" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <!-- FILL IN PATH & HEIGHT - Make sure it\'s png and has transparent bg --> \n      <img src="images/KP-CoverSide-v2.png" width="235" height="458" alt="" style="display:block" border="0" />\n    </td>\n    <!-- /Right side (Image) -->\n  </tr>\n</table>\n<!-- /SIDE BY SIDE Layout (Book Covers) -->'
      }
    />
    <State
      id="heroKoboPlusStacked"
      value={
        '<!-- ******************************* STACKED layout ******************************* -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n      <td colspan="3" height="24" style="background-color: #EEB711;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color:#0A59C6;">\n  <tr>\n    <td colspan="3" height="21" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- Kobo Plus logo -->      \n  <tr>\n    <td width="210" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    <td width="130" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <img src="/contentlibrary/!componentlibrary/images/kp-logo-white.png" width="130" height="32" alt="Kobo Plus" style="display:block;background:#0A59C6;" border="0" />\n    </td>\n    <td width="210" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Kobo Plus logo -->\n  <tr>\n    <td colspan="3" height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n    <td colspan="3" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            <td width="502">\n                <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                    <!-- Headline  -->\n                    <tr>\n                        <td width="502" style="color:#ffffff;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:center;line-height:37px;">\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n                        </td>\n                    </tr>\n                    <!-- /Headline  -->\n                    <tr>\n                      <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <!-- Subcopy  -->\n                    <tr>\n                      <td width="502" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:center;line-height:1.2;">\n                        Lorem ipsum dolor sit amet, consectetur adipiscing\n                      </td>\n                    </tr>\n                    <!-- /Subcopy  -->\n                </table>\n            </td>\n            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n      </table>\n    </td>\n  </tr>\n  <tr>\n    <td colspan="3" height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Headline & Subcopy -->\n  <!-- CTA -->\n  <tr>\n    <td colspan="3" width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n          <tr>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td height="70" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n      </table>\n    </td>\n  </tr>\n  <!-- /CTA -->\n  <!-- Expiry - Delete if not needed -->\n  <tr>\n    <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <tr>\n    <td colspan="3" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;">\n      SALE ENDS AT MIDNIGHT\n    </td>\n  </tr>\n  <!-- /Expiry -->\n  <tr>\n    <td colspan="3" height="21" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Hero Image -->      \n  <tr>\n    <td colspan="3" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <!-- FILL IN PATH & HEIGHT (if different than "plus" image)-->\n      <img src="/contentlibrary/!componentlibrary/images/kp-plus-bottom.png" width="550" height="123" alt="" style="display:block;background:#0A59C6;" border="0" />\n    </td>\n  </tr>\n  <!-- /Hero Image -->\n</table>\n<!-- /STACKED layout -->'
      }
    />
    <State
      id="heroReskinOptions"
      value={
        '[\n  {\n  "label": "Hero_Generic Stacked Center",\n  "value": "{{ heroStackedCenter.value }}"\n  },\n  {\n  "label": "Hero_Generic Stacked Left",\n  "value": "{{ heroStackedLeft.value }}"\n  },\n  {\n  "label": "Hero_Generic Side by Side (img right)",\n  "value": "{{ heroSideImgRight.value }}"\n  },\n  {\n  "label": "Hero_Generic Side by Side (img left)",\n  "value": "{{ heroSideImgLeft.value }}"\n  },\n  {\n  "label": "Hero_Generic Steps (Stacked)",\n  "value": "{{ heroStepsStacked.value }}"\n  },\n  {\n  "label": "Hero_Generic Side by Side (Steps)",\n  "value": "{{ heroStepsSidebySide.value }}"\n  },\n  {\n  "label": "Hero_Generic Was/Now pricing",\n  "value": "{{ heroStackedWasNow.value }}"\n  },\n  {\n  "label": "Hero_Service",\n  "value": "{{ heroService.value }}"\n  },\n  {\n  "label": "Hero_HalfHalf",\n  "value": "{{ heroHalfHalf.value }}"\n  },\n  {\n  "label": "Hero_Spotlight",\n  "value": "{{ heroSpotlight.value }}"\n  },\n  {\n  "label": "Hero_KoboPlus Stacked",\n  "value": "{{ heroKoboPlusStacked.value }}"\n  },\n  {\n  "label": "Hero_KoboPlus Side by Side (book covers)",\n  "value": "{{ heroKoboPlusSideSide.value }}"\n  },\n  {\n  "label": "Hero_KoboPlus Side by Side (Plus)",\n  "value": "{{ heroKoboPlusSidePlus.value }}"\n  },\n  {\n  "label": "Hero_VIP Stacked Center",\n  "value": "{{ heroVIPStacked.value }}"\n  },\n  {\n  "label": "Hero_VIP Stacked Left",\n  "value": "{{ heroVIPStackedLeft.value }}"\n  },\n  {\n  "label": "Hero_VIP Side by Side (img right)",\n  "value": "{{ heroVIPStackedSide.value }}"\n  },\n  {\n  "label": "None",\n  "value": "None"\n  }\n]'
      }
    />
    <State
      id="heroService"
      value={
        '<!-- Text Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <tr>\n    <!-- Change background color as needed, default is red-->\n    <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n      Topper Text\n    </td>\n  </tr>\n</table>\n<!-- /Text Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color: #EEEEEE;">\n    <tr>\n        <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    \n        <td width="486">\n            <table role="presentation" width="486" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td colspan="2" height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Envelope icon - Delete if not needed  -->\n                <tr>\n                    <td width="44" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                        <img src="/contentlibrary/!componentlibrary/images/envelope.png" width="44" height="36" alt="" border="0" />\n                    </td>\n                    <td width="442" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td colspan="2" height="30" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Envelope icon -->\n                <!-- Headline  -->\n                <tr>\n                    <td colspan="2" width="486" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:normal;font-size:32px;text-align:left;line-height:1.2;">\n                        Norem ipsum dolor sit amet \n                    </td>                \n                </tr>\n                <!-- Headline  -->\n                <tr>\n                    <td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Subcopy  -->\n                <tr>\n                    <td colspan="2" width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n                        Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut                                \n                    </td>\n                </tr>\n                <tr>\n                    <td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td colspan="2" width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n                        interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque          \n                    </td>\n                </tr>\n                <tr>\n                    <td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td colspan="2" width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n                        ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.         \n                    </td>\n                </tr>\n                <!-- Subcopy  -->\n                <tr>\n                    <td colspan="2" height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- CTA  -->\n                <tr>\n                    <td colspan="2" width="486">\n                        <table role="presentation" width="486" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td height="70" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n                                <td width="166" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <!-- CTA  -->\n                <tr>\n                    <td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Expiry  -->\n                <tr>\n                    <td colspan="2" width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                        SALE ENDS AT MIDNIGHT        \n                    </td>\n                </tr>\n                <tr>\n                    <td colspan="2" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n    \n        <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n'
      }
    />
    <State
      id="heroSideImgLeft"
      value={
        '<!-- ******************************* SIDE BY SIDE Layout (Image left) ******************************* -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <!-- Message topper - Delete if not needed  -->\n    <tr>\n      <!-- Change background color as needed, default is red-->\n      <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n    <!-- /Message topper  -->\n    <!-- Thin topper - Delete if not needed  -->\n    <tr>\n      <td height="24" style="background-color: #BF0000;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Thin topper  -->\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <tr>\n    <td width="235" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <!-- FILL IN PATH & HEIGHT --> \n      <img src="images/books-test.png" width="235" height="377" alt="" style="display:block" border="0" />\n    </td>\n\n    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n    <td width="280">\n      <table role="presentation" width="280" cellspacing="0" cellpadding="0" border="0">\n        <!-- Headline  -->\n        <tr>\n          <td colspan="2" width="280" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:left;line-height:1.2;">\n            Norem ipsum dolor sit amet\n          </td>\n        </tr>\n        <!-- /Headline  -->\n        <tr><td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n        <!-- Subcopy -->\n        <tr>\n          <td colspan="2" width="280" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n            Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n          </td>\n        </tr>\n        <!-- /Subcopy -->\n        <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n        <!-- CTA -->\n        <tr>\n          <td height="66" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n          <td width="30" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <!-- /CTA -->\n        <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n        <!-- Expiry - Delete if not needed -->\n        <tr>\n          <td colspan="2" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.4;">\n            SALE ENDS AT MIDNIGHT\n          </td>\n        </tr>\n      </table>\n    </td>\n\n    <td width="11" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n</table>\n<!-- ******************************* /SIDE BY SIDE Layout (Image left) ******************************* -->'
      }
    />
    <State
      id="heroSideImgRight"
      value={
        '<!-- ******************************* SIDE BY SIDE Layout (Image right) ******************************* -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <!-- Message topper - Delete if not needed  -->\n    <tr>\n      <!-- Change background color as needed, default is red-->\n      <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n    <!-- /Message topper  -->\n    <!-- Thin topper - Delete if not needed  -->\n    <tr>\n      <td height="24" style="background-color: #BF0000;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Thin topper  -->\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <tr>\n    <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n    <td width="280">\n      <table role="presentation" width="280" cellspacing="0" cellpadding="0" border="0">\n        <!-- Headline  -->\n        <tr>\n          <td colspan="2" width="280" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:left;line-height:1.2;">\n            Norem ipsum dolor sit amet\n          </td>\n        </tr>\n        <!-- /Headline  -->\n        <tr><td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n        <!-- Subcopy -->\n        <tr>\n          <td colspan="2" width="280" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n            Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n          </td>\n        </tr>\n        <!-- /Subcopy -->\n        <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n        <!-- CTA -->\n        <tr>\n          <td height="66" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n          <td width="30" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <!-- /CTA -->\n        <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n        <!-- Expiry - Delete if not needed -->\n        <tr>\n          <td colspan="2" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.4;">\n            SALE ENDS AT MIDNIGHT\n          </td>\n        </tr>\n      </table>\n    </td>\n\n    <td width="11" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n    <td width="235" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <!-- FILL IN PATH & HEIGHT --> \n      <img src="images/books-test.png" width="235" height="377" alt="" style="display:block" border="0" />\n    </td>\n  </tr>\n</table>\n<!-- ******************************* /SIDE BY SIDE Layout (Image right) ******************************* -->'
      }
    />
    <State
      id="heroSpotlight"
      value={
        '<!-- Hero Spotlight  -->\n<!-- Text Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n      <!-- Change background color as needed, default is red-->\n      <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n</table>\n<!-- /Text Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;" target="_blank">\n        <!-- FILL IN PATH, ALT & HEIGHT -->\n        <img src="images/hero-placeholder-spotlight.jpg" width="550" height="741" alt="Hero Image Alt" style="display:block;background-color: #BF0000;" border="0" />\n      </a>\n    </td>\n  </tr>\n</table>\n<!-- /Hero Spotlight  -->'
      }
    />
    <State
      id="heroStackedCenter"
      value={
        '<!-- ******************************* STACKED (center aligned) ******************************* -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <!-- Message topper - Delete if not needed  -->\n    <tr>\n      <!-- Change background color as needed, default is red-->\n      <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n    <!-- /Message topper  -->\n    <!-- Thin topper - Delete if not needed  -->\n    <tr>\n      <td height="24" style="background-color: #BF0000;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Thin topper  -->\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <!-- Hero Image below topper (delete if not needed) -->      \n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <!-- FILL IN PATH, ALT (if needed) & HEIGHT -->\n        <img src="images/" width="550" height="0" alt="" style="display:block;background:#bf0000;" border="0" />\n    </td>\n  </tr>\n  <!-- /Hero Image below topper -->\n  <tr>\n    <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            <td width="502">\n                <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                    <!-- Headline  -->\n                    <tr>\n                        <td width="502" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:center;line-height:37px;">\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n                        </td>\n                    </tr>\n                    <!-- /Headline  -->\n                    <tr>\n                        <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <!-- Subcopy  -->\n                    <tr>\n                        <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:center;line-height:1.2;">\n                           Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n                            <!-- PROMOCODE -->\n                            <span style="font-weight:bold;">${PROMOCODE}</span>\n                            <!-- /PROMOCODE -->\n                        </td>\n                    </tr>\n                    <!-- /Subcopy  -->\n                </table>\n            </td>\n            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n      </table>\n    </td>\n  </tr>\n  <tr>\n    <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Headline & Subcopy -->\n  <!-- CTA -->\n  <tr>\n    <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n          <tr>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td height="70" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n      </table>\n    </td>\n  </tr>\n  <!-- /CTA -->\n  <!-- Expiry - Delete if not needed -->\n  <tr>\n    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <tr>\n    <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;">\n      SALE ENDS AT MIDNIGHT\n    </td>\n  </tr>\n  <!-- /Expiry -->\n\n  <!-- Hero Image below CTA (delete if not needed) -->      \n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <!-- FILL IN PATH, ALT (if needed) & HEIGHT -->\n      <img src="images/" width="550" height="0" alt="" style="display:block;" border="0" />\n    </td>\n  </tr>\n  <!-- /Hero Image below CTA -->\n</table>\n<!-- ******************************* /STACKED (center aligned) ******************************* -->'
      }
    />
    <State
      id="heroStackedLeft"
      value={
        '<!-- ******************************* STACKED (left aligned) ******************************* -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <!-- Message topper - Delete if not needed  -->\n    <tr>\n      <!-- Change background color as needed, default is red-->\n      <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n    <!-- /Message topper  -->\n    <!-- Thin topper - Delete if not needed  -->\n    <tr>\n      <td height="24" style="background-color: #BF0000;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Thin topper  -->\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <!-- Hero Image below topper (delete if not needed) -->      \n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <!-- FILL IN PATH, ALT (if needed) & HEIGHT -->\n        <img src="images/" width="550" height="0" alt="" style="display:block;background:#bf0000;" border="0" />\n    </td>\n  </tr>\n  <!-- /Hero Image below topper -->\n  <tr>\n    <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          <td width="486" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n            ANorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut \n            <br /><br />\n            ANorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut \n            <br /><br />\n            Happy reading,\n            <br /><br />\n            <span style="font-weight: bold;">The Rakuten Kobo Team</span>          \n          </td>\n          <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td> \n        </tr>\n      </table>\n    </td>\n  </tr>\n  <tr>\n    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Headline & Subcopy -->\n  <!-- CTA -->\n  <tr>\n    <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n          <tr>\n              <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td height="70" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n              <td width="198" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n      </table>\n    </td>\n  </tr>\n  <!-- /CTA -->\n  <tr>\n    <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n</table>\n<!-- ******************************* /STACKED (left aligned) ******************************* -->'
      }
    />
    <State
      id="heroStackedWasNow"
      value={
        '<!-- ******************************* STACKED (Was/Now) ******************************* -->\n<!-- Hero  -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <!-- Message topper - Delete if not needed  -->\n    <tr>\n      <!-- Change background color as needed, default is red-->\n      <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n    <!-- /Message topper  -->\n    <!-- Thin topper - Delete if not needed  -->\n    <tr>\n      <td height="24" style="background-color: #BF0000;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Thin topper  -->\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <!-- Hero Image below topper -->      \n  <tr>\n      <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n          <!-- FILL IN PATH, ALT (if needed) & HEIGHT -->\n          <img src="images/hero-placeholder.jpg" width="550" height="200" alt="" style="display:block;background:#bf0000;" border="0" />\n      </td>\n  </tr>\n  <!-- /Hero Image below topper -->\n  <tr>\n      <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n      <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n          <tr>\n              <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td width="502">\n                  <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                      <!-- Headline  -->\n                      <tr>\n                          <td width="502" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:center;line-height:37px;">\n                              Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n                          </td>\n                      </tr>\n                      <!-- /Headline  -->\n                      <tr>\n                          <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      </tr>\n                      <!-- Subcopy  -->\n                      <tr>\n                          <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:center;line-height:1.2;">\n                              Lorem ipsum dolor sit amet, consectetur adipiscing\n                          </td>\n                      </tr>\n                      <!-- /Subcopy  -->\n                      <!-- Pricing - Delete if not needed  -->\n                      <tr>\n                        <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      </tr>\n                      <tr>\n                        <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:36px;text-align:center;line-height:1.2;">\n                          $XX.xx\n                        </td>\n                      </tr>\n                      <tr>\n                        <td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                      </tr>\n                      <!-- Was and save pricing  -->\n                      <tr>\n                        <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;">\n                          ${MT_COPY_WAS}: <span style="text-decoration:line-through;font-size:18px;">XX.xx</span> ${MT_COPY_SAVE}: <span style="font-size:18px;">$X.xx</span>\n                        </td>\n                      </tr>\n                      <!-- Was and save pricing  -->\n                      <!-- /Pricing  -->\n                  </table>\n              </td>\n              <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n      </table>\n      </td>\n  </tr>\n  <tr>\n      <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Headline & Subcopy -->\n  <!-- CTA -->\n  <tr>\n      <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n          <tr>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td height="70" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n      </table>\n      </td>\n  </tr>\n  <!-- /CTA -->\n  <!-- Expiry - Delete if not needed -->\n  <tr>\n      <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <tr>\n      <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;">\n      SALE ENDS AT MIDNIGHT\n      </td>\n  </tr>\n  <!-- /Expiry -->\n</table>\n<!-- ******************************* STACKED (Was/Now) ******************************* -->'
      }
    />
    <State
      id="heroStepsSidebySide"
      value={
        '<!-- ******************************* Side by Side - Steps ******************************* -->\n<!-- Hero  -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <!-- Message topper - Delete if not needed  -->\n    <tr>\n      <!-- Change background color as needed, default is red-->\n      <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n    <!-- /Message topper  -->\n    <!-- Thin topper - Delete if not needed  -->\n    <tr>\n      <td height="24" style="background-color: #BF0000;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Thin topper  -->\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <!-- Hero Image below topper -->      \n  <tr>\n      <td colspan="7" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <!-- FILL IN PATH, ALT (if needed) & HEIGHT -->\n        <img src="images/hero-placeholder.jpg" width="550" height="200" alt="" style="display:block;background:#bf0000;" border="0" />\n      </td>\n  </tr>\n  <!-- /Hero Image below topper -->\n  <tr>\n      <td colspan="7" height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n      <td colspan="7" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n            <tr>\n                <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                <td width="502">\n                    <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                        <!-- Headline  -->\n                        <tr>\n                            <td width="502" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:center;line-height:37px;">\n                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n                            </td>\n                        </tr>\n                        <!-- /Headline  -->\n                        <tr>\n                            <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        </tr>\n                        <!-- Subcopy  -->\n                        <tr>\n                            <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:center;line-height:1.2;">\n                                Lorem ipsum dolor sit amet, consectetur adipiscing\n                            </td>\n                        </tr>\n                        <!-- /Subcopy  -->\n                    </table>\n                </td>\n                <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n        </table>\n      </td>\n  </tr>\n  <tr>\n      <td colspan="7" height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Headline & Subcopy -->\n\n  <!-- Steps Section -->\n  <tr>\n    <td width="25" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    <!-- Step 1  -->\n    <td width="156">\n      <table role="presentation" width="156" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="58" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          <td width="40" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <img src="/contentlibrary/!componentlibrary/images/1.png" width="40" height="40" alt="1" style="display:block;" border="0" />\n          </td>\n          <td width="58" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" width="156" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:18px;text-align:center;line-height:1.4;">\n              Gorem ipsum dolor sit amet,\n          </td>\n        </tr>\n        <tr>\n          <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" width="156" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.4;">\n              Gorem ipsum dolor sit amet, conse ctetur adipiscing elit. conse conse\n          </td>\n        </tr>\n      </table>\n    </td>\n    <!-- /Step 1  -->\n    <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    <!-- Step 2  -->\n    <td width="156">\n      <table role="presentation" width="156" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="58" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          <td width="40" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <img src="/contentlibrary/!componentlibrary/images/2.png" width="40" height="40" alt="2" style="display:block;" border="0" />\n          </td>\n          <td width="58" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" width="156" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:18px;text-align:center;line-height:1.4;">\n              Gorem ipsum dolor sit amet,\n          </td>\n        </tr>\n        <tr>\n          <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" width="156" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.4;">\n              Gorem ipsum dolor sit amet, conse ctetur adipiscing elit. conse conse\n          </td>\n        </tr>\n      </table>\n    </td>\n    <!-- /Step 2  -->\n    <td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    <!-- Step 3  -->\n    <td width="156">\n      <table role="presentation" width="156" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="58" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          <td width="40" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <img src="/contentlibrary/!componentlibrary/images/3.png" width="40" height="40" alt="3" style="display:block;" border="0" />\n          </td>\n          <td width="58" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" width="156" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:18px;text-align:center;line-height:1.4;">\n              Gorem ipsum dolor sit amet,\n          </td>\n        </tr>\n        <tr>\n          <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n        <tr>\n          <td colspan="3" width="156" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.4;">\n              Gorem ipsum dolor sit amet, conse ctetur adipiscing elit. conse conse\n          </td>\n        </tr>\n      </table>\n    </td>\n    <!-- /Step 3  -->\n    <td width="25" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- Steps Section -->\n\n  <tr>\n    <td colspan="7" height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- CTA -->\n  <tr>\n      <td colspan="7" width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n            <tr>\n                <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                <td height="70" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n                <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n        </table>\n      </td>\n  </tr>\n  <!-- /CTA -->\n  <!-- Expiry - Delete if not needed -->\n  <tr>\n      <td colspan="7" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <tr>\n      <td colspan="7" width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;">\n      SALE ENDS AT MIDNIGHT\n      </td>\n  </tr>\n  <!-- /Expiry -->\n</table> \n<!-- ******************************* Side by Side - Steps ******************************* -->'
      }
    />
    <State
      id="heroStepsStacked"
      value={
        '<!-- ******************************* Stacked Steps ******************************* -->\n<!-- Hero  -->\n<!-- Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <!-- Message topper - Delete if not needed  -->\n    <tr>\n      <!-- Change background color as needed, default is red-->\n      <td width="550" height="48" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n    <!-- /Message topper  -->\n    <!-- Thin topper - Delete if not needed  -->\n    <tr>\n      <td height="24" style="background-color: #BF0000;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Thin topper  -->\n</table>\n<!-- /Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <!-- Hero Image below topper (delete if not needed) -->      \n  <tr>\n      <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <!-- FILL IN PATH, ALT (if needed) & HEIGHT -->\n        <img src="images/hero-placeholder.jpg" width="550" height="250" alt="" style="display:block;background:#bf0000;" border="0" />\n      </td>\n  </tr>\n  <!-- /Hero Image below topper -->\n  <tr>\n      <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n      <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n            <tr>\n                <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                <td width="502">\n                    <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                        <!-- Headline  -->\n                        <tr>\n                            <td width="502" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:center;line-height:37px;">\n                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n                            </td>\n                        </tr>\n                        <!-- /Headline  -->\n                        <tr>\n                            <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                        </tr>\n                        <!-- Subcopy  -->\n                        <tr>\n                            <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:center;line-height:1.2;">\n                                Lorem ipsum dolor sit amet, consectetur adipiscing\n                            </td>\n                        </tr>\n                        <!-- /Subcopy  -->\n                    </table>\n                </td>\n                <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n        </table>\n      </td>\n  </tr>\n  <tr>\n      <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Headline & Subcopy -->\n\n  <!-- Steps  -->\n  <tr>\n    <td width="550">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="77" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          <td width="396">\n            <table role="presentation" width="396" cellspacing="0" cellpadding="0" border="0">\n              <!-- Step 1 -->\n              <tr>\n                <td width="40" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                  <img src="/contentlibrary/!componentlibrary/images/1.png" width="40" height="40" alt="1" style="display:block;" border="0" />\n                </td>\n                <td width="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                <td width="320" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:18px;text-align:left;line-height:1.2;">\n                    Gorem ipsum dolor sit amet, consec tetur adipiscing elit. conse conse \n                </td>\n              </tr>\n              <!-- /Step 1 -->\n              <tr>\n                <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n              <!-- Step 2 -->\n              <tr>\n                <td width="40" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                  <img src="/contentlibrary/!componentlibrary/images/2.png" width="40" height="40" alt="2" style="display:block;" border="0" />\n                </td>\n                <td width="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                <td width="320" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:18px;text-align:left;line-height:1.2;">\n                    Gorem ipsum dolor sit amet, consec tetur adipiscing elit. conse conse\n                </td>\n              </tr>\n              <!-- /Step 2 -->\n              <tr>\n                <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n              <!-- Step 3 -->\n              <tr>\n                <td width="40" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n                  <img src="/contentlibrary/!componentlibrary/images/3.png" width="40" height="40" alt="3" style="display:block;" border="0" />\n                </td>\n                <td width="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                <td width="320" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:18px;text-align:left;line-height:1.2;">\n                    Gorem ipsum dolor sit amet, consec tetur adipiscing elit. conse conse\n                </td>\n              </tr>\n              <!-- /Step 3 -->\n              <tr>\n                <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n            </table>\n          </td>\n          <td width="77" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n      </table>\n    </td>\n  </tr>\n  <!-- /Steps  -->\n\n  <!-- CTA -->\n  <tr>\n      <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n            <tr>\n                <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                <td height="70" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n                <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n        </table>\n      </td>\n  </tr>\n  <!-- /CTA -->\n  <!-- Expiry - Delete if not needed -->\n  <tr>\n      <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <tr>\n      <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;">\n      SALE ENDS AT MIDNIGHT\n      </td>\n  </tr>\n  <!-- /Expiry -->\n</table>\n<!-- ******************************* /Stacked Steps ******************************* -->'
      }
    />
    <State
      id="heroVIPStacked"
      value={
        '<!-- ******************************* STACKED (center aligned) ******************************* -->\n<!-- Text Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n      <td width="550" height="48" style="background-color: #000000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n</table>\n<!-- /Text Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <!-- VIP logo -->      \n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <img src="/contentlibrary/!componentlibrary/images/vip-550.jpg" width="550" height="153" alt="VIP" style="display:block;background:#BF0000;" border="0" />\n    </td>\n  </tr>\n  <!-- /VIP logo -->\n  <!-- Hero Image below topper (delete if not needed) -->      \n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <!-- FILL IN PATH, ALT & HEIGHT -->\n      <img src="images/hero-placeholder.jpg" width="550" height="250" alt="Hero Image Alt" style="display:block;background:#bf0000;" border="0" />\n    </td>\n  </tr>\n  <!-- /Hero Image below topper -->\n  <tr>\n    <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            <td width="502">\n                <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                    <!-- Headline  -->\n                    <tr>\n                        <td width="502" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:center;line-height:37px;">\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n                        </td>\n                    </tr>\n                    <!-- /Headline  -->\n                    <tr>\n                        <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>\n                    <!-- Subcopy  -->\n                    <tr>\n                        <td width="502" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:center;line-height:1.2;">\n                            Lorem ipsum dolor sit amet, consectetur adipiscing\n                        </td>\n                    </tr>\n                    <!-- /Subcopy  -->\n                </table>\n            </td>\n            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n      </table>\n    </td>\n  </tr>\n  <tr>\n    <td height="36" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <!-- /Headline & Subcopy -->\n  <!-- CTA -->\n  <tr>\n    <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n          <tr>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              <td height="70" style="background-color:#BF0000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n              <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          </tr>\n      </table>\n    </td>\n  </tr>\n  <!-- /CTA -->\n  <!-- Expiry - Delete if not needed -->\n  <tr>\n    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n  <tr>\n    <td width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.4;">\n      SALE ENDS AT MIDNIGHT\n    </td>\n  </tr>\n  <!-- /Expiry -->\n</table>\n<!-- /STACKED (center aligned)  -->'
      }
    />
    <State
      id="heroVIPStackedLeft"
      value={
        '<!-- ******************************* STACKED (Left aligned) ******************************* -->\n<!-- Text Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n      <td width="550" height="48" style="background-color: #000000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n        Topper Text\n      </td>\n    </tr>\n</table>\n<!-- /Text Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color: #990000;">\n  <!-- VIP logo -->      \n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <img src="/contentlibrary/!componentlibrary/images/vip-550.png" width="550" height="127" alt="VIP" style="display:block;background:#990000;" border="0" />\n    </td>\n  </tr>\n  <!-- /VIP logo -->\n  <tr>\n    <td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          <td width="502">\n              <table role="presentation" width="502" cellspacing="0" cellpadding="0" border="0">\n                  <!-- Headline  -->\n                  <tr>\n                      <td colspan="2" width="502" style="color:#ffffff;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:left;line-height:37px;">\n                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n                      </td>\n                  </tr>\n                  <!-- /Headline  -->\n                  <tr>\n                      <td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <!-- Subcopy  -->\n                  <tr>\n                      <td colspan="2" width="502" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n                          Lorem ipsum dolor sit amet, consectetur adipiscing\n                      </td>\n                  </tr>\n                  <!-- /Subcopy  -->\n                  <tr>\n                      <td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <!-- CTA  -->\n                  <tr>\n                    <td height="70" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Hero CTA</a></td>\n                    <td width="182" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <!-- /CTA  -->\n                  <!-- Expiry - Delete if not needed -->\n                  <tr>\n                    <td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr>\n                    <td colspan="2" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.4;">\n                      SALE ENDS AT MIDNIGHT\n                    </td>\n                  </tr>\n                  <!-- /Expiry -->\n                  <tr>\n                    <td colspan="2" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n              </table>\n          </td>\n          <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n      </table>\n    </td>\n  </tr>\n</table>\n<!-- /STACKED (left aligned)  -->'
      }
    />
    <State
      id="heroVIPStackedSide"
      value={
        '<!-- ******************************* SIDE BY SIDE Layout (Image right) ******************************* -->\n<!-- Text Topper -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n  <tr>\n    <td width="550" height="48" style="background-color: #000000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:24px;text-align:center;line-height:27px;letter-spacing: 3px;text-transform:uppercase;">                    \n      Topper Text\n    </td>\n  </tr>\n</table>\n<!-- /Text Topper -->\n\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color: #990000;">\n  <tr>\n    <!-- Left side (Content)  -->\n    <td width="315" valign="top">\n      <table role="presentation" width="315" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td colspan="3" width="315" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <img src="/contentlibrary/!componentlibrary/images/vip-315.png" width="315" height="105" alt="" style="display:block;background-color:#990000;" border="0" />\n          </td>\n        </tr>\n\n        <tr>\n          <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n          <td width="280">\n            <table role="presentation" width="280" cellspacing="0" cellpadding="0" border="0">\n              <!-- Headline  -->\n              <tr>\n                <td colspan="2" width="280" style="color:#ffffff;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:32px;text-align:left;line-height:1.2;">\n                  Norem ipsum dolor sit amet\n                </td>\n              </tr>\n              <!-- /Headline  -->\n              <tr><td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- Subcopy -->\n              <tr>\n                <td colspan="2" width="280" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:20px;text-align:left;line-height:1.2;">\n                  Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n                </td>\n              </tr>\n              <!-- /Subcopy -->\n              <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- CTA -->\n              <tr>\n                <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'HERO1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                <td width="30" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n              </tr>\n              <!-- /CTA -->\n              <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n              <!-- Expiry - Delete if not needed -->\n              <tr>\n                <td colspan="2" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.4;">\n                  SALE ENDS AT MIDNIGHT\n                </td>\n              </tr>\n            </table>\n          </td>\n\n          <td width="11" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n      </table>\n    </td>\n    <!-- /Left side (Content)  -->\n\n    <!-- Right side (Image) -->\n    <td width="235" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <!-- FILL IN PATH & HEIGHT - If they are book covers, make sure to export as png and the bottom red is a transparent bg --> \n      <img src="images/CoverSidePlaceholder.jpg" width="235" height="458" alt="" style="display:block" border="0" />\n    </td>\n    <!-- /Right side (Image) -->\n  </tr>\n</table>\n<!-- /SIDE BY SIDE Layout (Image right) -->'
      }
    />
    <JavascriptQuery
      id="updateHeroTopperColour"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateHeroTopperColour.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="featureReskin">
    <State
      id="featureBackgroundColourOptions"
      value={
        '[\n  {\n    "label": "‎ ‎ Red",\n    "value": "#BF0000"\n  },\n {\n    "label": "‎ ‎ Light Red",\n    "value": "#F2CBCC"\n  },\n  {\n    "label": "‎ ‎ Orange",\n    "value": "#CB4F11"\n  },\n  {\n    "label": "‎ ‎ Light Orange",\n    "value": "#F6DCD0"\n  },\n{\n    "label": "‎ ‎ Yellow",\n    "value": "#EEB711"\n  },\n{\n    "label": "‎ ‎ Green",\n    "value": "#005830"\n  },\n{\n    "label": "‎ ‎ Blue",\n    "value": "#0A59C6"\n  },\n{\n    "label": "‎ ‎ Light Blue",\n    "value": "#C3D3F4"\n  },\n{\n    "label": "‎ ‎ Dark Pink",\n    "value": "#AD2F74"\n  },\n{\n    "label": "‎ ‎ Pink",\n    "value": "#DEACC7"\n  },\n{\n    "label": "‎ ‎ Light Pink",\n    "value": "#F0D6E2"\n  },\n{\n    "label": "‎ ‎ Black",\n    "value": "#000000"\n  },\n{\n    "label": "‎ ‎ VIP Red",\n    "value": "#990000"\n  }\n]'
      }
    />
    <State
      id="featureBlogHorizImgLeft"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t<td width="486" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" >\n\t\t\t    <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="486">\n\t\t\t\t    <tbody>\n\t\t\t\t\t    <tr>\n                            <!-- Image  -->\n\t\t\t\t\t\t\t<td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="233">\n                                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                    <!-- Add image here, fill out alt text, width and height -->\n                                    <img src="images/feature-236-placeholder.jpg" alt="XXX" height="207" width="233" style="display: block;background-color:#BF0000;">\n                                </a>\n    \t\t\t\t\t\t</td>\n                            <!-- /Image  -->\n                            <!-- Content  -->\n    \t\t\t\t\t\t<td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;background-color:#F2CBCC;" width="253">\n        \t\t\t\t\t\t<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                    <tbody>\n                                        <!-- HEADLINE -->\n                                        <tr>\n                                            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                            <td width="205" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                                <!-- BLOG TITLE  -->\n                                                Headline\n        \t\t\t\t\t\t\t\t\t</td>\n                                            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        </tr>\n                                        <!-- / HEADLINE ENDS-->\n                                        <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <!-- SUBCOPY -->\n                                        <tr>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="205">\n                                                Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                            </td>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                        </tr>\n                                        <!-- SUBCOPY ENDS -->\n                                        <tr><td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <!-- CTA -->\n                                        <tr>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:left;line-height:1;" width="205">\n                                                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:underline;">\n                                                    Link CTA >\n                                                </a>\n                                            </td>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                        </tr>\n                                        <!-- / CTA ENDS -->\n                                    </tbody>\n                                </table>\n\t\t\t\t\t\t\t</td>\n                            <!-- /Content  -->\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</tbody>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t\t<td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>'
      }
    />
    <State
      id="featureBlogHorizImgRight"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t<td width="486" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" >\n\t\t\t    <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="486">\n\t\t\t\t    <tbody>\n\t\t\t\t\t    <tr>                            \n                            <!-- Content  -->\n    \t\t\t\t\t\t<td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;background-color:#F2CBCC;" width="253">\n        \t\t\t\t\t\t<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                    <tbody>\n                                        <!-- HEADLINE -->\n                                        <tr>\n                                            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                            <td width="205" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                                <!-- BLOG TITLE  -->\n                                                Headline\n        \t\t\t\t\t\t\t\t\t</td>\n                                            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        </tr>\n                                        <!-- / HEADLINE ENDS-->\n                                        <tr><td height="16" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <!-- SUBCOPY -->\n                                        <tr>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="205">\n                                                Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                            </td>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                        </tr>\n                                        <!-- SUBCOPY ENDS -->\n                                        <tr><td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <!-- CTA -->\n                                        <tr>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:left;line-height:1;" width="205">\n                                                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:underline;">\n                                                    Link CTA >\n                                                </a>\n                                            </td>\n                                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                        </tr>\n                                        <!-- / CTA ENDS -->\n                                    </tbody>\n                                </table>\n\t\t\t\t\t\t\t</td>\n                            <!-- /Content  -->\n                            <!-- Image  -->\n\t\t\t\t\t\t\t<td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="233">\n                                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                    <!-- Add image here, fill out alt text, width and height -->\n                                    <img src="images/BlogImage.jpg" alt="XXX" height="207" width="233" style="display: block; background-color:#BF0000;">\n                                </a>\n    \t\t\t\t\t\t</td>\n                            <!-- /Image  -->\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</tbody>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t\t<td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>'
      }
    />
    <State
      id="featureBlogVerticalDual"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n        <!-- Blog 1  -->\n        <td width="253">\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                <tbody>\n                    <!-- Image -->\n                    <tr>\n                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="253">\n                            <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                <!-- Add image here and fill in with alt text, width and height  -->\n                                <img src="images/feature-253-placeholder.jpg" alt="XXX" width="253" height="247" style="display: block;background-color:#BF0000;">\n                            </a>\n                        </td>\n                    </tr>\n                    <!-- /Image -->\n                    \n                    <!-- Content  -->\n                    <tr>\n                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color: #F2CBCC;" width="253">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                <tbody>\n                                    <tr><td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                    <!-- HEADLINE -->\n                                    <tr>\n                                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        <td width="205" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                            <!-- BLOG TITLE  -->\n                                            Headline\n                                        </td>\n                                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                    </tr>\n                                    <!-- / HEADLINE ENDS-->\n                                    <tr><td height="12" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                    <!-- SUBCOPY -->\n                                    <tr>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="205">\n                                            Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                        </td>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                    </tr>\n                                    <!-- SUBCOPY ENDS -->\n                                    <tr><td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                    <!-- CTA -->\n                                    <tr>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:left;line-height:1;text-decoration:none;" width="205">\n                                            <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:underline;">\n                                                Link CTA >\n                                            </a>\n                                        </td>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                    </tr>\n                                    <!-- / CTA ENDS -->\n                                    <tr><td colspan="3" height="37" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                </tbody>\n                            </table>\n                        </td>\n                    </tr>\n                    <!-- /Content  -->\n                </tbody>\n            </table>\n\n        </td>\n        <!-- /Blog 1  -->\n\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="12">&nbsp;</td>\n\n        <!-- Blog 2  -->\n        <td width="253">\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                <tbody>\n                    <!-- Image -->\n                    <tr>\n                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="253">\n                            <a href="${clickthrough(\'FEATURE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                <!-- Add image here and fill in with alt text, width and height  -->\n                                <img src="images/feature-253-placeholder.jpg" alt="XXX" width="253" height="247" style="display: block;background-color:#BF0000;">\n                            </a>\n                        </td>\n                    </tr>\n                    <!-- /Image -->\n                    \n                    <!-- Content  -->\n                    <tr>\n                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color: #F2CBCC;" width="253">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                <tbody>\n                                    <tr><td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                    <!-- HEADLINE -->\n                                    <tr>\n                                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        <td width="205" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                            <!-- BLOG TITLE  -->\n                                            Headline\n                                        </td>\n                                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                    </tr>\n                                    <!-- / HEADLINE ENDS-->\n                                    <tr><td height="12" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                    <!-- SUBCOPY -->\n                                    <tr>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="205">\n                                            Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                        </td>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                    </tr>\n                                    <!-- SUBCOPY ENDS -->\n                                    <tr><td height="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                    <!-- CTA -->\n                                    <tr>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:16px;text-align:left;line-height:1;text-decoration:none;" width="205">\n                                            <a href="${clickthrough(\'FEATURE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:underline;">\n                                                Link CTA >\n                                            </a>\n                                        </td>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="24">&nbsp;</td>\n                                    </tr>\n                                    <!-- / CTA ENDS -->\n                                    <tr><td colspan="3" height="37" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                </tbody>\n                            </table>\n                        </td>\n                    </tr>\n                    <!-- /Content  -->\n                </tbody>\n            </table>\n\n        </td>\n        <!-- /Blog 2  -->\n\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n    </tr>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>'
      }
    />
    <State
      id="featureGenericImgLeft"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t\n      <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" >\n        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n          <tbody>\n            <!-- Topper -->\n            <!-- Message & Promo Line - Delete if not needed -->\n            <tr>\n              <td colspan="2" width="518">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518" style="background-color: #BF0000;">\n                  <tr>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                      TOPPER MESSAGE\n                    </td>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-style:italic;font-size:14px;text-align:right;line-height:1.2;letter-spacing:1px;text-transform:uppercase;">                    \n                      PROMO LINE\n                    </td>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                  </tr>\n                </table>\n              </td>              \n            </tr>\n            <!-- /Message & Promo Line -->\n            <!-- Thin Topper - Delete if not needed  -->\n            <tr>\n              <td colspan="2" height="20" style="background-color: #EEB711;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n            <!-- /Thin Topper  -->   \n            <!-- /Topper  -->       \n            <tr>\n              <!-- Image  -->\n              <td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="236">\n                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                  <!-- Add image here, fill out alt text and height -->\n                  <img src="images/feature-236-placeholder.jpg" alt="" height="304" width="236" style="display: block;background-color:#BF0000;">\n                </a>\n              </td>\n              <!-- /Image  -->\n\n              <!-- Content -->\n              <td width="282" style="background-color: #F2CBCC;">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="282" >\n                  <tr>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;" width="250">\n                      <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="250">\n                        <tbody>\n                          <!-- HEADLINE -->\n                          <tr>\n                            <td width="250" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:22px;color:#000000;text-align:left;line-height:1.2;">\n                                Norem ipsum <br />dolor sit amet\n                            </td>\n                          </tr>\n                          <!-- / HEADLINE-->\n                          <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <!-- SUBCOPY -->\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="250">\n                              Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n                            </td>\n                          </tr>\n                          <!-- /SUBCOPY -->\n                          <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <!-- CTA -->\n                          <tr>\n                            <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                          </tr>\n                          <!-- /CTA -->\n                          <!-- Expiry - Delete if not needed -->\n                          <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td width="250" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                              SALE ENDS AT MIDNIGHT\n                            </td>\n                          </tr>\n                          <!-- /Expiry  -->\n                        </tbody>\n                      </table>\n                    </td>\n\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color:#F2CBCC;" width="16">&nbsp;</td>\n                  </tr>\n                </table>\n              </td>\n              <!-- /Content -->            \n            </tr>\n          </tbody>\n        </table>\n\t\t\t</td>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n  <tr>\n    <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n</table>'
      }
    />
    <State
      id="featureGenericImgRight"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t\n      <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" >\n        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n          <tbody>\n            <!-- Topper  -->\n            <!-- Message & Promo Line - Delete if not needed -->\n            <tr>\n              <td colspan="2" width="518">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518" style="background-color: #BF0000;">\n                  <tr>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                      TOPPER MESSAGE\n                    </td>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-style:italic;font-size:14px;text-align:right;line-height:1.2;letter-spacing:1px;text-transform:uppercase;">                    \n                      PROMO LINE\n                    </td>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                  </tr>\n                </table>\n              </td>              \n            </tr>\n            <!-- /Message & Promo Line -->\n            <!-- Thin Topper - Delete if not needed  -->\n            <tr>\n              <td colspan="2" height="20" style="background-color: #EEB711;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>\n            <!-- /Thin Topper  --> \n            <!-- /Topper  -->\n            <tr>              \n              <!-- Content -->\n               <td width="282" style="background-color: #F2CBCC;">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="282" >\n                  <tr>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;" width="250">\n                      <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="250">\n                        <tbody>\n                          <!-- HEADLINE -->\n                          <tr>\n                            <td width="250" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:22px;color:#000000;text-align:left;line-height:1.2;">\n                                Norem ipsum <br />dolor sit amet\n                            </td>\n                          </tr>\n                          <!-- / HEADLINE-->\n                          <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <!-- SUBCOPY -->\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="250">\n                              Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n                            </td>\n                          </tr>\n                          <!-- /SUBCOPY -->\n                          <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <!-- CTA -->\n                          <tr>\n                            <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                          </tr>\n                          <!-- /CTA -->\n                          <!-- Expiry - Delete if not needed -->\n                          <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td width="250" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                              SALE ENDS AT MIDNIGHT\n                            </td>\n                          </tr>\n                          <!-- /Expiry  -->\n                        </tbody>\n                      </table>\n                    </td>\n\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color:#F2CBCC;" width="16">&nbsp;</td>\n                  </tr>\n                </table>\n               </td>\n              <!-- /Content -->    \n               \n              <!-- Image  -->\n              <td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="236">\n                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                  <!-- Add image here, fill out alt text and height -->\n                  <img src="images/feature-236-placeholder.jpg" alt="" height="304" width="236" style="display: block;background-color:#BF0000;">\n                </a>\n              </td>\n              <!-- /Image  -->\n            </tr>\n          </tbody>\n        </table>\n\t\t\t</td>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n  <tr>\n    <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n</table>'
      }
    />
    <State
      id="featureGenericVerticalDual"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n        <!-- Feature 1  -->\n        <td width="253">\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                <tbody>\n                    <!-- Topper  -->\n                    <tr>\n                        <td width="253" style="background-color:#BF0000;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                <tr>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                    <td width="221" height="40" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                                        TOPPER MESSAGE\n                                    </td>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                    <!-- /Topper  -->\n\n                    <tr>\n                        <td width="253" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                <tbody>\n                                    <!-- Image  -->\n                                    <tr>\n                                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="253">\n                                            <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                                <!-- Add image here and fill in with alt text and height  -->\n                                                <img src="images/feature-253-placeholder.jpg" alt="" width="253" height="207" style="display: block;background-color:#BF0000;">\n                                            </a>\n                                        </td>\n                                    </tr>\n                                    <!-- /Image  -->\n                                    <!-- Content  -->\n                                    <tr>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color: #F2CBCC;" width="253">\n                                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                                <tbody>\n                                                    <tr><td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                    <tr>\n                                                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                        \n                                                        <td width="205">\n                                                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="205">\n                                                                <tr>\n                                                                    <!-- HEADLINE -->\n                                                                    <td width="205" colspan="2" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                                                        Headline\n                                                                    </td>\n                                                                    <!-- / HEADLINE ENDS-->                        \n                                                                </tr>\n                                                                <tr><td height="12" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                                <!-- SUBCOPY -->\n                                                                <tr>\n                                                                    <td colspan="2" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;text-decoration:none;" width="205">\n                                                                        Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                                                    </td>\n                                                                </tr>\n                                                                <!-- SUBCOPY ENDS -->\n                                                                <tr><td height="24" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                                <!-- CTA -->\n                                                                <tr>\n                                                                    <td height="48" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Small CTA</a></td>\n                                                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="25">&nbsp;</td>\n                                                                </tr>\n                                                                <!-- / CTA ENDS -->\n                                                            </table>\n                                                        </td>                                            \n                                                        <td width="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                    </tr>  \n                                                    <tr><td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>                                  \n                                                </tbody>\n                                            </table>\n                                        </td>\n                                    </tr>\n                                    <!-- /Content  -->\n                                </tbody>\n                            </table>\n                        </td>\n                    </tr>\n                </tbody>\n            </table>\n\n        </td>\n        <!-- /Feature 1  -->\n\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="12">&nbsp;</td>\n\n        <!-- Feature 2 -->\n        <td width="253">\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                <tbody>\n                    <!-- Topper  -->\n                    <tr>\n                        <td width="253" style="background-color:#BF0000;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                <tr>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                    <td width="221" height="40" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                                        TOPPER MESSAGE\n                                    </td>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                    <!-- /Topper  -->\n\n                    <tr>\n                        <td width="253" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                <tbody>\n                                    <!-- Image  -->\n                                    <tr>\n                                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="253">\n                                            <a href="${clickthrough(\'FEATURE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                                <!-- Add image here and fill in with alt text and height  -->\n                                                <img src="images/feature-253-placeholder.jpg" alt="" width="253" height="207" style="display: block;background-color:#BF0000;">\n                                            </a>\n                                        </td>\n                                    </tr>\n                                    <!-- /Image  -->\n                                    <!-- Content  -->\n                                    <tr>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color: #F2CBCC;" width="253">\n                                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                                <tbody>\n                                                    <tr><td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                    <tr>\n                                                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                        \n                                                        <td width="205">\n                                                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="205">\n                                                                <tr>\n                                                                    <!-- HEADLINE -->\n                                                                    <td width="205" colspan="2" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                                                        Headline\n                                                                    </td>\n                                                                    <!-- / HEADLINE ENDS-->                        \n                                                                </tr>\n                                                                <tr><td height="12" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                                <!-- SUBCOPY -->\n                                                                <tr>\n                                                                    <td colspan="2" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;text-decoration:none;" width="205">\n                                                                        Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                                                    </td>\n                                                                </tr>\n                                                                <!-- SUBCOPY ENDS -->\n                                                                <tr><td height="24" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                                <!-- CTA -->\n                                                                <tr>\n                                                                    <td height="48" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Small CTA</a></td>\n                                                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="25">&nbsp;</td>\n                                                                </tr>\n                                                                <!-- / CTA ENDS -->\n                                                            </table>\n                                                        </td>                                            \n                                                        <td width="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                    </tr>  \n                                                    <tr><td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>                                  \n                                                </tbody>\n                                            </table>\n                                        </td>\n                                    </tr>\n                                    <!-- /Content  -->\n                                </tbody>\n                            </table>\n                        </td>\n                    </tr>\n                </tbody>\n            </table>\n        </td>\n        <!-- /Feature 2 -->\n\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n    </tr>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>'
      }
    />
    <State
      id="featureGenericVerticalFull"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n        <!-- Feature 1  -->\n        <td width="518">\n            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                <tbody>\n                    <!-- Topper  -->\n                    <tr>\n                        <td width="518" style="background-color:#BF0000;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                                <tr>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                                    TOPPER MESSAGE\n                                    </td>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-style:italic;font-size:14px;text-align:right;line-height:1.2;letter-spacing:1px;text-transform:uppercase;">                    \n                                    PROMO LINE\n                                    </td>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                    <!-- /Topper  -->\n\n                    <tr>\n                        <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                                <tbody>\n                                    <!-- Image  -->\n                                    <tr>\n                                        <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="518">\n                                            <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                                                <!-- Add image here and fill in with alt text and height  -->\n                                                <img src="images/feature-518-placeholder.jpg" alt="" width="518" height="207" style="display: block;background-color:#BF0000;">\n                                            </a>\n                                        </td>\n                                    </tr>\n                                    <!-- /Image  -->\n                                    <!-- Content  -->\n                                    <tr>\n                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color: #F2CBCC;" width="518">\n                                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                                                <tbody>\n                                                    <tr><td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                    <tr>\n                                                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                        \n                                                        <td width="470">\n                                                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="470">\n                                                                <tr>\n                                                                    <!-- HEADLINE -->\n                                                                    <td width="470" colspan="2" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                                                        Headline\n                                                                    </td>\n                                                                    <!-- / HEADLINE ENDS-->                        \n                                                                </tr>\n                                                                <tr><td height="16" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                                <!-- SUBCOPY -->\n                                                                <tr>\n                                                                    <td colspan="2" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;text-decoration:none;" width="470">\n                                                                        Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit amet, consectetur adipiscing elit. \n                                                                    </td>\n                                                                </tr>\n                                                                <!-- SUBCOPY ENDS -->\n                                                                <tr><td height="24" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                                <!-- CTA -->\n                                                                <tr>\n                                                                    <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                                                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="220">&nbsp;</td>\n                                                                </tr>\n                                                                <!-- / CTA ENDS -->\n                                                                <tr><td height="16" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                                <tr>\n                                                                    <td width="470" colspan="2" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                                                                    SALE ENDS AT MIDNIGHT\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                        </td>                                            \n                                                        <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                    </tr>  \n                                                    \n                                                    <tr><td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>                                  \n                                                </tbody>\n                                            </table>\n                                        </td>\n                                    </tr>\n                                    <!-- /Content  -->\n                                </tbody>\n                            </table>\n                        </td>\n                    </tr>\n                </tbody>\n            </table>\n        </td>\n        <!-- /Feature 1  -->\n\n        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n    </tr>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tr>\n        <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>'
      }
    />
    <State
      id="featureKoboPlusBaseFull"
      value={
        '<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color: #0A59C6;">\n    <tr>\n        <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    \n        <td width="486">\n            <table role="presentation" width="486" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td colspan="2" height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Kobo Plus logo  -->\n                <tr>\n                    <td width="160" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                        <img src="/contentlibrary/!componentlibrary/images/koboplus-logo.png" width="160" height="40" alt="Kobo Plus" border="0" />\n                    </td>\n                    <td width="326" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <tr>\n                    <td colspan="2" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Kobo Plus logo -->\n                <!-- Headline  -->\n                <tr>\n                    <td colspan="2" width="486" style="color:#ffffff;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:22px;text-align:left;line-height:1.2;">\n                        Headline Headline Headline Headline \n                    </td>                \n                </tr>\n                <!-- Headline  -->\n                <tr>\n                    <td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- Subcopy  -->\n                <tr>\n                    <td colspan="2" width="486" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;">\n                        Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit amet, consectetur adipiscing elit.                              \n                    </td>\n                </tr>\n                <!-- Subcopy  -->\n                <tr>\n                    <td colspan="2" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n                <!-- CTA  -->\n                <tr>\n                    <td colspan="2" width="486">\n                        <table role="presentation" width="486" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                                <td width="236" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n                <!-- CTA  -->\n                <tr>\n                    <td colspan="2" height="25" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>               \n            </table>\n        </td>\n    \n        <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <tr>\n        <td colspan="3" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <img src="/contentlibrary/!componentlibrary/images/plus-bottom-550-v2.png" width="550" height="82" alt="" style="display:block;background:#0A59C6;" border="0" />\n        </td>\n    </tr>\n</table>\n'
      }
    />
    <State
      id="featureKoboPlusBaseSingle"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="253" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                    <tbody>\n                        <!-- Image  -->\n                        <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="253">\n                                <img src="/contentlibrary/!componentlibrary/images/koboplus-253-v2.png" alt="Kobo Plus" width="253" height="207" style="display: block;background-color: #BF0000;">\n                            </td>\n                        </tr>\n                        <!-- /Image  -->\n                        <!-- Content  -->\n                        <tr>\n                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color: #C3D3F4;" width="253">\n                                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                    <tbody>\n                                        <tr><td colspan="3" height="44" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <tr>\n                                            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                            \n                                            <td width="205">\n                                                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="205">\n                                                    <tr>\n                                                        <!-- HEADLINE -->\n                                                        <td width="205" colspan="2" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                                            Headline\n                                                        </td>\n                                                        <!-- / HEADLINE ENDS-->                        \n                                                    </tr>\n                                                    <tr><td height="12" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                    <!-- SUBCOPY -->\n                                                    <tr>\n                                                        <td colspan="2" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="205">\n                                                            Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                                        </td>\n                                                    </tr>\n                                                    <!-- SUBCOPY ENDS -->\n                                                    <tr><td height="24" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                    <!-- CTA -->\n                                                    <tr>\n                                                        <td height="48" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Small CTA</a></td>\n                                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="25">&nbsp;</td>\n                                                    </tr>\n                                                    <!-- / CTA ENDS -->\n                                                </table>\n                                            </td>                                            \n                                            <td width="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        </tr>  \n                                        <tr><td colspan="3" height="44" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>                                  \n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <!-- /Content  -->\n                    </tbody>\n                </table>\n\t\t\t</td>\n\t\t</tr>\n\t</tbody>\n</table>'
      }
    />
    <State
      id="featureKoboPlusTasteProfile"
      value={
        '<!-- Kobo Plus Feature - Taste Profile  -->\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t\n            <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" >\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                    <!-- Topper -->\n                    <!-- Message & Promo Line - Delete if not needed -->\n                    <tr>\n                        <td colspan="2" width="518">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518" style="background-color: #EEB711;">\n                                <tr>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                    <td width="486" height="40" style="background-color: #EEB711; color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                                    TOPPER MESSAGE\n                                    </td>                                    \n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>              \n                    </tr>\n                    <!-- /Message & Promo Line -->\n                    <!-- Thin Topper - Delete if not needed  -->\n                    <tr>\n                        <td colspan="2" height="20" style="background-color: #EEB711;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>     \n                    <!-- /Thin Topper  -->       \n                    <!-- /Topper -->\n                    <tr>              \n                        <!-- Content -->\n                        <td width="282" style="background-color: #0A59C6;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="282" >\n                                <tr>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;" width="250">\n                                        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="250">\n                                            <tr><td colspan="2" height="20" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                            <!-- Kobo Plus logo  -->\n                                            <tr>\n                                                <td width="104" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                                                    <img src="/contentlibrary/!componentlibrary/images/koboplus-logo.png" width="104" height="26" alt="Kobo Plus" border="0" />\n                                                </td>\n                                                <td width="146" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                            </tr>\n                                            <tr>\n                                                <td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                            </tr>\n                                            <!-- Kobo Plus logo -->\n                                            <!-- HEADLINE -->\n                                            <tr>\n                                                <td colspan="2" width="250" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:22px;color:#ffffff;text-align:left;line-height:1.1;">\n                                                    Vertel het ons, en wij vertellen het jou\n                                                </td>\n                                            </tr>\n                                            <!-- / HEADLINE-->\n                                            <tr><td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                            <!-- SUBCOPY -->\n                                            <tr>\n                                                <td colspan="2" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="250">\n                                                    Ontvang betere leesaanbevelingen in enkele klikken\n                                                </td>\n                                            </tr>\n                                            <!-- /SUBCOPY -->\n                                            <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                            <!-- CTA -->\n                                            <tr>\n                                                <td colspan="2" width="250">\n                                                    <table role="presentation" width="250" cellspacing="0" cellpadding="0" border="0">\n                                                        <tr>\n                                                            <td height="48" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Begin nu</a></td>\n                                                            <td width="22" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                        </tr>\n                                                    </table>\n                                                </td>\n                                            </tr>\n                                            <!-- /CTA -->\n                                             <tr><td colspan="2" height="20" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        </table>\n                                    </td>\n\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>\n                        <!-- /Content -->    \n                        \n                        <!-- Image  -->\n                        <td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="236">\n                            <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                            <!-- Add image here, fill out alt text and height -->\n                            <img src="images/feature-236-placeholder.jpg" alt="" height="254" width="236" style="display: block;background-color:#BF0000;">\n                            </a>\n                        </td>\n                        <!-- /Image  -->\n                    </tr>\n                </table>\n\t\t\t</td>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n<!-- /Kobo Plus Feature - Taste Profile  -->\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n    <tbody>\n        <tr><td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n    </tbody>\n</table>'
      }
    />
    <State
      id="featureOptions"
      value={
        '[\n  { "label": "Feature_Generic_Image_Left",\n    "value": "{{ featureGenericImgLeft.value }}"\n  },\n  { "label": "Feature_Generic_Image_Right",\n    "value": "{{ featureGenericImgRight.value }}"\n  },\n  { "label": "Feature_Generic_Vertical_Dual",\n    "value": "{{ featureGenericVerticalDual.value }}"\n  },\n  { "label": "Feature_Generic_Vertical_Full",\n    "value": "{{ featureGenericVerticalFull.value }}"\n  },\n  { "label": "Feature_Spotlight_Image_left",\n    "value": "{{ featureSpotlightImgLeft.value }}"\n  },\n  { "label": "Feature_Spotlight_Image_Right",\n    "value": "{{ featureSpotlightImgRight.value }}"\n  },\n  { "label": "Feature_Blog_Horizontal_Image_Left",\n    "value": "{{ featureBlogHorizImgLeft.value }}"\n  },\n  { "label": "Feature_Blog_Horizontal_Image_Right",\n    "value": "{{ featureBlogHorizImgRight.value }}"\n  },\n  { "label": "Feature_Blog_Vertical_Dual",\n    "value": "{{ featureBlogVerticalDual.value }}"\n  },\n  { "label": "Feature_Text_Content_Card_Dual",\n    "value": "{{ featureTextContentCardDual.value }}"\n  },\n  { "label": "Feature_Text_Content_Card_Full",\n    "value": "{{ featureTextContentCardFull.value }}"\n  },\n  { "label": "Feature_KoboPlus_Base_Full",\n    "value": "{{ featureKoboPlusBaseFull.value }}"\n  },\n  { "label": "Feature_KoboPlus_Base_Single",\n    "value": "{{ featureKoboPlusBaseSingle.value }}"\n  },\n  { "label": "Feature_KoboPlus_Taste_Profile",\n    "value": "{{ featureKoboPlusTasteProfile.value }}"\n  },\n  { "label": "Feature_VIP_Base_Full",\n    "value": "{{ featureVIPBaseFull.value }}"\n  },\n  { "label": "Feature_VIP_Base_Single",\n    "value": "{{ featureVIPBaseSingle.value }}"\n  },\n  { "label": "Feature_VIP_Taste_Profile",\n    "value": "{{ featureVIPTasteProfile.value }}"\n  },\n{ "label": "None",\n    "value": "None"\n  }\n]'
      }
    />
    <State
      id="featureSpotlightImgLeft"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t\n      <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" >\n        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n          <tbody>\n            <!-- Topper -->\n            <!-- Topper & Promo Line -->\n            <tr>\n              <td colspan="2" width="518">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518" style="background-color: #BF0000;">\n                  <tr>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                      TOPPER MESSAGE\n                    </td>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-style:italic;font-size:14px;text-align:right;line-height:1.2;letter-spacing:1px;text-transform:uppercase;">                    \n                      PROMO LINE\n                    </td>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                  </tr>\n                </table>\n              </td>              \n            </tr>\n            <!-- /Topper & Promo Line -->\n            <!-- Thin Topper - Delete if not needed -->\n            <tr>\n              <td colspan="2" height="20" style="background-color: #EEB711;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>     \n            <!-- /Thin Topper -->  \n            <!-- /Topper -->\n            <tr>   \n              <!-- Image  -->\n              <td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="236">\n                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                  <!-- Add image here, fill out alt text and height -->\n                  <img src="images/Spotlight-placeholder.jpg" alt="" height="388" width="236" style="display: block;background-color:#BF0000;">\n                </a>\n              </td>\n              <!-- /Image  -->\n\n              <!-- Content -->\n               <td width="282" style="background-color: #F2CBCC;">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="282" >\n                  <tr>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;" width="250">\n                      <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="250">\n                        <tbody>\n                          <!-- HEADLINE -->\n                          <tr>\n                            <td width="250" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-style:italic;font-size:22px;color:#000000;text-align:left;line-height:1.2;">\n                                Norem ipsum <br />dolor sit amet\n                            </td>\n                          </tr>\n                          <!-- / HEADLINE-->\n                          <!-- Author - Delete if not needed -->\n                          <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="250">\n                              by Lorem Ipsum\n                            </td>\n                          </tr>\n                          <!-- /Author  -->\n                          <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <!-- SUBCOPY -->\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;" width="250">\n                              Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n                            </td>\n                          </tr>\n                          <!-- /SUBCOPY -->\n\n                          <!-- Pricing - Delete if not needed  -->\n                          <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:36px;text-align:center;line-height:1.2;" width="250">\n                              $XX.xx\n                            </td>\n                          </tr>\n                          <!-- WAS/SAVE PRICING - DELETE IF NOT NEEDED  -->\n                          <tr><td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;" width="250">\n                              ${MT_COPY_WAS}: <span style="text-decoration:line-through;">XX.xx</span> ${MT_COPY_SAVE}: $X.xx\n                            </td>\n                          </tr>\n                          <!-- WAS/SAVE PRICING  -->\n                          <!-- /Pricing  -->\n\n                          <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <!-- CTA -->\n                          <tr>\n                            <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                          </tr>\n                          <!-- /CTA -->\n                          <!-- Expiry - Delete if not needed -->\n                          <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <!-- Update to text-align:center; if there is pricing. Double check the creative  -->\n                            <td width="250" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                              SALE ENDS AT MIDNIGHT\n                            </td>\n                          </tr>\n                          <!-- /Expiry  -->\n                        </tbody>\n                      </table>\n                    </td>\n\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color:#F2CBCC;" width="16">&nbsp;</td>\n                  </tr>\n                </table>\n               </td>\n              <!-- /Content -->                   \n            </tr>\n          </tbody>\n        </table>\n\t\t\t</td>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n  <tr>\n    <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n</table>'
      }
    />
    <State
      id="featureSpotlightImgRight"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t\n      <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" >\n        <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n          <tbody>\n            <!-- Topper -->\n            <!-- Topper & Promo Line -->\n            <tr>\n              <td colspan="2" width="518">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518" style="background-color: #BF0000;">\n                  <tr>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                      TOPPER MESSAGE\n                    </td>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                    <td width="235" height="40" style="background-color: #BF0000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-style:italic;font-size:14px;text-align:right;line-height:1.2;letter-spacing:1px;text-transform:uppercase;">                    \n                      PROMO LINE\n                    </td>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                  </tr>\n                </table>\n              </td>              \n            </tr>\n            <!-- /Topper & Promo Line -->\n            <!-- Thin Topper - Delete if not needed -->\n            <tr>\n              <td colspan="2" height="20" style="background-color: #EEB711;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n            </tr>     \n            <!-- /Thin Topper -->  \n            <!-- /Topper -->\n            <tr>              \n              <!-- Content -->\n               <td width="282" style="background-color: #F2CBCC;">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="282" >\n                  <tr>\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;" width="250">\n                      <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="250">\n                        <tbody>\n                          <!-- HEADLINE -->\n                          <tr>\n                            <td width="250" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-style:italic;font-size:22px;color:#000000;text-align:left;line-height:1.2;">\n                                Norem ipsum <br />dolor sit amet\n                            </td>\n                          </tr>\n                          <!-- / HEADLINE-->\n                          <!-- Author - Delete if not needed -->\n                          <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="250">\n                              by Lorem Ipsum\n                            </td>\n                          </tr>\n                          <!-- /Author -->\n                          <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <!-- SUBCOPY -->\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;" width="250">\n                              Norem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus.\n                            </td>\n                          </tr>\n                          <!-- /SUBCOPY -->\n\n                          <!-- Pricing - Delete if not needed  -->\n                          <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:36px;text-align:center;line-height:1.2;" width="250">\n                              $XX.xx\n                            </td>\n                          </tr>\n                          <!-- WAS/SAVE PRICING - DELETE IF NOT NEEDED  -->\n                          <tr><td height="8" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;" width="250">\n                              ${MT_COPY_WAS}: <span style="text-decoration:line-through;">XX.xx</span> ${MT_COPY_SAVE}: $X.xx\n                            </td>\n                          </tr>\n                          <!-- /WAS/SAVE PRICING  -->\n                          <!-- /Pricing  -->\n\n                          <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <!-- CTA -->\n                          <tr>\n                            <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                          </tr>\n                          <!-- /CTA -->\n                          <!-- Expiry - Delete if not needed -->\n                          <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                          <tr>\n                            <td width="250" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                              SALE ENDS AT MIDNIGHT\n                            </td>\n                          </tr>\n                          <!-- /Expiry  -->\n                        </tbody>\n                      </table>\n                    </td>\n\n                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color:#F2CBCC;" width="16">&nbsp;</td>\n                  </tr>\n                </table>\n               </td>\n              <!-- /Content -->    \n               \n              <!-- Image  -->\n              <td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="236">\n                <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                  <!-- Add image here, fill out alt text and height -->\n                  <img src="images/Spotlight-placeholder.jpg" alt="" height="388" width="236" style="display: block;background-color:#BF0000;">\n                </a>\n              </td>\n              <!-- /Image  -->\n            </tr>\n          </tbody>\n        </table>\n\t\t\t</td>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n  <tr>\n    <td height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n</table>'
      }
    />
    <State
      id="featureTextContentCardDual"
      value={
        '<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td width="11" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="258" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2; background-color: #F2CBCC; vertical-align: top;">\n            <table role="presentation" width="258" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="60" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                <tr>\n                    <td width="26" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="206" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2; background-color: #F2CBCC; ">\n                        <!-- Book Icon - Delete if not needed -->\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="77" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="52" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:19px;text-align:center;line-height:1.2;">\n                                    <img src="images/Book.png" alt="" height="52" width="52" style="display:block;" border="0">\n                                </td>\n                                <td width="77" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                        </table>\n                        <!-- /Book Icon  -->\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr><td width="206" style="color:#000000;font-family: Georgia, Times New Roman, Times, serif;font-weight: 700;font-size: 22px;text-align: center;line-height:1.2;">\n                                Headline 1\n                            </td></tr>\n                        </table>\n                        \n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                        </table>\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr><td width="206" style="color:#000000;font-family: \'Trebuchet MS\',arial,sans-serif;font-weight: 400;font-size: 16px;text-align: center;vertical-align: middle;">\n                                Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                            </td></tr>                                   \n                        </table>\n\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr><td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                        </table>\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="13" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td height="46" style="background-color:#ffffff;font-family: Trebuchet MS; font-weight: 700; font-size: 16px; line-height: 20px; text-align: center;">\n                                    <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                                        Small CTA 1\n                                    </a>\n                                </td>\n                                <td width="13" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                            <tr><td height="60" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                        </table>\n                    </td>\n                    <td width="26" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\t\t\t\t    \n            </table>\n        </td>\n\n        <td width="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\n        <td width="258" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2; background-color: #F2CBCC; vertical-align: top;">\n            <table role="presentation" width="258" cellspacing="0" cellpadding="0" border="0">\n                <tr><td height="60" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                <tr>\n                    <td width="26" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="206" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2; background-color: #F2CBCC; ">\n                        <!-- Book Icon - Delete if not needed -->\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="77" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td width="52" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:19px;text-align:center;line-height:1.2;">\n                                        <img src="images/Book.png" alt="" height="52" width="52" style="display:block;" border="0">\n                                    </td>\n                                <td width="77" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                        </table>\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr><td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                        </table>\n                        <!-- /Book Icon -->\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="206" style="color:#000000;font-family: Georgia, Times New Roman, Times, serif;font-weight: 700;font-size: 22px;text-align: center;line-height:1.2;">\n                                    Headline 2\n                                </td>\n                            </tr>\t\t\t\t\t\t\t\t\t\n                        </table>\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr><td height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                        </table>\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="206" style="color:#000000;font-family: \'Trebuchet MS\',arial,sans-serif;font-weight: 400;font-size: 16px;text-align: center;vertical-align: middle;">\n                                    Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit\n                                </td>\n                            </tr>\t\t\t\t\t\t\t\t\n                        </table>\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr><td height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                        </table>\n                        <table role="presentation" width="206" cellspacing="0" cellpadding="0" border="0">\n                            <tr>\n                                <td width="13" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                <td height="46" style="background-color:#ffffff;font-family: Trebuchet MS; font-weight: 700; font-size: 16px; line-height: 20px; text-align: center;">\n                                    <a href="${clickthrough(\'FEATURE2_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">\n                                        Small CTA 2\n                                    </a>\n                                </td>\n                                <td width="13" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                            <tr><td height="60" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                        </table>\n                    </td>\n                    <td width="26" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n        <td width="11" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>'
      }
    />
    <State
      id="featureTextContentCardFull"
      value={
        '<!-- Choose between Centered and Left Aligned Layouts  -->\n\n<!-- ******************************* FEATURE (Center Aligned layout) ******************************* -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td colspan="3" height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- Icon image (delete if not needed) -->      \n    <tr>\n        <td width="249" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="52" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <img src="images/Book.png" width="52" height="52" alt="Hero Image Alt" style="display:block;;" border="0" />\n        </td>\n        <td width="249" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <tr>\n        <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Icon image -->\n\n    <!-- Headline & Subcopy -->\n    <tr>\n        <td colspan="3" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="470">\n                        <table role="presentation" width="470" cellspacing="0" cellpadding="0" border="0">\n                            <!-- Headline  -->\n                            <tr>\n                                <td width="470" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:22px;text-align:center;line-height:1.2;">\n                                    Headline Headline Headline Headline \n                                </td>\n                            </tr>\n                            <!-- /Headline  -->\n                            <tr>\n                                <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                            <!-- Subcopy  -->\n                            <tr>\n                                <td width="470" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:center;line-height:1.2;">\n                                    Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit amet, consectetur adipiscing elit.\n                                </td>\n                            </tr>\n                            <!-- /Subcopy  -->\n                        </table>\n                    </td>\n                    <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n    <tr>\n        <td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Headline & Subcopy -->\n    <!-- CTA -->\n    <tr>\n        <td colspan="3" width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="background-color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                    <td width="115" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n    <!-- /CTA -->\n    <!-- Expiry - Delete if not needed -->\n    <tr>\n        <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <tr>\n        <td colspan="3" width="550" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        SALE ENDS AT MIDNIGHT\n        </td>\n    </tr>\n    <!-- /Expiry -->\n\n    <tr>\n        <td colspan="3" height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- ******************************* /FEATURE (Center Aligned layout) ******************************* -->\n\n<!-- ******************************* FEATURE (Left Aligned layout) ******************************* -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n    <tr>\n        <td colspan="3" height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- Icon image (delete if not needed) -->      \n    <tr>\n        <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        <td width="52" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <img src="images/Book.png" width="52" height="52" alt="Hero Image Alt" style="display:block;;" border="0" />\n        </td>\n        <td width="458" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <tr>\n        <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Icon image -->\n\n    <!-- Headline & Subcopy -->\n    <tr>\n        <td colspan="3" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td width="470">\n                        <table role="presentation" width="470" cellspacing="0" cellpadding="0" border="0">\n                            <!-- Headline  -->\n                            <tr>\n                                <td width="470" style="color:#000000;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:22px;text-align:left;line-height:1.2;">\n                                    Headline Headline Headline Headline \n                                </td>\n                            </tr>\n                            <!-- /Headline  -->\n                            <tr>\n                                <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                            </tr>\n                            <!-- Subcopy  -->\n                            <tr>\n                                <td width="470" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;">\n                                    Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit amet, consectetur adipiscing elit.\n                                </td>\n                            </tr>\n                            <!-- /Subcopy  -->\n                        </table>\n                    </td>\n                    <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n    <tr>\n        <td colspan="3" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <!-- /Headline & Subcopy -->\n    <!-- CTA -->\n    <tr>\n        <td colspan="3" width="550">\n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td height="66" style="background-color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#ffffff;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                    <td width="260" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n    <!-- /CTA -->\n    <!-- Expiry - Delete if not needed -->\n    <tr>\n        <td colspan="3" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n    <tr>\n        <td colspan="3" width="550">\n            <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n                <tr>\n                    <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    <td colspan="3" width="470" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                    SALE ENDS AT MIDNIGHT\n                    </td>\n                    <td width="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n    <!-- /Expiry -->\n\n    <tr>\n        <td colspan="3" height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n    </tr>\n</table>\n<!-- ******************************* /FEATURE (Left Aligned layout) ******************************* -->\n'
      }
    />
    <State
      id="featureVIPBaseFull"
      value={
        '<!-- Feature - VIP - Base (Full size)  -->\n<table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0" style="background-color: #990000;">\n  <!-- VIP logo -->      \n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n        <img src="/contentlibrary/!componentlibrary/images/vip-logo-550.png" width="550" height="105" alt="VIP" style="display:block;background:#990000;" border="0" />\n    </td>\n  </tr>\n  <!-- /VIP logo -->\n  <tr>\n    <td height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n  </tr>\n\n  <!-- Headline & Subcopy -->\n  <tr>\n    <td width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;">\n      <table role="presentation" width="550" cellspacing="0" cellpadding="0" border="0">\n        <tr>\n          <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n          <td width="486">\n              <table role="presentation" width="486" cellspacing="0" cellpadding="0" border="0">\n                  <!-- Headline  -->\n                  <tr>\n                      <td colspan="2" width="486" style="color:#ffffff;font-family:Georgia, \'Times New Roman\', Times, serif;font-weight:bold;font-size:22px;text-align:left;line-height:1.2;">\n                          Headline Headline Headline Headline  \n                      </td>\n                  </tr>\n                  <!-- /Headline  -->\n                  <tr>\n                      <td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <!-- Subcopy  -->\n                  <tr>\n                      <td colspan="2" width="486" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;">\n                          Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit amet, consectetur adipiscing elit.\n                      </td>\n                  </tr>\n                  <!-- /Subcopy  -->\n                  <tr>\n                      <td colspan="2" height="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <!-- CTA  -->\n                  <tr>\n                    <td height="66" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.4;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Secondary CTA</a></td>\n                    <td width="236" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <!-- /CTA  -->\n                  <!-- Expiry - Delete if not needed -->\n                  <tr>\n                    <td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n                  <tr>\n                    <td colspan="2" width="550" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.4;">\n                      SALE ENDS AT MIDNIGHT\n                    </td>\n                  </tr>\n                  <!-- /Expiry -->\n                  <tr>\n                    <td colspan="2" height="40" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                  </tr>\n              </table>\n          </td>\n          <td width="32" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n        </tr>\n      </table>\n    </td>\n  </tr>\n</table>\n<!-- /Feature - VIP - Base (Full size)  -->'
      }
    />
    <State
      id="featureVIPBaseSingle"
      value={
        '<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="253" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                    <tbody>\n                        <!-- Image  -->\n                        <tr>\n                            <td style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:center;line-height:1.2;" width="253">\n                                <img src="/contentlibrary/!componentlibrary/images/vip-253-v2.png" alt="VIP" width="253" height="207" style="display: block;background-color:#BF0000;">\n                            </td>\n                        </tr>\n                        <!-- /Image  -->\n                        <!-- Content  -->\n                        <tr>\n                            <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;background-color: #E5999A;" width="253">\n                                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="253">\n                                    <tbody>\n                                        <tr><td colspan="3" height="44" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <tr>\n                                            <td width="24" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                            \n                                            <td width="205">\n                                                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="205">\n                                                    <tr>\n                                                        <!-- HEADLINE -->\n                                                        <td width="205" colspan="2" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:18px;color:#000000;text-align:left;line-height:1.2;">\n                                                            Headline\n                                                        </td>\n                                                        <!-- / HEADLINE ENDS-->                        \n                                                    </tr>\n                                                    <tr><td height="12" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                    <!-- SUBCOPY -->\n                                                    <tr>\n                                                        <td colspan="2" style="color:#000000;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="205">\n                                                            Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                                        </td>\n                                                    </tr>\n                                                    <!-- SUBCOPY ENDS -->\n                                                    <tr><td height="24" colspan="2" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                                    <!-- CTA -->\n                                                    <tr>\n                                                        <td height="48" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Small CTA</a></td>\n                                                        <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="25">&nbsp;</td>\n                                                    </tr>\n                                                    <!-- / CTA ENDS -->\n                                                </table>\n                                            </td>                                            \n                                            <td width="24" colspan="3" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        </tr>  \n                                        <tr><td colspan="3" height="44" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>                                  \n                                    </tbody>\n                                </table>\n                            </td>\n                        </tr>\n                        <!-- /Content  -->\n                    </tbody>\n                </table>\n\t\t\t</td>\n\t\t</tr>\n\t</tbody>\n</table>'
      }
    />
    <State
      id="featureVIPTasteProfile"
      value={
        '<!-- VIP Feature - Taste Profile  -->\n<table role="presentation" border="0" cellpadding="0" cellspacing="0" width="550">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t\t\n            <td width="518" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" >\n                <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518">\n                    <!-- Topper -->\n                    <!-- Topper & Promo Line -->\n                    <tr>\n                        <td colspan="2" width="518">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="518" style="background-color: #000000;">\n                                <tr>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                    <td width="235" height="40" style="background-color: #000000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-size:14px;text-align:left;line-height:1.2;letter-spacing: 1px;text-transform:uppercase;">                    \n                                    TOPPER MESSAGE\n                                    </td>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                    <td width="235" height="40" style="background-color: #000000; color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-style:italic;font-size:14px;text-align:right;line-height:1.2;letter-spacing:1px;text-transform:uppercase;">                    \n                                    PROMO LINE\n                                    </td>\n                                    <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>              \n                    </tr>\n                    <!-- /Topper & Promo Line -->\n                    <!-- Thin Topper - Delete if not needed -->\n                    <tr>\n                        <td colspan="2" height="20" style="background-color: #BF0000;font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                    </tr>            \n                    <!-- /Thin Topper -->\n                    <!-- /Topper -->\n                    <tr>              \n                        <!-- Content -->\n                        <td width="282" style="background-color: #990000;">\n                            <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="282" >\n                            <tr>\n                                <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n\n                                <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;vertical-align:middle;" width="250">\n                                    <table role="presentation" border="0" cellpadding="0" cellspacing="0" width="250">\n                                        <!-- VIP logo  -->\n                                        <tr>\n                                            <td width="50" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:14px;text-align:left;line-height:1.2;">\n                                                <img src="/contentlibrary/!componentlibrary/images/vip.png" width="50" height="50" alt="VIP" border="0" />\n                                            </td>\n                                            <td width="200" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        </tr>\n                                        <tr>\n                                            <td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        </tr>\n                                        <!-- VIP logo -->\n                                        <!-- HEADLINE -->\n                                        <tr>\n                                            <td colspan="2" width="250" style="font-family:Georgia, Times New Roman, Times, serif;font-weight:bold;font-size:22px;color:#ffffff;text-align:left;line-height:1.2;">\n                                                Vertel het ons, en wij vertellen het jou\n                                            </td>\n                                        </tr>\n                                        <!-- / HEADLINE-->\n                                        <!-- Author - Delete if not needed -->\n                                        <tr>\n                                            <td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                        </tr>\n                                        <tr>\n                                            <td colspan="2" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="250">\n                                            by Lorem Ipsum\n                                            </td>\n                                        </tr>\n                                        <!-- /Author -->\n                                        <tr><td colspan="2" height="12" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <!-- SUBCOPY -->\n                                        <tr>\n                                            <td colspan="2" style="color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:normal;font-size:16px;text-align:left;line-height:1.2;" width="250">\n                                                Forem ipsum dolor sit amet, consectetur adipiscing elit.Forem ipsum dolor sit \n                                            </td>\n                                        </tr>\n                                        <!-- /SUBCOPY -->\n                                        <tr><td colspan="2" height="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td></tr>\n                                        <!-- CTA -->\n                                        <tr>\n                                            <td colspan="2" width="250">\n                                                <table role="presentation" width="250" cellspacing="0" cellpadding="0" border="0">\n                                                    <tr>\n                                                        <td height="48" style="background-color:#ffffff;font-family:\'Trebuchet MS\',arial,sans-serif;font-weight:bold;font-style:normal;font-size:16px;text-align:center;line-height:1.2;"><a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" style="color:#000000;text-decoration:none;display:block;padding:10px 0;" target="_blank">Begin nu</a></td>\n                                                        <td width="70" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /CTA -->\n                                    </table>\n                                </td>\n\n                                <td style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;" width="16">&nbsp;</td>\n                            </tr>\n                            </table>\n                        </td>\n                        <!-- /Content -->    \n                        \n                        <!-- Image  -->\n                        <td style="color:#000000;font-family:\'normal Georgia\', Georgia, Times New Roman, Times, serif;font-weight:normal;font-size:14px;line-height:1.2;" width="236">\n                            <a href="${clickthrough(\'FEATURE1_LINK\',\'MT_COPY_UTMSOURCE=\'+MT_COPY_UTMSOURCE)}" target="_blank" style="color:#000000; text-decoration:none;">\n                            <!-- Add image here, fill out alt text and height -->\n                            <img src="images/feature-236-placeholder.jpg" alt="" height="272" width="236" style="display: block;background-color:#BF0000;">\n                            </a>\n                        </td>\n                        <!-- /Image  -->\n                    </tr>\n                </table>\n\t\t\t</td>\n\t\t\t<td width="16" style="font-family:arial,sans-serif;font-weight:normal;font-size:1px;line-height:1px;mso-line-height-rule:exactly;">&nbsp;</td>\n\t\t</tr>\n\t</tbody>\n</table>\n<!-- /VIP Feature - Taste Profile  -->'
      }
    />
    <JavascriptQuery
      id="removeThinTopperFeature1"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/removeThinTopperFeature1.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="removeThinTopperFeature2"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/removeThinTopperFeature2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="removeThinTopperFeature3"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/removeThinTopperFeature3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="updateFeatureBackgroundColour1"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureBackgroundColour1.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="updateFeatureBackgroundColour2"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureBackgroundColour2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="updateFeatureBackgroundColour3"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureBackgroundColour3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="updateFeatureTopperColour1"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureTopperColour1.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="removeThinTopperFeature1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="updateFeatureTopperColour2"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureTopperColour2.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="removeThinTopperFeature2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="updateFeatureTopperColour3"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/updateFeatureTopperColour3.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="removeThinTopperFeature3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
  </Folder>
  <JavascriptQuery
    id="adjustHeroDefaultTemplate"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/adjustHeroDefaultTemplate.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="clearForm"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/clearForm.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="compiled"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/compiled.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="exportHTML"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/exportHTML.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="extractPrices"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/extractPrices.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="getImageInfo"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getImageInfo.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="updateHeroImage"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <GoogleSheetsQuery
    id="getSheetsData"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    resourceName="4824ccfb-027c-4066-a921-1025b39d1ffe"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    sheetName="{{ sheetSelect.value }}"
    spreadsheetId="{{ sheetsURL.value.match(/\/d\/([a-zA-Z0-9-_]+)\//)[1] }}"
    transformer="// Query results are available as the `data` variable
const sheets = data.sheets.map(sheet => sheet.properties.title);
return sheets;"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="compiled"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="getSheetsList"
    actionType="getSpreadsheetInfo"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="4824ccfb-027c-4066-a921-1025b39d1ffe"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    spreadsheetId="{{ sheetsURL.value.match(/\/d\/([a-zA-Z0-9-_]+)\//)[1] }}"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "true" }] }}
      pluginId="toggleValue"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <State
    id="htmlContentState"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ Weekly_Template_Reskin.value }}"
  />
  <State
    id="imgHeightState"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="0"
  />
  <State
    id="imgWidthState"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="0"
  />
  <JavascriptQuery
    id="insertAdditionalContent"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/insertAdditionalContent.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="newImageHeroQuery"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/newImageHeroQuery.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="parseSheetNames"
    funcBody={include("../lib/parseSheetNames.js", "string")}
    runBehavior="debounced"
  />
  <JavascriptQuery
    id="populateAdditionalContent"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/populateAdditionalContent.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="populateCopy"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/populateCopy.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="populateLegal"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/populateLegal.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="preprocessHtmlContent"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/preprocessHtmlContent.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="removeSubcopySection"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/removeSubcopySection.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="removeTopper"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/removeTopper.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="removeUnusedBooklines"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/removeUnusedBooklines.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="removeUnusedBooklines2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/removeUnusedBooklines2.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="replaceHero"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/replaceHero.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="replaceTopperWithText"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/replaceTopperWithText.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State id="toggleValue" value="false" />
  <JavascriptQuery
    id="updateAdditionalImages"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/updateAdditionalImages.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="updateBooklineSelect"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/updateBooklineSelect.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="updateHeroImage"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/updateHeroImage.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="updateSpecificImage"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/updateSpecificImage.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <State
    id="dcrMenuValues"
    value={
      '[\n  { "label": "None",\n    "value": "None"\n  },\n  {\n    "label": "Hide for ESFNAC",\n    "value": "CX != \\"ESFNAC\\""\n  },\n  {\n    "label": "Hide for FRFNAC",\n    "value": "CX != \\"FRFNAC\\""\n  },\n  {\n    "label": "Hide for PTFNAC",\n    "value": "CX != \\"PTFNAC\\""\n  },\n  {\n    "label": "Hide for ITM",\n    "value": "CX != \\"ITM\\""\n  },\n  {\n    "label": "Hide for VIPs",\n    "value": "KSP.MEMBER_TYPE != \\"VIP\\""\n  },\n  {\n    "label": "Hide for non-VIPs",\n    "value": "KSP.MEMBER_TYPE == \\"VIP\\""\n  },\n  {\n    "label": "Hide for Kobo Plus active subscribers",\n    "value": "SUBSCRIPTION_PET.SUBSCRIPTION_STATUS != \\"S\\""\n  },\n  {\n    "label": "Hide for non-subscribers",\n    "value": "SUBSCRIPTION_PET.SUBSCRIPTION_STATUS == \\"S\\" && SUBSCRIPTION_PET.SUBSCRIPTION_STATUS != \\"\\""\n  },\n  {\n    "label": "Hide for Read + Listen plan Kobo Plus subscribers",\n    "value": "SUBSCRIPTION_PET.SUBSCRIPTION_TYPE != \\"combined\\""\n  }\n]'
    }
  />
  <JavascriptQuery
    id="query93"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/query93.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Include src="./confirmModal.rsx" />
  <Include src="./drawerFrame1.rsx" />
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
    <Include src="./tabbedContainer1.rsx" />
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
    <Include src="./featuresCollapsible.rsx" />
  </Frame>
</Screen>

{
  "name": "devtool-loader",
  "baseUrl": "../",
  "out": "../devtool.js",
  "preserveLicenseComments": false,
  "optimize": "none",
  "paths": {
    "requireLib": "require"
  },
  "include": [
    "requireLib",
    "jsp/taglib/box",
    "jsp/taglib/button",
    "jsp/taglib/column",
    "jsp/taglib/device",
    "jsp/taglib/event",
    "jsp/taglib/extend",
    "jsp/taglib/field",
    "jsp/taglib/function",
    "jsp/taglib/html",
    "jsp/taglib/jsp",
    "jsp/taglib/jstl",
    "jsp/taglib/link",
    "jsp/taglib/listsearchresult",
    "jsp/taglib/nablarch",
    "jsp/taglib/spec",
    "jsp/taglib/tab",
    "jsp/taglib/table",
    "jsp/taglib/template",
    "nablarch/ui/AutoSpan",
    "nablarch/ui/AutoSum",
    "nablarch/ui/Collapsible",
    "nablarch/ui/ContextMenu",
    "nablarch/ui/DatePicker",
    "text!nablarch/ui/DatePicker.template",
    "nablarch/ui/device/ios-viewport-scaling-fix",
    "nablarch/ui/device/ios-virtual-keyboard-fix",
    "nablarch/ui/event/AjaxAction",
    "nablarch/ui/event/Listener",
    "nablarch/ui/event/RevertValue",
    "nablarch/ui/event/ShowDialogAction",
    "nablarch/ui/event/SubWindowListener",
    "nablarch/ui/event/TogglePropertyAction",
    "nablarch/ui/event/WindowCloseAction",
    "nablarch/ui/event/WriteAction",
    "nablarch/ui/event",
    "nablarch/ui/LightBox",
    "nablarch/ui/ListBuilder",
    "text!nablarch/ui/ListBuilder.template",
    "nablarch/ui/Placeholder",
    "nablarch/ui/readonly",
    "nablarch/ui/ResponsibleImage",
    "text!nablarch/ui/ResponsibleImage.template",
    "text!nablarch/ui/ResponsibleImageUnsupportMatchMedia.template",
    "text!nablarch/ui/ResponsibleImageUnsupportRatio.template",
    "nablarch/ui/selector",
    "nablarch/ui/SlideMenu",
    "nablarch/ui/Tab",
    "nablarch/ui/TabindexOrder",
    "nablarch/ui/TabLink",
    "nablarch/ui/ToggleCheckbox",
    "nablarch/ui/TreeList",
    "nablarch/ui/TreeMenu",
    "nablarch/ui/Widget",
    "nablarch/ui",
    "nablarch/util/BigDecimal",
    "nablarch/util/Consumer",
    "nablarch/util/DateUtil",
    "nablarch/util/SimpleDateFormat",
    "nablarch/util",
    "text!../WEB-INF/tags/device/media.tag",
    "text!../WEB-INF/tags/device/script.tag",
    "text!../WEB-INF/tags/device/set.tag",
    "text!../WEB-INF/tags/listSearchResult/listSearchPaging.tag",
    "text!../WEB-INF/tags/listSearchResult/listSearchParams.tag",
    "text!../WEB-INF/tags/listSearchResult/listSearchResult.tag",
    "text!../WEB-INF/tags/listSearchResult/listSearchSortSubmit.tag",
    "text!../WEB-INF/tags/listSearchResult/listSearchSubmit.tag",
    "text!../WEB-INF/tags/listSearchResult/table.tag",
    "text!../WEB-INF/tags/template/base_layout.tag",
    "text!../WEB-INF/tags/template/errorpage_template.tag",
    "text!../WEB-INF/tags/template/page_template.tag",
    "text!../WEB-INF/tags/template/subwindow_page_template.tag",
    "text!../WEB-INF/tags/widget/box/content.tag",
    "text!../WEB-INF/tags/widget/box/img.tag",
    "text!../WEB-INF/tags/widget/box/title.tag",
    "text!../WEB-INF/tags/widget/button/back.tag",
    "text!../WEB-INF/tags/widget/button/base.tag",
    "text!../WEB-INF/tags/widget/button/block.tag",
    "text!../WEB-INF/tags/widget/button/cancel.tag",
    "text!../WEB-INF/tags/widget/button/check.tag",
    "text!../WEB-INF/tags/widget/button/close.tag",
    "text!../WEB-INF/tags/widget/button/confirm.tag",
    "text!../WEB-INF/tags/widget/button/delete.tag",
    "text!../WEB-INF/tags/widget/button/download.tag",
    "text!../WEB-INF/tags/widget/button/popup.tag",
    "text!../WEB-INF/tags/widget/button/search.tag",
    "text!../WEB-INF/tags/widget/button/submit.tag",
    "text!../WEB-INF/tags/widget/button/update.tag",
    "text!../WEB-INF/tags/widget/column/checkbox.tag",
    "text!../WEB-INF/tags/widget/column/code.tag",
    "text!../WEB-INF/tags/widget/column/label.tag",
    "text!../WEB-INF/tags/widget/column/link.tag",
    "text!../WEB-INF/tags/widget/column/radio.tag",
    "text!../WEB-INF/tags/widget/event/alert.tag",
    "text!../WEB-INF/tags/widget/event/confirm.tag",
    "text!../WEB-INF/tags/widget/event/dialog.tag",
    "text!../WEB-INF/tags/widget/event/listen.tag",
    "text!../WEB-INF/tags/widget/event/listen_subwindow.tag",
    "text!../WEB-INF/tags/widget/event/send_request.tag",
    "text!../WEB-INF/tags/widget/event/toggle_disabled.tag",
    "text!../WEB-INF/tags/widget/event/toggle_property.tag",
    "text!../WEB-INF/tags/widget/event/toggle_readonly.tag",
    "text!../WEB-INF/tags/widget/event/window_close.tag",
    "text!../WEB-INF/tags/widget/event/write_to.tag",
    "text!../WEB-INF/tags/widget/field/base.tag",
    "text!../WEB-INF/tags/widget/field/block.tag",
    "text!../WEB-INF/tags/widget/field/calendar.tag",
    "text!../WEB-INF/tags/widget/field/checkbox.tag",
    "text!../WEB-INF/tags/widget/field/code_checkbox.tag",
    "text!../WEB-INF/tags/widget/field/code_pulldown.tag",
    "text!../WEB-INF/tags/widget/field/code_radio.tag",
    "text!../WEB-INF/tags/widget/field/extension_number.tag",
    "text!../WEB-INF/tags/widget/field/file.tag",
    "text!../WEB-INF/tags/widget/field/hint.tag",
    "text!../WEB-INF/tags/widget/field/inputbase.tag",
    "text!../WEB-INF/tags/widget/field/internal_hint.tag",
    "text!../WEB-INF/tags/widget/field/label.tag",
    "text!../WEB-INF/tags/widget/field/label_block.tag",
    "text!../WEB-INF/tags/widget/field/label_code.tag",
    "text!../WEB-INF/tags/widget/field/label_extension_number.tag",
    "text!../WEB-INF/tags/widget/field/label_id_value.tag",
    "text!../WEB-INF/tags/widget/field/label_tel.tag",
    "text!../WEB-INF/tags/widget/field/listbuilder.tag",
    "text!../WEB-INF/tags/widget/field/mail.tag",
    "text!../WEB-INF/tags/widget/field/password.tag",
    "text!../WEB-INF/tags/widget/field/pulldown.tag",
    "text!../WEB-INF/tags/widget/field/radio.tag",
    "text!../WEB-INF/tags/widget/field/tel.tag",
    "text!../WEB-INF/tags/widget/field/text.tag",
    "text!../WEB-INF/tags/widget/field/textarea.tag",
    "text!../WEB-INF/tags/widget/link/popup.tag",
    "text!../WEB-INF/tags/widget/link/submit.tag",
    "text!../WEB-INF/tags/widget/spec/author.tag",
    "text!../WEB-INF/tags/widget/spec/condition.tag",
    "text!../WEB-INF/tags/widget/spec/created_date.tag",
    "text!../WEB-INF/tags/widget/spec/desc.tag",
    "text!../WEB-INF/tags/widget/spec/layout.tag",
    "text!../WEB-INF/tags/widget/spec/updated_by.tag",
    "text!../WEB-INF/tags/widget/spec/updated_date.tag",
    "text!../WEB-INF/tags/widget/spec/validation.tag",
    "text!../WEB-INF/tags/widget/tab/content.tag",
    "text!../WEB-INF/tags/widget/tab/group.tag",
    "text!../WEB-INF/tags/widget/tab/link.tag",
    "text!../WEB-INF/tags/widget/table/plain.tag",
    "text!../WEB-INF/tags/widget/table/row.tag",
    "text!../WEB-INF/tags/widget/table/search_result.tag",
    "text!../WEB-INF/tags/widget/table/treelist.tag",
    "text!../WEB-INF/include/app_aside.jsp",
    "text!../WEB-INF/include/app_error.jsp",
    "text!../WEB-INF/include/app_footer.jsp",
    "text!../WEB-INF/include/app_header.jsp",
    "text!../WEB-INF/include/app_top_nav.jsp",
    "text!../WEB-INF/include/html_head.jsp",
    "text!../WEB-INF/include/js_include.jsp",
    "text!../WEB-INF/include/slide_aside.jsp",
    "text!../WEB-INF/include/subwindow_app_footer.jsp",
    "text!../WEB-INF/include/subwindow_app_header.jsp",
    "text!../WEB-INF/include/subwindow_app_top_nav.jsp"
  ]
}
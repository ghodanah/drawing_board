import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/localizations.dart';

class SfLocalizationsFrDelegate extends LocalizationsDelegate<SfLocalizations> {
  const SfLocalizationsFrDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'kr';

  @override
  Future<SfLocalizations> load(Locale locale) {
    return SynchronousFuture<SfLocalizations>(SfLocalizationsKr());
  }

  @override
  bool shouldReload(LocalizationsDelegate<SfLocalizations> old) => true;
}

class SfLocalizationsKr extends SfLocalizations {
  SfLocalizationsKr();

  @override
  // TODO: implement afterDataGridFilteringLabel
  String get afterDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement afterOrEqualDataGridFilteringLabel
  String get afterOrEqualDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement allDayLabel
  String get allDayLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewDayLabel
  String get allowedViewDayLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewMonthLabel
  String get allowedViewMonthLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewScheduleLabel
  String get allowedViewScheduleLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewTimelineDayLabel
  String get allowedViewTimelineDayLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewTimelineMonthLabel
  String get allowedViewTimelineMonthLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewTimelineWeekLabel
  String get allowedViewTimelineWeekLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewTimelineWorkWeekLabel
  String get allowedViewTimelineWorkWeekLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewWeekLabel
  String get allowedViewWeekLabel => throw UnimplementedError();

  @override
  // TODO: implement allowedViewWorkWeekLabel
  String get allowedViewWorkWeekLabel => throw UnimplementedError();

  @override
  // TODO: implement andDataGridFilteringLabel
  String get andDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement beforeDataGridFilteringLabel
  String get beforeDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement beforeOrEqualDataGridFilteringLabel
  String get beforeOrEqualDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement beginsWithDataGridFilteringLabel
  String get beginsWithDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement cancelDataGridFilteringLabel
  String get cancelDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement clearFilterDataGridFilteringLabel
  String get clearFilterDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement containsDataGridFilteringLabel
  String get containsDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement dateFiltersDataGridFilteringLabel
  String get dateFiltersDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement daySpanCountLabel
  String get daySpanCountLabel => throw UnimplementedError();

  @override
  // TODO: implement dhualhiLabel
  String get dhualhiLabel => throw UnimplementedError();

  @override
  // TODO: implement dhualqiLabel
  String get dhualqiLabel => throw UnimplementedError();

  @override
  // TODO: implement doesNotBeginWithDataGridFilteringLabel
  String get doesNotBeginWithDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement doesNotContainDataGridFilteringLabel
  String get doesNotContainDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement doesNotEndWithDataGridFilteringLabel
  String get doesNotEndWithDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement doesNotEqualDataGridFilteringLabel
  String get doesNotEqualDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement emptyDataGridFilteringLabel
  String get emptyDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement endsWithDataGridFilteringLabel
  String get endsWithDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement equalsDataGridFilteringLabel
  String get equalsDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement fromDataGridFilteringLabel
  String get fromDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement greaterThanDataGridFilteringLabel
  String get greaterThanDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement greaterThanOrEqualDataGridFilteringLabel
  String get greaterThanOrEqualDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement jumada1Label
  String get jumada1Label => throw UnimplementedError();

  @override
  // TODO: implement jumada2Label
  String get jumada2Label => throw UnimplementedError();

  @override
  // TODO: implement lessThanDataGridFilteringLabel
  String get lessThanDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement lessThanOrEqualDataGridFilteringLabel
  String get lessThanOrEqualDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement muharramLabel
  String get muharramLabel => throw UnimplementedError();

  @override
  // TODO: implement noEventsCalendarLabel
  String get noEventsCalendarLabel => throw UnimplementedError();

  @override
  // TODO: implement noMatchesDataGridFilteringLabel
  String get noMatchesDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement noSelectedDateCalendarLabel
  String get noSelectedDateCalendarLabel => throw UnimplementedError();

  @override
  // TODO: implement notEmptyDataGridFilteringLabel
  String get notEmptyDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement notNullDataGridFilteringLabel
  String get notNullDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement nullDataGridFilteringLabel
  String get nullDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement numberFiltersDataGridFilteringLabel
  String get numberFiltersDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement ofDataPagerLabel
  String get ofDataPagerLabel => throw UnimplementedError();

  @override
  // TODO: implement okDataGridFilteringLabel
  String get okDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement orDataGridFilteringLabel
  String get orDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement pagesDataPagerLabel
  String get pagesDataPagerLabel => throw UnimplementedError();

  @override
  // TODO: implement passwordDialogContentLabel
  String get passwordDialogContentLabel => throw UnimplementedError();

  @override
  // TODO: implement passwordDialogHeaderTextLabel
  String get passwordDialogHeaderTextLabel => throw UnimplementedError();

  @override
  // TODO: implement passwordDialogHintTextLabel
  String get passwordDialogHintTextLabel => throw UnimplementedError();

  @override
  // TODO: implement passwordDialogInvalidPasswordLabel
  String get passwordDialogInvalidPasswordLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfBookmarksLabel
  String get pdfBookmarksLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfEnterPageNumberLabel
  String get pdfEnterPageNumberLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfGoToPageLabel
  String get pdfGoToPageLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfHyperlinkContentLabel
  String get pdfHyperlinkContentLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfHyperlinkDialogCancelLabel
  String get pdfHyperlinkDialogCancelLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfHyperlinkDialogOpenLabel
  String get pdfHyperlinkDialogOpenLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfHyperlinkLabel
  String get pdfHyperlinkLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfInvalidPageNumberLabel
  String get pdfInvalidPageNumberLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfNoBookmarksLabel
  String get pdfNoBookmarksLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfPaginationDialogCancelLabel
  String get pdfPaginationDialogCancelLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfPaginationDialogOkLabel
  String get pdfPaginationDialogOkLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfPasswordDialogCancelLabel
  String get pdfPasswordDialogCancelLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfPasswordDialogOpenLabel
  String get pdfPasswordDialogOpenLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfScrollStatusOfLabel
  String get pdfScrollStatusOfLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfSignaturePadDialogClearLabel
  String get pdfSignaturePadDialogClearLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfSignaturePadDialogHeaderTextLabel
  String get pdfSignaturePadDialogHeaderTextLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfSignaturePadDialogPenColorLabel
  String get pdfSignaturePadDialogPenColorLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfSignaturePadDialogSaveLabel
  String get pdfSignaturePadDialogSaveLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuCopyLabel
  String get pdfTextSelectionMenuCopyLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuHighlightLabel
  String get pdfTextSelectionMenuHighlightLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuSquigglyLabel
  String get pdfTextSelectionMenuSquigglyLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuStrikethroughLabel
  String get pdfTextSelectionMenuStrikethroughLabel => throw UnimplementedError();

  @override
  // TODO: implement pdfTextSelectionMenuUnderlineLabel
  String get pdfTextSelectionMenuUnderlineLabel => throw UnimplementedError();

  @override
  // TODO: implement rabi1Label
  String get rabi1Label => throw UnimplementedError();

  @override
  // TODO: implement rabi2Label
  String get rabi2Label => throw UnimplementedError();

  @override
  // TODO: implement rajabLabel
  String get rajabLabel => throw UnimplementedError();

  @override
  // TODO: implement ramadanLabel
  String get ramadanLabel => throw UnimplementedError();

  @override
  // TODO: implement rowsPerPageDataPagerLabel
  String get rowsPerPageDataPagerLabel => throw UnimplementedError();

  @override
  // TODO: implement safarLabel
  String get safarLabel => throw UnimplementedError();

  @override
  // TODO: implement searchDataGridFilteringLabel
  String get searchDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement selectAllDataGridFilteringLabel
  String get selectAllDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement series
  String get series => throw UnimplementedError();

  @override
  // TODO: implement shaabanLabel
  String get shaabanLabel => throw UnimplementedError();

  @override
  // TODO: implement shawwalLabel
  String get shawwalLabel => throw UnimplementedError();

  @override
  // TODO: implement shortDhualhiLabel
  String get shortDhualhiLabel => throw UnimplementedError();

  @override
  // TODO: implement shortDhualqiLabel
  String get shortDhualqiLabel => throw UnimplementedError();

  @override
  // TODO: implement shortJumada1Label
  String get shortJumada1Label => throw UnimplementedError();

  @override
  // TODO: implement shortJumada2Label
  String get shortJumada2Label => throw UnimplementedError();

  @override
  // TODO: implement shortMuharramLabel
  String get shortMuharramLabel => throw UnimplementedError();

  @override
  // TODO: implement shortRabi1Label
  String get shortRabi1Label => throw UnimplementedError();

  @override
  // TODO: implement shortRabi2Label
  String get shortRabi2Label => throw UnimplementedError();

  @override
  // TODO: implement shortRajabLabel
  String get shortRajabLabel => throw UnimplementedError();

  @override
  // TODO: implement shortRamadanLabel
  String get shortRamadanLabel => throw UnimplementedError();

  @override
  // TODO: implement shortSafarLabel
  String get shortSafarLabel => throw UnimplementedError();

  @override
  // TODO: implement shortShaabanLabel
  String get shortShaabanLabel => throw UnimplementedError();

  @override
  // TODO: implement shortShawwalLabel
  String get shortShawwalLabel => throw UnimplementedError();

  @override
  // TODO: implement showRowsWhereDataGridFilteringLabel
  String get showRowsWhereDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortAToZDataGridFilteringLabel
  String get sortAToZDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortAndFilterDataGridFilteringLabel
  String get sortAndFilterDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortLargestToSmallestDataGridFilteringLabel
  String get sortLargestToSmallestDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortNewestToOldestDataGridFilteringLabel
  String get sortNewestToOldestDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortOldestToNewestDataGridFilteringLabel
  String get sortOldestToNewestDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortSmallestToLargestDataGridFilteringLabel
  String get sortSmallestToLargestDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement sortZToADataGridFilteringLabel
  String get sortZToADataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement textFiltersDataGridFilteringLabel
  String get textFiltersDataGridFilteringLabel => throw UnimplementedError();

  @override
  // TODO: implement todayLabel
  String get todayLabel => throw UnimplementedError();

  @override
  // TODO: implement weeknumberLabel
  String get weeknumberLabel => throw UnimplementedError();



}
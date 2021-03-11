# Snapping sheet

A package that provides a highly customizable sheet widget that snaps to different vertical positions

<table>
    <tr>
        <td>Using a ListView in <br> sheetBelow</td>
        <td>Example using only <br> placeholders</td>
        <td>Using a ListView in <br> sheetAbove</td>
    <tr>
    <tr>
        <td>
            <img src="https://raw.githubusercontent.com/AdamJonsson/snapping_sheet/master/assets/useExample.gif" width="160">
        </td>
        <td>
            <img src="https://raw.githubusercontent.com/AdamJonsson/snapping_sheet/master/assets/layoutExample.gif" width="160">
        </td>
        <td>
            <img src="https://raw.githubusercontent.com/AdamJonsson/snapping_sheet/master/assets/topsheetExample.gif" width="160">
        </td>
    </tr>
</table>

You can run the examples by cloning the following [repository](https://github.com/AdamJonsson/snapping_sheet) and run the app from the example folder.

## Quick start

Begin by following the [install](https://pub.dev/packages/snapping_sheet#-installing-tab-) instruction.

You can add the snapping sheet to you app by adding the following code
```dart
    import 'package:flutter/material.dart';
    import 'package:snapping_sheet/snapping_sheet.dart';

    class SnapSheetExample extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
            body: SnappingSheet(
                    sheetBelow: SnappingSheetContent(
                        child: Container(
                            color: Colors.red,
                        ),
                        heightBehavior: SnappingSheetHeight.fit()),
                    ),
                    grabbing: Container(
                        color: Colors.blue,
                    ),
                ),
            );
        }
    }
```

## Snap positions

To change the snap positions for the sheet, change the `snapPositions` parameter 
witch takes in a list of `SnapPosition`.

```dart
    SnappingSheet(
        snapPositions: [
            SnapPosition(
                position: 25.0, 
                isFactor: false,
                snappingCurve: Curves.elasticOut, 
                snappingDuration: Duration(milliseconds: 750)
            ),
            SnapPosition(
                position: 0.5,
                isFactor: true,
                snappingCurve: Curves.ease, 
                snappingDuration: Duration(milliseconds: 500)
            ),
        ],
    )
```

## Sheet content
|SnappingSheetContent       |Description                            |
|---------------------------|---------------------------------------|
|child                      |The widget inside the sheet.|
|margin                     |The margin for the sheet, can be negative|
|draggable                  |If the sheet should listen for drag events.|
|heightBehavior             |How the sheet height should behave when the size is changing|


## Other options
|Name                       |Description                            |
|---------------------------|---------------------------------------|
|child                      |The widget behind the sheet.|
|sheetBelow                 |The widget that is the remaining space between the bottom to the bottom of the grabbing widget.|
|sheetAbove                 |The widget that is the remaining space between the top to the top of the grabbing widget|
|grabbing                   |The widget fixed between the sheetBelow and sheetAbove.|
|grabbingHeight             |The height of the grabbing widget.|
|snapPositions              |The different snap positions for the sheet|
|initSnapPosition           |The init snap position, do not need to exist in the snapPositions list|
|snappingSheetController    |Control the sheet and get current snap position|
|onMove                     |Callback when the sheet is moving.|
|onSnapBegin                |Callback when a snap begins, happens when the user stops dragging the sheet.|
|onSnapEnd                  |Callback when a snap is completed.|
|lockOverflowDrag           |Prevents the grabbing sheet to be dragged above the highest snapPosition or below the lowest snapPosition.|
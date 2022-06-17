# Componentization_Harmony

This Tutorial demostrates how to Build custom components.

![alt text](https://github.com/PatExplores/Componentization_Harmony/tree/main/entry/screenshot/screen.jpg "Demo Screen")

Row of cells with numbers and styles added to is implmented.

Parent component holds list of Cells, an Child represent each cell.

##### 1. Code snippet to show how to add Parent Componet to application

```javascript
private options: ParentOptions = {
    itemCount: 4,
    borderColor: Color.Red,
    cellHeight: 60,
    cellWidth: 60,
    borderWidth: 2,
    backGroundColor: Color.Yellow
  }

  build() {
    Column() {
      Parent({ options: this.options, callBack: (selText)=>this.ClickSel(selText) })
    }
    .width('100%')
    .height('100%')
  }
  ```
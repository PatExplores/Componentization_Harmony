import { Parent } from "../common/Parent"
import { ParentOptions } from "../common/Types"

@Entry
@Component
struct Index {
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

  ClickSel(selText : string) : void {
    console.log("Index selected Text =" + selText)
  }
}
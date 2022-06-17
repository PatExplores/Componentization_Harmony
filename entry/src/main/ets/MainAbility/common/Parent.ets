import {ParentOptions} from "./Types"
import {ParentModel} from "./ParentModel"
import {Child} from "./Child"

@Component
export struct Parent {
  private options : ParentOptions = {itemCount : 1} //Default initialization
  private parentModel : ParentModel = undefined
  private callBack : (string) => void = null

  aboutToAppear() {
    this.parentModel = new ParentModel(this.options)
  }

  build() {
    RowSplit() {
      ForEach(this.parentModel.items, (item, index) => {
        Child(
          {
            text: item,
            backGroundColor: this.parentModel.options.backGroundColor,
            width: this.parentModel.options.cellWidth,
            height: this.parentModel.options.cellHeight,
            callBack: (selText) => this.onClick(selText)
          })
      })
    }
    .height(this.parentModel.options.cellHeight)
    .backgroundColor(this.parentModel.options.borderColor)
    .padding(this.parentModel.options.borderWidth)
  }

  onClick(selText : string) {  //called only inside the component
    console.log("selected Button =" + selText)
    if (this.callBack) {
      this.callBack(selText)  //Re-post click event
    }
  }
}
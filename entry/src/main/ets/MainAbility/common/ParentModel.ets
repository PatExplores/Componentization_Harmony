import {ParentOptions} from "./Types"

export class ParentModel {
  //default Initialization
  public options : ParentOptions = {
    itemCount : 1,
    borderColor : Color.Grey,
    borderWidth : 2,
    backGroundColor : Color.White
  }
  public items : string[] = []

  //Override with User attributes
  constructor(options : ParentOptions) {
    if (options) {
      if (options.itemCount) this.options.itemCount = options.itemCount
      if (options.borderColor) this.options.borderColor = options.borderColor
      if (options.cellHeight) this.options.cellHeight = options.cellHeight
      if (options.cellWidth) this.options.cellWidth = options.cellWidth
      if (options.borderWidth) this.options.borderWidth = options.borderWidth
      if (options.backGroundColor) this.options.backGroundColor = options.backGroundColor
    }
    for (let i=0; i < options.itemCount; i++) {
      this.items.push("" + (i + 1))
    }
  }
}
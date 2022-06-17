@Component
export struct Child {
  @State text : string = ""
  @State backGroundColor : Color = Color.White
  @State width : number = 0
  @State height : number = 0
  private callBack : (string) => void = null

  build() {
    Button() {
      Text(this.text)
      .backgroundColor(this.backGroundColor)
      .width(this.width)
      .height(this.height)
      .textAlign(TextAlign.Center)
    }
    .onClick((event) => {
        this.callBack(this.text)
    })
  }
}
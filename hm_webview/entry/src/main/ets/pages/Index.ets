// import web_webview from '@ohos.web.webview';
import router from '@ohos.router';
import { webview } from '@kit.ArkWeb';
import common from '@ohos.app.ability.common';
import Url from '@ohos.url'


@Entry
@Component
struct Index {
  @State message: string = 'abcd';
  private webviewController: webview.WebviewController = new webview.WebviewController()

  build() {
    RelativeContainer() {
      Web({src:"https://global.jd.com/", controller:this.webviewController}).id("webview").javaScriptAccess(true).domStorageAccess(true)
    }
    .height('100%')
    .width('100%')
  }
}
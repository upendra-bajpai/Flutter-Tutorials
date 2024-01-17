package com.example.melooha

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.webkit.WebView
import android.widget.TextView
import io.flutter.plugin.platform.PlatformView

class NativeView(context: Context, id: Int, creationParams: Map<String?, Any?>?): PlatformView{
    private var webview: WebView
    lateinit var params: HashMap<String?, Any?>
    private var view : WebViewActivity? = WebViewActivity(context,creationParams)
    override fun getView(): View? {
        return view
    }

    init {

        webview=WebView(context)
        if (creationParams != null) {
            params= creationParams as HashMap<String?, Any?>
        }else{
            params=HashMap<String?,Any?>()
        }
    }

    fun setup():View{
        var url:String= params["url"].toString()
        webview.loadUrl(url)
        return webview
    }
    override fun dispose() {
    }
}
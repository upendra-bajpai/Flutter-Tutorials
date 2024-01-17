package com.example.melooha

import android.content.Context
import android.graphics.Bitmap
import android.view.LayoutInflater
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.LinearLayout
import android.widget.ProgressBar


class WebViewActivity(context: Context,creationParams: Map<String?, Any?>?):LinearLayout(context) {
    lateinit var params: HashMap<String?, Any?>
    lateinit var webView:WebView
    lateinit var progressBar: ProgressBar
    init {
        val inflater = context.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
        val view = inflater.inflate(R.layout.web_view,this)
        webView=view.findViewById<WebView>(R.id.webView)
        progressBar=view.findViewById<ProgressBar>(R.id.progressBar)
        if (creationParams != null) {
            params= creationParams as HashMap<String?, Any?>
        }else{
            params=HashMap<String?,Any?>()
        }
        // Get the WebViewController
 /*       val controllerFuture = webView.platformViewCreatedCompleter.future
        controllerFuture.then((value) => webViewController = value)*/
        setup()
    }

    fun setup() {
        webView.webViewClient = object : WebViewClient() {
            override fun shouldOverrideUrlLoading(view: WebView, url: String): Boolean {
                view.loadUrl(url)
                return true
            }

            override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                super.onPageStarted(view, url, favicon)
                progressBar.visibility= VISIBLE
            }

            override fun onPageFinished(view: WebView?, url: String?) {
                super.onPageFinished(view, url)
                progressBar.visibility= GONE
            }
        }

        webView.settings.javaScriptEnabled = true
        webView.settings.builtInZoomControls = true
        webView.settings.displayZoomControls = false
        var url:String= params["url"].toString()
        webView.loadUrl(url)
    }


}
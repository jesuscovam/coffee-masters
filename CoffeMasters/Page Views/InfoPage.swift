//
//  InfoPage.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 19/08/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context _: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ webView: WKWebView, context _: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")
        if let url = url {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

#Preview {
    InfoPage()
}

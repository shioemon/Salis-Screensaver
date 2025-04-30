import Cocoa

// MARK: - URLType
enum URLType {
    case help
    case twitter
    case discord
}

// MARK: Functions
extension URLType {
    
    var urlString: String {
        switch self {
        case .help: return "https://github.com/op5no29/Salis-Screensaver"
        case .twitter: return "https://x.com/c_y_l_i"
        case .discord: return "https://discordapp.com/users/323041740963446785"
        }
    }
    
    func open() {
        guard let url = URL(string: urlString) else { return }
        
        // URLが開けるかチェック
        if NSWorkspace.shared.open(url) == false {
            // 開けなかった場合、デフォルトブラウザで開く試み
            let browserURL = URL(string: "https://www.google.com/search?q=\(urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")")
            if let browserURL = browserURL {
                NSWorkspace.shared.open(browserURL)
            }
        }
    }
}

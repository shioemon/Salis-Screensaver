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
            case .help: return "https://x.com/c_y_l_i"
            case .twitter: return "https://x.com/c_y_l_i"
            case .discord: return "discordapp.com/users/323041740963446785"
        }
    }
    
    func open() {
        guard let url = URL(string: urlString) else { return }
        NSWorkspace.shared.open(url)
    }
}

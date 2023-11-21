
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var label: UILabel!
    @IBOutlet weak private var slider: UISlider!
    
    
    private let delegate = UIApplication.shared.delegate as! AppDelegate

    
    //スライダーの値をラベルに表示
    @IBAction private func changeSlider(_ sender: Any) {
        label.text = "\(slider.value)"
        delegate.shareData = slider.value
    }
    
    //viewWillAppearを使ってdelegateの値を取得する
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        slider.value = delegate.shareData
        label.text = "\(slider.value)"
    }
}


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var label: UILabel!
    @IBOutlet weak private var slider: UISlider!
    
    
    let delegate = UIApplication.shared.delegate as! AppDelegate
  
    
    //スライダーの値をラベルに表示
    @IBAction func changeSlider(_ sender: Any) {
        self.label.text = "\(self.slider.value)"
        delegate.shareData = self.slider.value
    }
    
    //viewWillAppearを使ってdelegateの値を取得する
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.slider.value = delegate.shareData
        self.label.text = "\(self.slider.value)"
    }
}

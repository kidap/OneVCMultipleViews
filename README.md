# OneVCMultipleViews

Demo of how a view controller can interact with different views using the same interface using protocol

```
class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let texts = ["Hello", "World"]


        if var view = view1 as? TextsContaining {
            view.texts = texts
        }

        if var view = view2 as? TextsContaining {
            view.texts = texts
        }
    }
}

```

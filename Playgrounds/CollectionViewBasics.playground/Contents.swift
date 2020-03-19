import UIKit //imports all of the UI elements we need
import PlaygroundSupport //allows us to add UI elements to PG

/* Create our first UIViewController, CollectionViewExampleController with subclass UIViewController and protocol UICollectionViewDataSource.
 UICollectionViewDataSource allows us to tell our variable, collectionView, how many items we have in each section and create a cell for each item  we want to display
 */

class CollectionViewExampleController:UIViewController, UICollectionViewDataSource {
   
    var collectionView:UICollectionView?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1 //tells UICollectionView we want to return 1 item
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"BoxCell",for:indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    /* Override method viewDidLoad so that we can use it for the methods we  need */
    override func viewDidLoad() {
        super.viewDidLoad()
        createCollectionView() //call newly created method from below
    }
    
    /* Create collection view so that we can use it */
    func createCollectionView() {
    self.collectionView = UICollectionView(frame:CGRect(x:0 , y:0,
    width:self.view.frame.width, height:self.view.frame.height), collectionViewLayout:UICollectionViewFlowLayout())
        self.collectionView?.dataSource = self
        self.collectionView?.backgroundColor = .white
        self.collectionView?.register(UICollectionViewCell.self,
    forCellWithReuseIdentifier:"BoxCell")
        self.view.addSubview(self.collectionView!)
    }

}


// Present the view controller in the Live View window
PlaygroundPage.current.liveView = CollectionViewExampleController()

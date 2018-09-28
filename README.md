# unwindSegueExample

Unwind segues let you dismiss view controllers that have been presented.  　
Unwind segueは、表示されていたViewControllerを非表示にする。　　

UIKit searches the view controller hierarchy for an object capable of handling the unwind segue.  
UIKitは、Unwind segueをハンドリングできるオブジェクトのために、ViewController階層を検索する。　　

ということで、どのように検索しているのかをサンプルを作って確認してみた。　　

1.通常のUIVIewControllerにsegueをつけて遷移していった場合、segueで繋がっている過去に表示したUIViewControllerに向けたunwind Segueだと戻れる　　
2.TabBarControllerについているそれぞれのUIVIewControllerにも戻れる→TabBarControllerが生成されたタイミングでUIVIewControllerが生成されているため　　
3.TabBarControllerにNavigationControllerをつけた場合、　　
 - TabBのnavigationControllerにpushされたUIViewControllerから、TabAのnavigationControllerにpushされたUIViewControllerに戻るには条件がある
 1) TabAのNavigation Stackに戻りたいUIViewControllerが積まれていること（必ずしもsegueで遷移している必要はない）　　
4.NavigationControllerへのStackを動的に詰んだ場合、unwind segueで戻ることのできるUIViewControllerも動的に変化する　　
　　- NavigationStackに積まれているUIViewControllerに対して戻ることができる。　　

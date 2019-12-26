<?php

use yii\helpers\Url;

?>
<!--main content start-->
<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <article class="post">
                    <div class="post-thumb">
                        <a href="blog.html"><img src="<?= $article->getImage(); ?>" alt=""></a>
                    </div>
                    <div class="post-content">
                        <header class="entry-header text-center text-uppercase">
                            <h6><a href="<?= Url::toRoute(['site/category', 'id' => $article->category->id]);?>"><?= $article->category->title; ?></a></h6>

                            <h1 class="entry-title"><a href="blog.html"><?= $article->title; ?></a></h1>

                        </header>
                        <div class="entry-content">
                            <?= $article->content; ?>
                        </div>
                        <div class="decoration">
                            <?php foreach($article_tag as $tag):?>
                                <a href="#" class="btn btn-default"><?= $tag->getTag()->one()->title; ?></a>
                            <?php endforeach; ?>
                        </div>

                        <div class="social-share">
							<span
                                class="social-share-title pull-left text-capitalize">By <?= $article->author->name?> On <?= $article->getDate();?></span>
                            <ul class="text-center pull-right">
                          <span
                                class="social-share-title pull-left text-capitalize">By <?= $article->author->name?> On <?= $article->getDate();?></span>
                            <ul class="text-center pull-right"><a href="http://blog.pluso.ru/novosti/3-veshhi-kotorye-neobxodimo-znat-o-dannyx-iz-socialnoj-seti.html" title="Facebook" class="pluso-facebook"></a>
                                <li><a class="s-facebook" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>">                                  
                                    <i class="fa fa-facebook"></i></a></li>
								<li><a class="s-twitter" href="https://twitter.com/intent/tweet?text=<?php echo (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>">
                                    <i class="fa fa-twitter"></i></a></li>	
								<li><a class="s-instagram" href="https://instagram.com">
                                    <i class="fa fa-instagram"></i></a></li>		
								<li><a class="s-tumblr" href="https://tumblr.com">
                                    <i class="fa fa-tumblr"></i></a></li>	
								<li><a class="s-pinterest" href="http://pinterest.com/pin/create/button/?url=<?php echo (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>">
                                    <i class="fa fa-pinterest"></i></a></li>
												
							</ul>
                        </div>
                    </div>
                </article>

                <?= $this->render('/partials/comment',[
                    'article' => $article,
                    'comments' => $comments,
                    'commentForm' => $commentForm
                ])?>
            </div>
            <?= $this->render('/partials/sidebar', [
                'popular' => $popular,
                'recent' => $recent,
                'categories' => $categories]);?>
        </div>
    </div>
</div>
<!-- end main content-->
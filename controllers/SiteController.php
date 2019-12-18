<?php

namespace app\controllers;

use app\models\Article;
use app\models\ArticleTag;
use app\models\Category;
use app\models\CommentForm;
use app\models\Tag;
use Yii;
use yii\data\Pagination;
use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;

class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        //build a DB query to get all articles
        $query = Article::find();
        //get the total number of articles
        $countQuery = $query->count();
        //create a pagination object with the total count
        $pagination = new Pagination(['totalCount' => $countQuery, 'pageSize' => 3]);
        //limit the query using the pagination and retrieve the article
        $articles = $query->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        //popular posts
        $popular = Article::find()->orderBy('viewed desc')->limit(3)->all();

        //recent posts
        $recent = Article::find()->orderBy('date asc')->limit(4)->all();

        //categories
        $categories = Category::find()->all();

        return $this->render('index', [
            'articles' => $articles,
            'pagination' => $pagination,
            'popular' => $popular,
            'recent' => $recent,
            'categories' => $categories
        ]);
    }

    /**
     * Displays contact page.
     *
     * @return Response|string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionView($id)
    {
        $article = Article::findOne($id);

        $article_tag = ArticleTag::find()->select(['tag_id'])->from(['article_tag'])->where(['article_id' => $id])->all();

        //popular posts
        $popular = Article::find()->orderBy('viewed desc')->limit(3)->all();

        //recent posts
        $recent = Article::find()->orderBy('date asc')->limit(4)->all();

        //categories
        $categories = Category::find()->all();

        $comments = $article->getArticleComments();
        $commentForm = new CommentForm();

        $article->viewedCounter();

        return $this->render('single', [
            'article' => $article,
            'article_tag' => $article_tag,
            'popular' => $popular,
            'recent' => $recent,
            'categories' => $categories,
            'comments' => $comments,
            'commentForm' => $commentForm
        ]);
    }

    public function actionCategory($id)
    {
        //build a DB query to get all articles
        $query = Article::find()->where(['category_id'=>$id]);
        //get the total number of articles
        $countQuery = $query->count();
        //create a pagination object with the total count
        $pagination = new Pagination(['totalCount' => $countQuery, 'pageSize' => 6]);
        //limit the query using the pagination and retrieve the article
        $articles = $query->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        //popular posts
        $popular = Article::find()->orderBy('viewed desc')->limit(3)->all();

        //recent posts
        $recent = Article::find()->orderBy('date asc')->limit(4)->all();

        //categories
        $categories = Category::find()->all();

        $data['articles'] = $articles;
        $data['pagination'] = $pagination;

        return $this->render('index', [
            'articles' => $data['articles'],
            'pagination' => $data['pagination'],
            'popular' => $popular,
            'recent' => $recent,
            'categories' => $categories
        ]);
    }

    public function actionComment($id)
    {
        $model = new CommentForm();

        if(Yii::$app->request->isPost)
        {
            $model->load(Yii::$app->request->post());
            if($model->saveComment($id))
            {
                Yii::$app->getSession()->setFlash('comment', 'Your comment will be added soon');
                return $this->redirect(['site/view','id'=>$id]);
            }
        }
    }
}

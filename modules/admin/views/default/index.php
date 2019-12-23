<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
use yii\widgets\DetailView;

/*@var $this yii\web\View*/
/* @var $model app\models\User */

/* @var $form  yii\widgets\ActiveForm */

$this->title = 'My Home Page';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="user-profile">
    <h1><?= Html::encode($this->title)?></h1>

    <h3>Photo

        <div class="user-photo">
            <?php if ($model->image):?>
                <img src="/web/<?= $model->image?>" alt="no-image">
            <?php endif;?>

            <?php $form = ActiveForm::begin(['options'=>['enctype'=>'multipart/from-data']]); ?>

            <div class="form-group">
            <button>Load</button>
            </div>
            <?php ActiveForm::end(); ?>
        </div>
    </h3>

    <h3>User name</h3>
    <?php if(!empty($user)):?>
        <?php foreach($user as $users):?>
    <b><?=$user->name?></b><?= $user->text?>
    <?php endforeach; ?>   <?php endif;?>

    <h3>Email </h3>
    <b><?=$model->user->email?></b><?= $model->user->text?>

</div>
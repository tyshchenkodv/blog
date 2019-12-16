<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;

class ImageUpload extends Model{

    public $image;

    //Загрузка картинки для статьи на сервер
    public function uploadFile(UploadedFile $file)
    {
        $this->image = $file;

        //Шифруем название картинки (чтобы не повторялись названия)
        $filename = strtolower(md5(uniqid($file->baseName)) . '.' . $file->extension);

        $file->saveAs(Yii::getAlias('@web') . 'uploads/' . $filename);

        return $filename;
    }

}

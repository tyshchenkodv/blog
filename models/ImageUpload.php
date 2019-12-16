<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;

class ImageUpload extends Model{

    public $image;

    //Загрузка картинки для статьи на сервер
    public function uploadFile(UploadedFile $file, $currentImage)
    {
        $this->image = $file;

        //Валидация на наличие картинки на сервере
        if(file_exists(Yii::getAlias('@web') . 'uploads/' . $currentImage))
        {
            unlink(Yii::getAlias('@web') . 'uploads/' . $currentImage);
        }

        //Шифруем название картинки (чтобы не повторялись названия)
        $filename = strtolower(md5(uniqid($file->baseName)) . '.' . $file->extension);

        $file->saveAs(Yii::getAlias('@web') . 'uploads/' . $filename);

        return $filename;
    }

}

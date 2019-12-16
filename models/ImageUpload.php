<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\web\UploadedFile;

class ImageUpload extends Model{

    public $image;

    public function rules()
    {
        //Валидация файла на расширение и обязательное заполнение
        return [
          [['image'], 'required'],
          [['image'], 'file', 'extensions' => 'jpg,png']
        ];
    }

    //Загрузка картинки для статьи на сервер
    public function uploadFile(UploadedFile $file, $currentImage)
    {
        $this->image = $file;

        if($this->validate())
        {
            //Удаление текущей картинки, если она есть
            $this->deleteCurrentImage($currentImage);
            return $this->saveImage();
        }

    }

    private function getFolder()
    {
        return Yii::getAlias('@web') . 'uploads/';
    }

    private function generateFilename()
    {
        return strtolower(md5(uniqid($this->image->baseName)) . '.' . $this->image->extension);
    }

    public function deleteCurrentImage($currentImage)
    {
        if($this->fileExists($currentImage))
        {
            unlink($this->getFolder() . $currentImage);
        }
    }

    //Проверка загружаемого файла
    public function fileExists($currentImage)
    {
        if(!empty($currentImage) && $currentImage != null)
        {
            return file_exists($this->getFolder() . $currentImage);
        }
    }

    //Загрузка файла
    public function saveImage()
    {
        //Генерируем название картинки (чтобы не повторялись названия)
        $filename = $this->generateFilename();
        $this->image->saveAs($this->getFolder() . $filename);
        return $filename;
    }
}

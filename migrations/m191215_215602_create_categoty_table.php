<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%categoty}}`.
 */
class m191215_215602_create_categoty_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('category', [
            'id' => $this->primaryKey(),
            'title'=>$this->string()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%categoty}}');
    }
}

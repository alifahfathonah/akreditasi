<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "content".
 *
 * @property int $c_id
 * @property string $c_name
 * @property int $c_pkey
 */
class Content extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'content';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['c_id'], 'required'],
            [['c_id', 'c_pkey'], 'integer'],
            [['c_name'], 'string', 'max' => 255],
            [['c_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'c_id' => 'C ID',
            'c_name' => 'C Name',
            'c_pkey' => 'C Pkey',
        ];
    }
}

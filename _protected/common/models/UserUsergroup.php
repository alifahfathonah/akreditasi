<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "user_usergroup".
 *
 * @property string $ug_id
 * @property int $id
 */
class UserUsergroup extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_usergroup';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ug_id', 'id'], 'required'],
            [['id'], 'integer'],
            [['ug_id'], 'string', 'max' => 2],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ug_id' => 'Ug ID',
            'id' => 'ID',
        ];
    }
}

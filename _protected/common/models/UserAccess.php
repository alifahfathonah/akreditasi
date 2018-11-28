<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "user_access".
 *
 * @property string $ug_id
 * @property int $c_id
 * @property string $firstload
 * @property string $access
 */
class UserAccess extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_access';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ug_id', 'c_id', 'firstload', 'access'], 'required'],
            [['c_id'], 'integer'],
            [['firstload'], 'string'],
            [['ug_id'], 'string', 'max' => 2],
            [['access'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ug_id' => 'Ug ID',
            'c_id' => 'C ID',
            'firstload' => 'Firstload',
            'access' => 'Access',
        ];
    }
}

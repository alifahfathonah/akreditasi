<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "session".
 *
 * @property string $k_id
 * @property string $k_judul
 * @property string $k_nama
 * @property string $k_email
 * @property string $k_pesan
 * @property string $k_jawab
 * @property int $k_date
 * @property string $k_status_jawab
 */
class Session extends \yii\db\ActiveRecord
{

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'session';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id','expire','data','user_id'],'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'expire' => 'Expire',
            'data' => 'Data',
            'user_id' => 'Username',
        ];
    }
}

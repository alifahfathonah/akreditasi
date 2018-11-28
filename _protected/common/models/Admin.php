<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "z_admin".
 *
 * @property string $ua_id
 * @property string $ua_nama
 * @property string $ua_alamat
 * @property string $ua_telp
 * @property string $ua_jk
 * @property string $ua_tgl_lahir
 * @property string $ua_tempat_lahir
 */
class Admin extends \yii\db\ActiveRecord
{

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'ua_id', // required
          'group' => 'admin', // required, unique
          'value' => 'A'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 4 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'z_admin';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ua_nama', 'ua_alamat', 'ua_telp', 'ua_jk', 'ua_tgl_lahir', 'ua_tempat_lahir','ua_email'], 'required'],
            [['ua_alamat', 'ua_jk'], 'string'],
            [['ua_tgl_lahir'], 'safe'],
            [['ua_id'], 'string', 'max' => 5],
            [['ua_nama'], 'string', 'max' => 50],
            [['ua_telp'], 'string', 'max' => 12],
            [['ua_tempat_lahir'], 'string', 'max' => 30],
            [['ua_id'], 'unique'],
            [['ua_email'], 'email'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ua_id' => 'ID',
            'ua_nama' => 'Nama',
            'ua_email' => 'Email',
            'ua_alamat' => 'Alamat',
            'ua_telp' => 'Telp',
            'ua_jk' => 'Jenis Kelamin',
            'ua_tgl_lahir' => 'Tgl Lahir',
            'ua_tempat_lahir' => 'Tempat Lahir',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

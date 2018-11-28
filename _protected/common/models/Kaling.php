<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "z_kaling".
 *
 * @property string $uk_id
 * @property string $uk_nama
 * @property string $uk_alamat
 * @property string $uk_telp
 * @property string $uk_jk
 * @property string $uk_tgl_lahir
 * @property string $uk_tempat_lahir
 * @property string $created_by
 * @property string $created_at
 * @property string $updated_by
 * @property string $updated_at
 */
class Kaling extends \yii\db\ActiveRecord
{

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'uk_id', // required
          'group' => 'kaling', // required, unique
          'value' => 'K'.'?', // format auto number. '?' will be replaced with generated number
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
        return 'z_kaling';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ins_id','uk_nama', 'uk_alamat', 'uk_telp', 'uk_jk', 'uk_tgl_lahir', 'uk_tempat_lahir','uk_email'], 'required'],
            [['uk_alamat', 'uk_jk'], 'string'],
            [['uk_tgl_lahir'], 'safe'],
            [['uk_id'], 'string', 'max' => 5],
            [['uk_nama'], 'string', 'max' => 50],
            [['uk_email'], 'email'],
            [['uk_telp'], 'string', 'max' => 12],
            [['uk_tempat_lahir'], 'string', 'max' => 30],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'uk_id' => 'ID',
            'uk_nama' => 'Nama',
            'ins_id' => 'Instansi',
            'uk_email' => 'Email',
            'uk_alamat' => 'Alamat',
            'uk_telp' => 'Telp.',
            'uk_jk' => 'Jenis Kelamin',
            'uk_tgl_lahir' => 'Tgl Lahir',
            'uk_tempat_lahir' => 'Tempat Lahir',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

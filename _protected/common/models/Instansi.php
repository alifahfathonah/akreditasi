<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "z_instansi".
 *
 * @property string $ins_id
 * @property string $ins_nama
 * @property string $ins_alamat
 * @property string $ins_telp
 * @property string $ins_email
 */
class Instansi extends \yii\db\ActiveRecord
{
    //behavior
    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'ins_id', // required
          'group' => 'instansi', // required, unique
          'value' => 'I'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
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
        return 'z_instansi';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ins_nama', 'ins_alamat', 'ins_telp', 'ins_email'], 'required'],
            [['ins_alamat'], 'string'],
            [['ins_id'], 'string', 'max' => 4],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['ins_nama'], 'string', 'max' => 255],
            [['ins_telp'], 'string', 'max' => 12],
            [['ins_email'], 'email'],
            [['ins_status'], 'default','value'=>'y'],
            [['ins_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ins_id' => 'ID',
            'ins_nama' => 'Nama',
            'ins_alamat' => 'Alamat',
            'ins_telp' => 'Telp',
            'ins_email' => 'Email',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Update By',
            'updated_at' => 'Update Date',
            'ins_status' => 'Status',
        ];
    }
}

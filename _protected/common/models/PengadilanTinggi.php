<?php

namespace common\models;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "pengadilan_tinggi".
 *
 * @property string $pt_id
 * @property string $pt_nama
 * @property string $pt_alamat
 * @property string $pt_pimpinan
 * @property string $pt_website
 * @property string $pt_email
 * @property string $pt_telp
 * @property string $pt_fax
 * @property int $pt_pegawai
 * @property int $pt_honorer
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class PengadilanTinggi extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public $image;

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'pt_id', // required
          'group' => 'pengadilantinggi', // required, unique
          'value' => 'PT'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    public static function tableName()
    {
        return 'tb_pengadilan_tinggi';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            //[['pt_id'], 'required'],
            [['pt_pegawai', 'pt_honorer', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['pt_id'], 'string', 'max' => 5],
            [['pt_nama', 'pt_alamat', 'pt_pimpinan', 'pt_website', 'pt_email', 'pt_telp', 'pt_fax', 'pt_logo'], 'string', 'max' => 255],
            [['pt_id'], 'unique'],
            [['image'], 'file', 'extensions'=>'jpg, jpeg, png, jpeg'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'pt_id' => 'ID',
            'pt_nama' => 'Nama Pengadilan Tinggi',
            'pt_alamat' => 'Alamat',
            'pt_pimpinan' => 'Pimpinan',
            'pt_website' => 'Website',
            'pt_email' => 'Email',
            'pt_telp' => 'Telp',
            'pt_fax' => 'Fax',
            'pt_pegawai' => 'Jumlah Pegawai',
            'pt_honorer' => 'Jumlah Pegawai Honorer',
            'pt_logo' => 'Logo',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

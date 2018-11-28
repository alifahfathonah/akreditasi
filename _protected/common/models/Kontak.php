<?php

namespace common\models;

use Yii;
use yii\captcha\Captcha;

/**
 * This is the model class for table "z_kontak".
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
class Kontak extends \yii\db\ActiveRecord
{

    public $status;
	public $verifyCode;
  const SCENARIO_CREATE = 'create';

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'k_id', // required
          'group' => 'kontak', // required, unique
          'value' => 'K'.'?'.'/'.date('Y') , // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
		\yii\behaviors\TimestampBehavior::className(),
      ];
    }

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'z_kontak';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['k_judul', 'k_nama', 'k_email', 'k_pesan'], 'required'],
            [['k_pesan', 'k_jawab', 'k_status_jawab'], 'string'],
            [['created_at','updated_at'], 'integer'],
            [['k_id'], 'string', 'max' => 9],
            [['k_judul'], 'string', 'max' => 100],
            [['k_nama'], 'string', 'max' => 50],
            [['status'], 'string', 'max' => 1],
      			[['verifyCode'],'captcha','on' => self::SCENARIO_CREATE],
      			[['k_email'],'email'],
      			[['k_status_jawab'],'default','value'=>'n'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'k_id' => 'ID',
            'k_judul' => 'Judul',
            'k_nama' => 'Nama',
            'k_email' => 'Email',
            'k_pesan' => 'Pesan',
            'k_jawab' => 'Jawab',
            'created_at' => 'Tanggal',
            'k_status_jawab' => 'Status Jawab',
        ];
    }
}

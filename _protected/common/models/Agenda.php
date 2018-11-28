<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "z_agenda".
 *
 * @property string $a_id
 * @property string $a_judul
 * @property string $a_isi
 * @property string $a_location
 * @property int $a_tanggal
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 * @property string $a_status
 */
class Agenda extends \yii\db\ActiveRecord
{

    //behavior
    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'a_id', // required
          'group' => 'agenda', // required, unique
          'value' => 'A'.'?'.'/'.date('Y') , // format auto number. '?' will be replaced with generated number
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
        return 'z_agenda';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['a_judul', 'a_isi', 'a_location'], 'required'],
            [['a_isi'], 'string'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['a_id'], 'string', 'max' => 9],
            [['a_judul'], 'string', 'max' => 100],
            [['a_location'], 'string', 'max' => 255],
            [['a_tanggal','a_tanggal_akhir'],'default'],
            [['a_status'],'default','value'=>'belum_terlaksana'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'a_id' => 'ID',
            'a_judul' => 'Judul',
            'a_isi' => 'Deskripsi',
            'a_location' => 'Lokasi',
            'a_tanggal' => 'Tgl. Mulai',
            'a_tanggal_akhir' => 'Tgl. Selesai',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
            'a_status' => 'Status',
        ];
    }
}

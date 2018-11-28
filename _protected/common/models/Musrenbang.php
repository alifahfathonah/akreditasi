<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "z_musrenbang".
 *
 * @property string $m_id
 * @property string $m_kegiatan
 * @property string $m_location
 * @property string $m_sifat
 * @property string $m_volume
 * @property int $m_biaya
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 * @property string $m_status
 */
class Musrenbang extends \yii\db\ActiveRecord
{

    //behavior
    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'm_id', // required
          'group' => 'musrenbang', // required, unique
          'value' => 'M'.'?'.'/'.date('Y') , // format auto number. '?' will be replaced with generated number
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
        return 'z_musrenbang';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['m_kegiatan', 'm_location', 'm_sifat', 'm_biaya','m_tahun','mk_id'], 'required'],
            [['m_sifat','m_tahun','m_prioritas'], 'string'],
			['m_prioritas','default','value'=>NULL],
            [['ins_id','mk_id'], 'string'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['m_id'], 'string', 'max' => 9],
            [['m_kegiatan'], 'string', 'max' => 255],
            [['m_location'], 'string', 'max' => 100],
            [['m_volume'], 'string', 'max' => 50],
			['m_volume','default','value'=>NULL],
            [['m_status'], 'default', 'value' => 'y'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'm_id' => 'ID',
			'mk_id' => 'Kelompok',
            'ins_id' => 'Instansi',
            'm_kegiatan' => 'Kegiatan',
            'm_location' => 'Lokasi',
            'm_sifat' => 'Sifat',
            'm_volume' => 'Volume',
            'm_biaya' => 'Biaya',
            'm_tahun' => 'Tahun',
			'm_prioritas' => 'Prioritas',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
            'm_status' => 'Status',
        ];
    }
}

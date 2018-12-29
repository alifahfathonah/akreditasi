<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_assesment".
 *
 * @property string $assesment_id
 * @property string $assesment_surat
 * @property string $assesment_tanggal_mulai
 * @property string $assesment_tanggal_selesai
 * @property string $assesment_ketua
 * @property string $assesment_anggota
 * @property string $kelas_id
 * @property string $pn_id
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Assesment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'assesment_id', // required
          'group' => 'assesment', // required, unique
          'value' => 'AS'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    public static function tableName()
    {
        return 'tb_assesment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['assesment_surat', 'assesment_tanggal_mulai', 'assesment_ketua', 'assesment_anggota', 'kelas_id', 'pn_id'], 'required'],
            [['assesment_tanggal_mulai', 'assesment_tanggal_selesai'], 'safe'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['assesment_id', 'kelas_id', 'pn_id'], 'string', 'max' => 5],
            [['assesment_surat', 'assesment_ketua'], 'string', 'max' => 55],
            [['assesment_anggota'], 'string', 'max' => 255],
            [['assesment_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'assesment_id' => 'ID',
            'assesment_surat' => 'No Surat',
            'assesment_tanggal_mulai' => 'Tanggal Mulai',
            'assesment_tanggal_selesai' => 'Tanggal Selesai',
            'assesment_ketua' => 'Ketua',
            'assesment_anggota' => 'Anggota',
            'kelas_id' => 'Kelas',
            'pn_id' => 'Pengadilan Negeri',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

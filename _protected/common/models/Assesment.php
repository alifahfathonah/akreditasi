<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_assesment".
 *
 * @property int $assesment_id
 * @property string $assesment_surat
 * @property string $assesment_surat_tanggal
 * @property int $pn_id
 * @property string $assesment_jenis
 * @property string $assesment_tanggal_mulai
 * @property string $assesment_tanggal_selesai
 * @property int $assesment_ketua
 * @property int $assesment_anggota
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
            [['assesment_surat', 'assesment_surat_tanggal', 'pn_id', 'assesment_jenis', 'assesment_tanggal_mulai', 'assesment_tanggal_selesai','pn_kelas_type'], 'required'],
            [['assesment_surat_tanggal', 'assesment_tanggal_mulai', 'assesment_tanggal_selesai'], 'safe'],
            [['pn_id', 'assesment_ketua', 'assesment_anggota', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['assesment_surat', 'assesment_jenis'], 'string', 'max' => 55],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'assesment_id' => 'Assesment ID',
            'assesment_surat' => 'No Surat',
            'assesment_surat_tanggal' => 'Tanggal Surat',
            'pn_id' => 'Pengadilan Negeri',
            'pn_kelas_type' => 'Kelas',
            'assesment_jenis' => 'Jenis',
            'assesment_tanggal_mulai' => 'Tanggal Mulai',
            'assesment_tanggal_selesai' => 'Tanggal Selesai',
            'assesment_ketua' => 'Ketua',
            'assesment_anggota' => 'Anggota',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

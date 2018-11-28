<?php

namespace common\models;

use Yii;

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
    public static function tableName()
    {
        return 'pengadilan_tinggi';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pt_id'], 'required'],
            [['pt_pegawai', 'pt_honorer', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['pt_id'], 'string', 'max' => 5],
            [['pt_nama', 'pt_alamat', 'pt_pimpinan', 'pt_website', 'pt_email', 'pt_telp', 'pt_fax'], 'string', 'max' => 255],
            [['pt_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'pt_id' => 'Pt ID',
            'pt_nama' => 'Pt Nama',
            'pt_alamat' => 'Pt Alamat',
            'pt_pimpinan' => 'Pt Pimpinan',
            'pt_website' => 'Pt Website',
            'pt_email' => 'Pt Email',
            'pt_telp' => 'Pt Telp',
            'pt_fax' => 'Pt Fax',
            'pt_pegawai' => 'Pt Pegawai',
            'pt_honorer' => 'Pt Honorer',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

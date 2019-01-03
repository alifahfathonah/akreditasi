<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_audit".
 *
 * @property int $audit_id
 * @property int $assesment_id
 * @property int $tujuan_id
 * @property int $kriteria_id
 * @property string $pertanyaan
 * @property string $nilai_a
 * @property string $nilai_b
 * @property string $nilai_c
 * @property int $bobot
 * @property string $audit_nilai
 * @property int $audit_nilai_angka
 * @property string $audit_temuan
 * @property string $audit_keterangan
 * @property string $audit_penyelesaian
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Audit extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tb_audit';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['assesment_id', 'tujuan_id', 'kriteria_id', 'bobot', 'audit_nilai_angka', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['pertanyaan', 'nilai_a', 'nilai_b', 'nilai_c', 'audit_keterangan'], 'string'],
            [['audit_nilai'], 'string', 'max' => 5],
            [['audit_temuan', 'audit_penyelesaian'], 'string', 'max' => 255],
            [['audit_keterangan','audit_temuan','audit_nilai','audit_nilai_angka','audit_penyelesaian'], 'default', 'value'=>null]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'audit_id' => 'Audit ID',
            'assesment_id' => 'Assesment ID',
            'tujuan_id' => 'Tujuan ID',
            'kriteria_id' => 'Kriteria ID',
            'pertanyaan' => 'Pertanyaan',
            'nilai_a' => 'Nilai A',
            'nilai_b' => 'Nilai B',
            'nilai_c' => 'Nilai C',
            'bobot' => 'Bobot',
            'audit_nilai' => 'Audit Nilai',
            'audit_nilai_angka' => 'Audit Nilai Angka',
            'audit_temuan' => 'Audit Temuan',
            'audit_keterangan' => 'Audit Keterangan',
            'audit_penyelesaian' => 'Audit Penyelesaian',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_audit".
 *
 * @property int $audit_id
 * @property string $assesment_id
 * @property string $pertanyaan_id
 * @property string $audit_nilai
 * @property string $audit_temuan
 * @property string $audit_keterangan
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

    public $pertanyaan_nama;
    public function rules()
    {
        return [
            [['audit_keterangan'], 'string'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['assesment_id', 'pertanyaan_id', 'audit_nilai'], 'string', 'max' => 5],
            [['audit_temuan'], 'string', 'max' => 255],
            [['pertanyaan_nama','audit_id'], 'safe'],
            [['audit_keterangan','audit_temuan','audit_nilai'], 'default', 'value'=>null]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'audit_id' => 'ID',
            'assesment_id' => 'Assesment ID',
            'pertanyaan_id' => 'Pertanyaan',
            'audit_nilai' => 'Nilai',
            'audit_temuan' => 'Status Temuan',
            'audit_keterangan' => 'Keterangan',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

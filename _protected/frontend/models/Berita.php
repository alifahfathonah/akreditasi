<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "z_berita".
 *
 * @property string $b_id
 * @property string $b_nama
 * @property string $b_isi
 * @property string $b_gambar
 * @property integer $created_by
 * @property integer $created_at
 * @property integer $update_by
 * @property integer $update_date
 * @property string $b_status
 */
class Berita extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'z_berita';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['b_id', 'b_nama', 'b_isi', 'b_gambar', 'created_by', 'created_at', 'update_by', 'update_date', 'b_status'], 'required'],
            [['b_isi', 'b_status'], 'string'],
            [['created_by', 'created_at', 'update_by', 'update_date'], 'integer'],
            [['b_id'], 'string', 'max' => 9],
            [['b_nama'], 'string', 'max' => 100],
            [['b_gambar'], 'string', 'max' => 15],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'b_id' => 'B ID',
            'b_nama' => 'B Nama',
            'b_isi' => 'B Isi',
            'b_gambar' => 'B Gambar',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'update_by' => 'Update By',
            'update_date' => 'Update Date',
            'b_status' => 'B Status',
        ];
    }

}

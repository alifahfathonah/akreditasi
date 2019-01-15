<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_assessor".
 *
 * @property int $assesment_id
 * @property int $assesment_ketua
 * @property int $assesment_anggota
 */
class Assessor extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tb_assessor';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['assesment_id', 'assesment_ketua', 'assesment_anggota'], 'required'],
            [['assesment_id', 'assesment_ketua', 'assesment_anggota'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'assesment_id' => 'Assesment ID',
            'assesment_ketua' => 'Assesment Ketua',
            'assesment_anggota' => 'Assesment Anggota',
        ];
    }
}

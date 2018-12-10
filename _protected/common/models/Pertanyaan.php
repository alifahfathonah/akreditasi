<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_pertanyaan".
 *
 * @property string $tanya_id
 * @property int $tujuan_id
 * @property int $bagian_id
 * @property string $pertanyaan
 * @property string $tanya_ket_a
 * @property string $tanya_ket_b
 * @property string $tanya_ket_c
 * @property string $tanya_bobot
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Pertanyaan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'tanya_id', // required
          'group' => 'tanya', // required, unique
          'value' => 'TN'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    public static function tableName()
    {
        return 'tb_pertanyaan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tujuan_id', 'bagian_id', 'pertanyaan', 'tanya_ket_a', 'tanya_ket_b', 'tanya_ket_c', 'tanya_bobot'], 'required'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['pertanyaan', 'tanya_ket_a', 'tanya_ket_b', 'tanya_ket_c'], 'string'],
            [['tanya_id', 'tujuan_id', 'bagian_id'], 'string', 'max' => 5],
            [['tanya_bobot'], 'string', 'max' => 255],
            [['tanya_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'tanya_id' => 'Tanya ID',
            'tujuan_id' => 'Tujuan ID',
            'bagian_id' => 'Bagian ID',
            'pertanyaan' => 'Pertanyaan',
            'tanya_ket_a' => 'Tanya Ket A',
            'tanya_ket_b' => 'Tanya Ket B',
            'tanya_ket_c' => 'Tanya Ket C',
            'tanya_bobot' => 'Tanya Bobot',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

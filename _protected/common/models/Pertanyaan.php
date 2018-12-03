<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "pertanyaan".
 *
 * @property string $tanya_id
 * @property string $pertanyaan
 * @property string $tanya_ket_a
 * @property string $tanya_ket_b
 * @property string $tanya_ket_c
 * @property string $tanya_bobot
 * @property string $tanya_bagian
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
          'group' => 'pertanyaan', // required, unique
          'value' => 'T'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    public static function tableName()
    {
        return 'pertanyaan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pertanyaan', 'tanya_bagian'], 'required'],
            [['pertanyaan', 'tanya_ket_a', 'tanya_ket_b', 'tanya_ket_c'], 'string'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['tanya_id', 'tanya_bagian'], 'string', 'max' => 5],
            [['tanya_bobot'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'tanya_id' => 'Tanya ID',
            'pertanyaan' => 'Pertanyaan',
            'tanya_ket_a' => 'Keterangan Nilai A',
            'tanya_ket_b' => 'Keterangan Nilai B',
            'tanya_ket_c' => 'Keterangan Nilai C',
            'tanya_bobot' => ' Bobot',
            'tanya_bagian' => 'Sub Bagian',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }
}

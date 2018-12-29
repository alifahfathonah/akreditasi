<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_pertanyaan_kls1".
 *
 * @property string $tanya_id
 * @property string $tujuan_id
 * @property string $kriteria_id
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
class Pertanyaan1 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'tanya_id', // required
          'group' => 'tanya1', // required, unique
          'value' => 'T1'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    public static function tableName()
    {
        return 'tb_pertanyaan_kls1';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tujuan_id', 'kriteria_id', 'pertanyaan', 'tanya_ket_a', 'tanya_ket_b', 'tanya_ket_c'], 'required'],
            [['pertanyaan', 'tanya_ket_a', 'tanya_ket_b', 'tanya_ket_c'], 'string'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['tanya_id', 'tujuan_id', 'kriteria_id'], 'string', 'max' => 5],
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
            'tujuan_id' => 'Tujuan',
            'kriteria_id' => 'Kriteria',
            'pertanyaan' => 'Pertanyaan',
            'tanya_ket_a' => 'Nilai A',
            'tanya_ket_b' => 'Nilai B',
            'tanya_ket_c' => 'Nilai C',
            'tanya_bobot' => 'Bobot',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistPertanyaan1($id){
            $model = Pertanyaan1::find()->where(['tanya_id'=>$id])->one();
            if(!empty($model)){
                    return $model->pertanyaan;
            }
            return 'Root';
    }

    public function getlisttj($id){
            $model = Pertanyaan1::find()->where(['tanya_id'=>$id])->one();
            $tujuan = Tujuan::find()->where(['tujuan_id'=>$model->tujuan_id])->one();
            if(!empty($model)){
                    return $tujuan->tujuan_nama;
            }
            return 'Root';
    }

    public function getlistkrit($id){
            $model = Pertanyaan1::find()->where(['tanya_id'=>$id])->one();
            $kriteria = Kriteria::find()->where(['kriteria_id'=>$model->kriteria_id])->one();
            if(!empty($model)){
                    return $kriteria->kriteria_nama;
            }
            return 'Root';
    }
}

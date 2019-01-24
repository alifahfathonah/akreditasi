<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_pertanyaan".
 *
 * @property int $tanya_id
 * @property int $kelas_id
 * @property int $tujuan_id
 * @property int $kriteria_id
 * @property string $pertanyaan
 * @property string $tanya_ket_a
 * @property string $tanya_ket_b
 * @property string $tanya_ket_c
 * @property double $tanya_bobot
 * @property string $tanya_status
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Pertanyaan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public function behaviors(){
        return[
            \yii\behaviors\TimestampBehavior::className(),
            \yii\behaviors\BlameableBehavior::className(),
        ];
    }

    public static function tableName()
    {
        return 'tb_pertanyaan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kelas_id', 'tujuan_id', 'kriteria_id', 'pertanyaan', 'tanya_bobot', 'tanya_aktif'], 'required'],
            [['kelas_id', 'tujuan_id', 'kriteria_id', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['pertanyaan', 'tanya_ket_a', 'tanya_ket_b', 'tanya_ket_c', 'tanya_aktif'], 'string'],
            [['tanya_bobot'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'tanya_id' => 'ID',
            'kelas_id' => 'Kelas',
            'tujuan_id' => 'Tujuan',
            'kriteria_id' => 'Kriteria',
            'pertanyaan' => 'Pertanyaan',
            'tanya_ket_a' => 'Nilai A',
            'tanya_ket_b' => 'Nilai B',
            'tanya_ket_c' => 'Nilai C',
            'tanya_bobot' => 'Bobot',
            'tanya_aktif' => 'aktif',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistPertanyaan($id){
            $model = Pertanyaan::find()->where(['tanya_id'=>$id])->one();
            if(!empty($model)){
                    return $model->pertanyaan;
            }
            return 'Root';
    }

    public function getlisttj($id){
            $model = Pertanyaan::find()->where(['tanya_id'=>$id])->one();
            if(!empty($model)){
                    return $model->tujuan_id;
            }
            return 'Root';
    }

    public function getlistkrit($id){
            $model = Pertanyaan::find()->where(['tanya_id'=>$id])->one();
            if(!empty($model)){
                    return $model->kriteria_id;
            }
            return 'Root';
    }
}

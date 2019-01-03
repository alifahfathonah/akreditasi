<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_kelas".
 *
 * @property int $kelas_id
 * @property string $kelas_nama
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Kelas extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tb_kelas';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kelas_nama'], 'required'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['kelas_nama'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'kelas_id' => 'ID',
            'kelas_nama' => 'Nama',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistKelas($id){
            $model = Kelas::find()->where(['kelas_id'=>$id])->one();
            if(!empty($model)){
                    return $model->kelas_nama;
            }
            return 'Root';
    }
}

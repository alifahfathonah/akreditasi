<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_pegawai".
 *
 * @property string $pegawai_id
 * @property string $pegawai_nama
 * @property string $pegawai_nip
 * @property string $pegawai_alamat
 * @property string $pegawai_status
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class Pegawai extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    
    public function behaviors(){
        return[
            \yii\behaviors\TimestampBehavior::className(),
            \yii\behaviors\BlameableBehavior::className(),
        ];
    }
    
    public static function tableName()
    {
        return 'tb_pegawai';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pegawai_nama'], 'required'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['pegawai_id'], 'string', 'max' => 5],
            [['pegawai_nama', 'pegawai_nip', 'pegawai_alamat', 'pegawai_status'], 'string', 'max' => 255],
            //[['pegawai_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'pegawai_id' => 'ID',
            'pegawai_nama' => 'Nama',
            'pegawai_nip' => 'NIP',
            'pegawai_alamat' => 'Alamat',
            'pegawai_status' => 'Status',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistPeg($id){
            $model = Pegawai::find()->where(['pegawai_id'=>$id])->one();
            if(!empty($model)){
                    return $model->pegawai_nama;
            }
            return 'Root';
    }
}

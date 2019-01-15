<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "pengadilan_negeri".
 *
 * @property string $pn_id
 * @property string $pn_nama
 * @property string $pn_alamat
 * @property string $pn_kelas
 * @property string $pn_akreditasi
 * @property string $pn_ketua
 * @property string $pn_email
 * @property string $pn_website
 * @property string $pn_telp
 * @property string $pn_fax
 * @property int $pn_pegawai
 * @property int $pn_honorer
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 */
class PengadilanNegeri extends \yii\db\ActiveRecord
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
        return 'tb_pengadilan_negeri';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            // [['pn_id', 'pn_nama', 'pn_alamat', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'required'],
            [['pn_nama', 'pn_alamat'], 'required'],
            [['pn_alamat'], 'string'],
            [['pn_pegawai', 'pn_honorer', 'created_by', 'created_at', 'updated_by', 'updated_at', 'pn_kelas', 'pn_kelas_type'], 'integer'],
            //[['pn_id'], 'string', 'max' => 5],
            [['pn_nama', 'pn_ketua', 'pn_email', 'pn_website'], 'string', 'max' => 255],
            [['pn_akreditasi'], 'string', 'max' => 5],
            [['pn_telp', 'pn_fax'], 'string', 'max' => 50],
            //[['pn_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'pn_id' => 'ID',
            'pn_nama' => 'Nama',
            'pn_alamat' => 'Alamat',
            'pn_kelas' => 'Kelas',
            'pn_kelas_type' => 'Kelas',
            'pn_akreditasi' => 'Akreditasi',
            'pn_ketua' => 'Ketua',
            'pn_email' => 'Email',
            'pn_website' => 'Website',
            'pn_telp' => 'Telp',
            'pn_fax' => 'Fax',
            'pn_pegawai' => 'Pegawai',
            'pn_honorer' => 'Honorer',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Updated By',
            'updated_at' => 'Updated At',
        ];
    }

    public function getlistPN($id){
            $model = PengadilanNegeri::find()->where(['pn_id'=>$id])->one();
            if(!empty($model)){
                    return $model->pn_nama;
            }
            return 'Root';
    }

}

<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "bag_pn".
 *
 * @property string $bg_id
 * @property string $pn_id
 * @property string $bg_nama
 * @property int $created_by
 * @property int $created_at
 * @property int $updated_by
 * @property int $updated_at
 *
 * @property PengadilanNegeri $pn
 */
class BagPn extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */

    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'bg_id', // required
          'group' => 'bag_pn', // required, unique
          'value' => 'BG'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        \yii\behaviors\BlameableBehavior::className(),

      ];
    }

    public static function tableName()
    {
        return 'bag_pn';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [[ 'bg_nama'], 'required'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['bg_id', 'pn_id'], 'string', 'max' => 11],
            [['bg_nama'], 'string', 'max' => 250],
            [['bg_id'], 'unique'],
            // [['pn_id'], 'exist', 'skipOnError' => true, 'targetClass' => PengadilanNegeri::className(), 'targetAttribute' => ['pn_id' => 'pn_id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            // 'bg_id' => 'Bg ID',
            // 'pn_id' => 'Pengadilan Negeri',
            'bg_nama' => 'Nama Bagian',
            // 'created_by' => 'Created By',
            // 'created_at' => 'Created At',
            // 'updated_by' => 'Updated By',
            // 'updated_at' => 'Updated At',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    // public function getPn()
    // {
    //     return $this->hasOne(PengadilanNegeri::className(), ['pn_id' => 'pn_id']);
    // }

    public function getlistBagian($id){
            $model = BagPn::find()->where(['bg_id'=>$id])->one();
            if(!empty($model)){
                    return $model->bg_nama;
            }
            //return 'Root';
    }
    
}

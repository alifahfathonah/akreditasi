<?php

namespace common\models;

use Yii;
use yii\web\UploadedFile;


/**
 * This is the model class for table "z_slider".
 *
 * @property string $s_id
 * @property string $s_nama
 * @property string $s_extension
 * @property double $s_size
 * @property string $s_status
 * @property int $created_at
 * @property int $updated_at
 */
class Slider extends \yii\db\ActiveRecord
{

    public $image;
    //behavior
    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 's_id', // required
          'group' => 'slider', // required, unique
          'value' => 'S'.'?', // format auto number. '?' will be replaced with generated number
          'digit' => 3 // optional, default to null.
        ],
        \yii\behaviors\TimestampBehavior::className(),
        //\yii\behaviors\BlameableBehavior::className(),

      ];
    }
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'z_slider';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['s_size'], 'number'],
            [['s_status'], 'string'],
            [['created_at', 'updated_at'], 'integer'],
            [['s_id'], 'string', 'max' => 4],
            [['s_nama'], 'string', 'max' => 30],
            [['s_extension'], 'string', 'max' => 50],
            [['s_id'], 'unique'],
            [['image'], 'file', 'extensions'=>'jpg, jpeg, png, jpeg'],
			['s_label','default','value'=>NULL],
			['s_label','string','max'=>100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            's_id' => 'ID',
            's_nama' => 'Nama',
			's_label' => 'Label',
            's_extension' => 'Extension',
            's_size' => 'Size',
            's_status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}

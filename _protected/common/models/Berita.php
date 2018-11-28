<?php

namespace common\models;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the model class for table "z_berita".
 *
 * @property string $b_id
 * @property string $b_nama
 * @property string $b_isi
 * @property string $b_gambar
 * @property int $created_by
 * @property int $created_at
 * @property int $update_by
 * @property int $update_date
 * @property string $b_status
 */
class Berita extends \yii\db\ActiveRecord
{

	public $image;
	//behavior
	public function behaviors(){
		return[
			[
				'class' => 'mdm\autonumber\Behavior',
				'attribute' => 'b_id', // required
				'group' => 'berita', // required, unique
				'value' => 'B'.'?'.'/'.date('Y') , // format auto number. '?' will be replaced with generated number
				'digit' => 3 // optional, default to null.
			],
			\yii\behaviors\TimestampBehavior::className(),
			\yii\behaviors\BlameableBehavior::className(),

		];
	}

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'z_berita';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['b_nama','b_tgl'], 'required'],
            [['b_isi'], 'string'],
						[['b_status'], 'default','value'=>'y'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['b_id'], 'string', 'max' => 9],
            [['b_nama'], 'string', 'max' => 100],
            [['b_gambar'], 'string', 'max' => 15],
            [['b_id'], 'unique'],
						[['image'], 'file', 'extensions'=>'jpg, jpeg, png, jpeg'],

        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'b_id' => 'ID Berita',
            'b_nama' => 'Judul',
            'b_isi' => 'Isi',
            'b_gambar' => 'Gambar',
						'b_tgl' => 'Tanggal',
            'created_by' => 'Created By',
            'created_at' => 'Created At',
            'updated_by' => 'Update By',
            'updated_at' => 'Update Date',
            'b_status' => 'Status',
        ];
    }
}

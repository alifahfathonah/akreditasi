<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_akreditasi".
 *
 * @property int $akreditasi_id
 * @property int $pn_id
 * @property string $akreditasi_sk
 * @property string $akreditasi_tgl_sk
 * @property string $akreditasi
 */
class Akreditasi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tb_akreditasi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pn_id', 'akreditasi_sk', 'akreditasi_tgl_sk', 'akreditasi'], 'required'],
            [['pn_id'], 'integer'],
            [['akreditasi_tgl_sk'], 'safe'],
            [['akreditasi_sk'], 'string', 'max' => 255],
            [['akreditasi'], 'string', 'max' => 5],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'akreditasi_id' => 'ID',
            'pn_id' => 'Pengadilan Negeri',
            'akreditasi_sk' => 'Nomor SK',
            'akreditasi_tgl_sk' => 'Tanggal SK',
            'akreditasi' => 'Akreditasi',
        ];
    }
}

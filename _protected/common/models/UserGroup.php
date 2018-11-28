<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "user_group".
 *
 * @property string $ug_id
 * @property string $ug_nama
 * @property string $ug_table_relation
 * @property string $ug_pkey_relation
 */
class UserGroup extends \yii\db\ActiveRecord
{

    //behavior
    public function behaviors(){
      return[
        [
          'class' => 'mdm\autonumber\Behavior',
          'attribute' => 'ug_id', // required
          'group' => 'usergroup', // required, unique
          'value' => '?' , // format auto number. '?' will be replaced with generated number
          'digit' => 2 // optional, default to null.
        ],
      ];
    }

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_group';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ug_id'], 'string', 'max' => 2],
            [['ug_nama'], 'string', 'max' => 50],
            [['ug_table_relation', 'ug_pkey_relation'], 'default'],
            [['ug_id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ug_id' => 'ID',
            'ug_nama' => 'Nama',
            'ug_table_relation' => 'Table Relation',
            'ug_pkey_relation' => 'Pkey Relation',
        ];
    }
}

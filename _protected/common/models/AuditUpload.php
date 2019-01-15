<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tb_audit_upload".
 *
 * @property int $upload_id
 * @property int $audit_id
 * @property string $audit_upload
 */
class AuditUpload extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tb_audit_upload';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['audit_id', 'audit_upload'], 'required'],
            [['audit_id'], 'integer'],
            [['audit_upload','upload_status'], 'string', 'max' => 255],
            //[['audit_upload'], 'file', 'skipOnEmpty' => false, 'extensions' => 'jpg, jpeg, png, jpeg, doc, docx, pdf, xlsx, xls, rar', 'maxFiles' => 10],
            //[['files'], 'file', 'skipOnEmpty' => false, 'extensions' => 'jpg, jpeg, png, jpeg, doc, docx, pdf, xlsx, xls, rar', 'maxFiles' => 10],
            //[['upload'], 'file', 'extensions'=>'jpg, jpeg, png, jpeg, doc, docx, pdf, xlsx, xls, rar'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'upload_id' => 'Upload ID',
            'audit_id' => 'Audit ID',
            'audit_upload' => 'Audit Upload',
            'upload_status'=> 'status',
        ];
    }
}

<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Audit;
use common\models\Pertanyaan;

/**
 * AuditSearch represents the model behind the search form of `common\models\Audit`.
 */
class AuditSearch extends Audit
{
    /**
     * @inheritdoc
     */

    public $tujuan_id;
    public $kriteria_id;

    public function rules()
    {
        return [
            [['audit_id', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['assesment_id', 'pertanyaan_id', 'audit_nilai', 'audit_temuan', 'audit_keterangan','tujuan_id','kriteria_id'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Audit::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'audit_id' => $this->audit_id,
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'assesment_id', $this->assesment_id])
            ->andFilterWhere(['like', 'pertanyaan_id', $this->pertanyaan_id])
            ->andFilterWhere(['like', 'audit_nilai', $this->audit_nilai])
            ->andFilterWhere(['like', 'audit_temuan', $this->audit_temuan])
            ->andFilterWhere(['like', 'audit_keterangan', $this->audit_keterangan]);

        return $dataProvider;
    }

    public function search2($params,$id)
    {
        $query = Audit::find()->join('INNER JOIN', 
            'tb_pertanyaan',
            'tb_pertanyaan.tanya_id = tb_audit.pertanyaan_id'
        )->where(['assesment_id'=>$id]);

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'audit_id' => $this->audit_id,
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
            'tujuan_id' => $this->tujuan_id,
            'kriteria_id' => $this->kriteria_id,
        ]);

        $query->andFilterWhere(['like', 'assesment_id', $this->assesment_id])
            ->andFilterWhere(['like', 'pertanyaan_id', $this->pertanyaan_id])
            ->andFilterWhere(['like', 'audit_nilai', $this->audit_nilai])
            ->andFilterWhere(['like', 'audit_temuan', $this->audit_temuan])
            ->andFilterWhere(['like', 'audit_keterangan', $this->audit_keterangan]);

        return $dataProvider;
    }
}

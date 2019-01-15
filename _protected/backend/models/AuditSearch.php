<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Audit;

/**
 * AuditSearch represents the model behind the search form of `common\models\Audit`.
 */
class AuditSearch extends Audit
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['audit_id', 'assesment_id', 'tujuan_id', 'kriteria_id', 'bobot', 'audit_nilai_angka', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
            [['pertanyaan', 'nilai_a', 'nilai_b', 'nilai_c', 'audit_nilai', 'audit_temuan', 'audit_keterangan'], 'safe'],
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
            'assesment_id' => $this->assesment_id,
            'tujuan_id' => $this->tujuan_id,
            'kriteria_id' => $this->kriteria_id,
            'bobot' => $this->bobot,
            'audit_nilai_angka' => $this->audit_nilai_angka,
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'pertanyaan', $this->pertanyaan])
            ->andFilterWhere(['like', 'nilai_a', $this->nilai_a])
            ->andFilterWhere(['like', 'nilai_b', $this->nilai_b])
            ->andFilterWhere(['like', 'nilai_c', $this->nilai_c])
            ->andFilterWhere(['like', 'audit_nilai', $this->audit_nilai])
            ->andFilterWhere(['like', 'audit_temuan', $this->audit_temuan])
            ->andFilterWhere(['like', 'audit_keterangan', $this->audit_keterangan]);

        return $dataProvider;
    }

    public function search2($params,$id)
    {
        $query = Audit::find()->where(['assesment_id'=>$id]);

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
            'assesment_id' => $this->assesment_id,
            'tujuan_id' => $this->tujuan_id,
            'kriteria_id' => $this->kriteria_id,
            'bobot' => $this->bobot,
            'audit_nilai_angka' => $this->audit_nilai_angka,
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'pertanyaan', $this->pertanyaan])
            ->andFilterWhere(['like', 'nilai_a', $this->nilai_a])
            ->andFilterWhere(['like', 'nilai_b', $this->nilai_b])
            ->andFilterWhere(['like', 'nilai_c', $this->nilai_c])
            ->andFilterWhere(['like', 'audit_nilai', $this->audit_nilai])
            ->andFilterWhere(['like', 'audit_temuan', $this->audit_temuan])
            ->andFilterWhere(['like', 'audit_keterangan', $this->audit_keterangan]);

        return $dataProvider;
    }
}

<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Assesment;

/**
 * AssesmentSearch represents the model behind the search form of `common\models\Assesment`.
 */
class AssesmentSearch extends Assesment
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['assesment_id', 'assesment_surat', 'assesment_tanggal_mulai', 'assesment_tanggal_selesai', 'assesment_ketua', 'assesment_anggota', 'kelas_id', 'pn_id'], 'safe'],
            [['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
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
        $query = Assesment::find();

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
            'assesment_tanggal_mulai' => $this->assesment_tanggal_mulai,
            'assesment_tanggal_selesai' => $this->assesment_tanggal_selesai,
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'assesment_id', $this->assesment_id])
            ->andFilterWhere(['like', 'assesment_surat', $this->assesment_surat])
            ->andFilterWhere(['like', 'assesment_ketua', $this->assesment_ketua])
            ->andFilterWhere(['like', 'assesment_anggota', $this->assesment_anggota])
            ->andFilterWhere(['like', 'kelas_id', $this->kelas_id])
            ->andFilterWhere(['like', 'pn_id', $this->pn_id]);

        return $dataProvider;
    }
}

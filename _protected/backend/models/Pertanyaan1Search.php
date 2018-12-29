<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Pertanyaan1;

/**
 * Pertanyaan1Search represents the model behind the search form of `common\models\Pertanyaan1`.
 */
class Pertanyaan1Search extends Pertanyaan1
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tanya_id', 'tujuan_id', 'kriteria_id', 'pertanyaan', 'tanya_ket_a', 'tanya_ket_b', 'tanya_ket_c', 'tanya_bobot'], 'safe'],
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
        $query = Pertanyaan1::find()->orderBy([
                 'tujuan_id'=>SORT_ASC
        ]);

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
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'tanya_id', $this->tanya_id])
            ->andFilterWhere(['like', 'tujuan_id', $this->tujuan_id])
            ->andFilterWhere(['like', 'kriteria_id', $this->kriteria_id])
            ->andFilterWhere(['like', 'pertanyaan', $this->pertanyaan])
            ->andFilterWhere(['like', 'tanya_ket_a', $this->tanya_ket_a])
            ->andFilterWhere(['like', 'tanya_ket_b', $this->tanya_ket_b])
            ->andFilterWhere(['like', 'tanya_ket_c', $this->tanya_ket_c])
            ->andFilterWhere(['like', 'tanya_bobot', $this->tanya_bobot]);

        return $dataProvider;
    }

    public function search2($params,$id)
    {
        $query = Pertanyaan1::find()->where(['tanya_id'=>$id]);

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
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'tanya_id', $this->tanya_id])
            ->andFilterWhere(['like', 'tujuan_id', $this->tujuan_id])
            ->andFilterWhere(['like', 'kriteria_id', $this->kriteria_id])
            ->andFilterWhere(['like', 'pertanyaan', $this->pertanyaan])
            ->andFilterWhere(['like', 'tanya_ket_a', $this->tanya_ket_a])
            ->andFilterWhere(['like', 'tanya_ket_b', $this->tanya_ket_b])
            ->andFilterWhere(['like', 'tanya_ket_c', $this->tanya_ket_c])
            ->andFilterWhere(['like', 'tanya_bobot', $this->tanya_bobot]);

        return $dataProvider;
    }
}

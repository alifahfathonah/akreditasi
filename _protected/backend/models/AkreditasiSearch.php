<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Akreditasi;

/**
 * AkreditasiSearch represents the model behind the search form of `common\models\Akreditasi`.
 */
class AkreditasiSearch extends Akreditasi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['akreditasi_id', 'pn_id'], 'integer'],
            [['akreditasi_sk', 'akreditasi_tgl_sk', 'akreditasi'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
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
        $query = Akreditasi::find();

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
            'akreditasi_id' => $this->akreditasi_id,
            'pn_id' => $this->pn_id,
            'akreditasi_tgl_sk' => $this->akreditasi_tgl_sk,
        ]);

        $query->andFilterWhere(['like', 'akreditasi_sk', $this->akreditasi_sk])
            ->andFilterWhere(['like', 'akreditasi', $this->akreditasi]);

        return $dataProvider;
    }

    public function search2($params,$id)
    {
        $query = Akreditasi::find()->where(['pn_id'=>$id])->orderBy(['akreditasi_tgl_sk' => SORT_DESC]);

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
            'akreditasi_id' => $this->akreditasi_id,
            'pn_id' => $this->pn_id,
            'akreditasi_tgl_sk' => $this->akreditasi_tgl_sk,
        ]);

        $query->andFilterWhere(['like', 'akreditasi_sk', $this->akreditasi_sk])
            ->andFilterWhere(['like', 'akreditasi', $this->akreditasi]);

        return $dataProvider;
    }
}

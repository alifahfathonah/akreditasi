<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\BagPn;

/**
 * BagpnSearch represents the model behind the search form of `common\models\BagPn`.
 */
class BagpnSearch extends BagPn
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['bg_id', 'pn_id', 'bg_nama'], 'safe'],
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
        $query = BagPn::find();

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

        $query->andFilterWhere(['like', 'bg_id', $this->bg_id])
            ->andFilterWhere(['like', 'pn_id', $this->pn_id])
            ->andFilterWhere(['like', 'bg_nama', $this->bg_nama]);

        return $dataProvider;
    }
}

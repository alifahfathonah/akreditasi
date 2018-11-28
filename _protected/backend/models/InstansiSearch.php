<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Instansi;

/**
 * InstansiSeacrh represents the model behind the search form of `common\models\Instansi`.
 */
class InstansiSearch extends Instansi
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ins_id', 'ins_nama', 'ins_alamat', 'ins_telp', 'ins_email'], 'safe'],
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
        $query = Instansi::find();

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
        $query->andFilterWhere(['like', 'ins_id', $this->ins_id])
            ->andFilterWhere(['like', 'ins_nama', $this->ins_nama])
            ->andFilterWhere(['like', 'ins_alamat', $this->ins_alamat])
            ->andFilterWhere(['like', 'ins_telp', $this->ins_telp])
            ->andFilterWhere(['like', 'ins_email', $this->ins_email]);

        return $dataProvider;
    }
}

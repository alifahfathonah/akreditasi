<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Slider;

/**
 * SliderSearch represents the model behind the search form of `common\models\Slider`.
 */
class SliderSearch extends Slider
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['s_id', 's_nama', 's_extension', 's_status','s_label'], 'safe'],
            [['s_size'], 'number'],
            [['created_at', 'updated_at'], 'integer'],
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
        $query = Slider::find();

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
            's_size' => $this->s_size,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 's_id', $this->s_id])
            ->andFilterWhere(['like', 's_nama', $this->s_nama])
            ->andFilterWhere(['like', 's_extension', $this->s_extension])
            ->andFilterWhere(['like', 's_status', $this->s_status])
			->andFilterWhere(['like', 's_label', $this->s_label]);

        return $dataProvider;
    }
}

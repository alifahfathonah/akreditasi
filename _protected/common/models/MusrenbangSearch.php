<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Musrenbang;
use common\models\Kaling;

/**
 * SliderSearch represents the model behind the search form of `common\models\Slider`.
 */
class MusrenbangSearch extends Musrenbang
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ins_id','m_kegiatan','m_location','m_volume','m_biaya','m_sifat','mk_id'], 'safe'],
			['m_tahun','default','value'=>date('Y')],
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
        $query = Musrenbang::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
			'pagination' => [
				'pageSize' => 10,
			],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions

        $query->andFilterWhere(['like', 'ins_id', $this->ins_id])
              ->andFilterWhere(['like', 'm_kegiatan', $this->m_kegiatan])
              ->andFilterWhere(['like', 'm_location', $this->m_location])
              ->andFilterWhere(['like', 'm_volume', $this->m_volume])
              ->andFilterWhere(['like', 'm_biaya', $this->m_biaya])
              ->andFilterWhere(['like', 'm_sifat', $this->m_sifat])
              ->andFilterWhere(['like', 'm_tahun', $this->m_tahun])
			  ->andFilterWhere(['like', 'mk_id', $this->mk_id])
			  ->orderBy(['m_prioritas'=>SORT_ASC,'ins_id'=>SORT_ASC]);

        return $dataProvider;
    }
	
	 public function searchfront($params)
    {
        $query = Musrenbang::find();

        // add conditions that should always apply here

        //$dataProvider = new ActiveDataProvider([
        //    'query' => $query,
        //]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $query;
        }

        // grid filtering conditions

        $query->andFilterWhere(['like', 'ins_id', $this->ins_id])
              ->andFilterWhere(['like', 'm_kegiatan', $this->m_kegiatan])
              ->andFilterWhere(['like', 'm_location', $this->m_location])
              ->andFilterWhere(['like', 'm_volume', $this->m_volume])
              ->andFilterWhere(['like', 'm_biaya', $this->m_biaya])
              ->andFilterWhere(['like', 'm_sifat', $this->m_sifat])
              ->andFilterWhere(['like', 'm_tahun', $this->m_tahun])
			  ->andFilterWhere(['like', 'mk_id', $this->mk_id])
			  ->orderBy(['m_prioritas'=>SORT_ASC,'ins_id'=>SORT_ASC]);

        return $query;
    }
	
	 public function searchExcel($params)
    {
        $query = Musrenbang::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
			'pagination' => false,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions

        $query->andFilterWhere(['like', 'ins_id', $this->ins_id])
              ->andFilterWhere(['like', 'm_kegiatan', $this->m_kegiatan])
              ->andFilterWhere(['like', 'm_location', $this->m_location])
              ->andFilterWhere(['like', 'm_volume', $this->m_volume])
              ->andFilterWhere(['like', 'm_biaya', $this->m_biaya])
              ->andFilterWhere(['like', 'm_sifat', $this->m_sifat])
              ->andFilterWhere(['like', 'm_tahun', $this->m_tahun])
			  ->andFilterWhere(['like', 'mk_id', $this->mk_id])
			  ->orderBy(['m_prioritas'=>SORT_ASC,'ins_id'=>SORT_ASC]);

        return $dataProvider;
    }
    
}

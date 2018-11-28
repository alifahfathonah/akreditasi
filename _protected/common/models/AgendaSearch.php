<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Agenda;

/**
 * AgendaSearch represents the model behind the search form of `common\models\Agenda`.
 */
class AgendaSearch extends Agenda
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['a_id', 'a_judul', 'a_isi', 'a_location', 'a_status'], 'safe'],
            //[['a_tanggal', 'a_tanggal_akhir' , 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
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
        $query = Agenda::find()->where(['a_status'=>'belum_terlaksana']);

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
            'a_tanggal' => $this->a_tanggal,
            'a_tanggal_akhir' => $this->a_tanggal,
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'a_id', $this->a_id])
            ->andFilterWhere(['like', 'a_judul', $this->a_judul])
            ->andFilterWhere(['like', 'a_isi', $this->a_isi])
            ->andFilterWhere(['like', 'a_location', $this->a_location])
            ->andFilterWhere(['like', 'a_status', $this->a_status])
			->orderBy(['a_tanggal'=>SORT_ASC]);

        return $dataProvider;
    }
	
	public function searchY($params)
    {
        $query = Agenda::find()->where(['a_status'=>'sudah_terlaksana']);

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
        //$query->andFilterWhere([
            //'a_tanggal' => $this->a_tanggal,
            //'a_tanggal_akhir' => $this->a_tanggal,
            //'created_by' => $this->created_by,
            //'created_at' => $this->created_at,
            //'updated_by' => $this->updated_by,
            //'updated_at' => $this->updated_at,
        //]);

        $query->andFilterWhere(['like', 'a_id', $this->a_id])
            ->andFilterWhere(['like', 'a_judul', $this->a_judul])
            ->andFilterWhere(['like', 'a_isi', $this->a_isi])
            ->andFilterWhere(['like', 'a_location', $this->a_location])
            ->andFilterWhere(['like', 'a_status', $this->a_status])
			->orderBy(['a_tanggal'=>SORT_ASC]);

        return $dataProvider;
    }
	
	public function searchN($params)
    {
        $query = Agenda::find()->where(['a_status'=>'belum_terlaksana']);

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
        //$query->andFilterWhere([
            //'a_tanggal' => $this->a_tanggal,
            //'a_tanggal_akhir' => $this->a_tanggal,
            //'created_by' => $this->created_by,
            //'created_at' => $this->created_at,
            //'updated_by' => $this->updated_by,
            //'updated_at' => $this->updated_at,
        //]);

        $query->andFilterWhere(['like', 'a_id', $this->a_id])
            ->andFilterWhere(['like', 'a_judul', $this->a_judul])
            ->andFilterWhere(['like', 'a_isi', $this->a_isi])
            ->andFilterWhere(['like', 'a_location', $this->a_location])
            ->andFilterWhere(['like', 'a_status', $this->a_status])
			->orderBy(['a_tanggal'=>SORT_ASC]);

        return $dataProvider;
    }
}

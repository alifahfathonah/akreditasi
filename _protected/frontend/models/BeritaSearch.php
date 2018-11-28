<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Berita;

/**
 * BeritaSearch represents the model behind the search form about `frontend\models\Berita`.
 */
class BeritaSearch extends Berita
{
    public $cari;
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['b_id', 'b_nama', 'b_isi', 'b_gambar', 'b_status','cari'], 'safe'],
            //[['created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
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
        $query = Berita::find();

        // add conditions that should always apply here

        // $dataProvider = new ActiveDataProvider([
        //     'query' => $query,
        // ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $query;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            // 'created_by' => $this->created_by,
            // 'created_at' => $this->created_at,
            // 'updated_by' => $this->updated_by,
            // 'updated_at' => $this->updated_at,
            'b_status' => 'y',
        ]);

        $query->andFilterWhere(['like', 'b_id', $this->b_id])
            ->andFilterWhere(['like', 'b_nama', $this->b_nama])
            ->andFilterWhere(['like', 'b_isi', $this->b_isi])
            ->andFilterWhere(['like', 'b_gambar', $this->b_gambar])
            ->orderBy('created_at DESC');

        return $query;
    }
}

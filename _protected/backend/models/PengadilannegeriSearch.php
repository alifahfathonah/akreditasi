<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\PengadilanNegeri;

/**
 * PengadilannegeriSearch represents the model behind the search form of `common\models\PengadilanNegeri`.
 */
class PengadilannegeriSearch extends PengadilanNegeri
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pn_id', 'pn_nama', 'pn_alamat', 'pn_kelas', 'pn_akreditasi', 'pn_ketua', 'pn_email', 'pn_website', 'pn_telp', 'pn_fax'], 'safe'],
            [['pn_pegawai', 'pn_honorer', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
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
        $query = PengadilanNegeri::find();

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
            'pn_pegawai' => $this->pn_pegawai,
            'pn_honorer' => $this->pn_honorer,
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'pn_id', $this->pn_id])
            ->andFilterWhere(['like', 'pn_nama', $this->pn_nama])
            ->andFilterWhere(['like', 'pn_alamat', $this->pn_alamat])
            ->andFilterWhere(['like', 'pn_kelas', $this->pn_kelas])
            ->andFilterWhere(['like', 'pn_akreditasi', $this->pn_akreditasi])
            ->andFilterWhere(['like', 'pn_ketua', $this->pn_ketua])
            ->andFilterWhere(['like', 'pn_email', $this->pn_email])
            ->andFilterWhere(['like', 'pn_website', $this->pn_website])
            ->andFilterWhere(['like', 'pn_telp', $this->pn_telp])
            ->andFilterWhere(['like', 'pn_fax', $this->pn_fax]);

        return $dataProvider;
    }
}

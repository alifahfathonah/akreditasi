<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\PengadilanTinggi;

/**
 * PengadilantinggiSearch represents the model behind the search form of `common\models\PengadilanTinggi`.
 */
class PengadilantinggiSearch extends PengadilanTinggi
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pt_id', 'pt_nama', 'pt_alamat', 'pt_pimpinan', 'pt_website', 'pt_email', 'pt_telp', 'pt_fax', 'pt_logo'], 'safe'],
            [['pt_pegawai', 'pt_honorer', 'created_by', 'created_at', 'updated_by', 'updated_at'], 'integer'],
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
        $query = PengadilanTinggi::find();

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
            'pt_pegawai' => $this->pt_pegawai,
            'pt_honorer' => $this->pt_honorer,
            'created_by' => $this->created_by,
            'created_at' => $this->created_at,
            'updated_by' => $this->updated_by,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'pt_id', $this->pt_id])
            ->andFilterWhere(['like', 'pt_nama', $this->pt_nama])
            ->andFilterWhere(['like', 'pt_alamat', $this->pt_alamat])
            ->andFilterWhere(['like', 'pt_pimpinan', $this->pt_pimpinan])
            ->andFilterWhere(['like', 'pt_website', $this->pt_website])
            ->andFilterWhere(['like', 'pt_email', $this->pt_email])
            ->andFilterWhere(['like', 'pt_telp', $this->pt_telp])
            ->andFilterWhere(['like', 'pt_fax', $this->pt_fax]);

        return $dataProvider;
    }
}

<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Pegawai;

/**
 * PegawaiSearch represents the model behind the search form of `common\models\Pegawai`.
 */
class PegawaiSearch extends Pegawai
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pegawai_id', 'pegawai_nama', 'pegawai_nip', 'pegawai_alamat', 'pegawai_status'], 'safe'],
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
        $query = Pegawai::find();

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

        $query->andFilterWhere(['like', 'pegawai_id', $this->pegawai_id])
            ->andFilterWhere(['like', 'pegawai_nama', $this->pegawai_nama])
            ->andFilterWhere(['like', 'pegawai_nip', $this->pegawai_nip])
            ->andFilterWhere(['like', 'pegawai_alamat', $this->pegawai_alamat])
            ->andFilterWhere(['like', 'pegawai_status', $this->pegawai_status]);

        return $dataProvider;
    }
}

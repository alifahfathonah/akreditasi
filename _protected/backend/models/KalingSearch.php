<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Kaling;
use common\models\User;

/**
 * KalingSearch represents the model behind the search form of `common\models\Kaling`.
 */
class KalingSearch extends Kaling
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ins_id','uk_id', 'uk_nama', 'uk_alamat', 'uk_telp', 'uk_jk', 'uk_tgl_lahir', 'uk_tempat_lahir'], 'safe'],
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
    public function search1($params)
    {
        $subquery = User::find()->select('pkey');
        $query = Kaling::find()->where(['in','uk_id',$subquery]);

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
            'uk_tgl_lahir' => $this->uk_tgl_lahir,
        ]);

        $query->andFilterWhere(['like', 'uk_id', $this->uk_id])
            ->andFilterWhere(['like', 'uk_nama', $this->uk_nama])
            ->andFilterWhere(['like', 'uk_alamat', $this->uk_alamat])
            ->andFilterWhere(['like', 'uk_telp', $this->uk_telp])
            ->andFilterWhere(['like', 'uk_jk', $this->uk_jk])
            ->andFilterWhere(['like', 'ins_id', $this->ins_id])
            ->andFilterWhere(['like', 'uk_tempat_lahir', $this->uk_tempat_lahir]);

        return $dataProvider;
    }

    public function search2($params)
    {

        $subquery = User::find()->select('pkey');
        $query = Kaling::find()->where(['not in','uk_id',$subquery]);

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
            'uk_tgl_lahir' => $this->uk_tgl_lahir,
        ]);

        $query->andFilterWhere(['like', 'uk_id', $this->uk_id])
            ->andFilterWhere(['like', 'uk_nama', $this->uk_nama])
            ->andFilterWhere(['like', 'uk_alamat', $this->uk_alamat])
            ->andFilterWhere(['like', 'uk_telp', $this->uk_telp])
            ->andFilterWhere(['like', 'uk_jk', $this->uk_jk])
            ->andFilterWhere(['like', 'uk_tempat_lahir', $this->uk_tempat_lahir]);

        return $dataProvider;
    }
}

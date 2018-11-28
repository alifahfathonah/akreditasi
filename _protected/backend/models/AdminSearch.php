<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Admin;
use common\models\User;

/**
 * AdminSearch represents the model behind the search form of `common\models\Admin`.
 */
class AdminSearch extends Admin
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ua_id', 'ua_nama', 'ua_alamat', 'ua_telp', 'ua_jk', 'ua_tgl_lahir', 'ua_tempat_lahir'], 'safe'],
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
        $query = Admin::find()->where(['in','ua_id',$subquery]);

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
            'ua_tgl_lahir' => $this->ua_tgl_lahir,
        ]);

        $query->andFilterWhere(['like', 'ua_id', $this->ua_id])
            ->andFilterWhere(['like', 'ua_nama', $this->ua_nama])
            ->andFilterWhere(['like', 'ua_alamat', $this->ua_alamat])
            ->andFilterWhere(['like', 'ua_telp', $this->ua_telp])
            ->andFilterWhere(['like', 'ua_jk', $this->ua_jk])
            ->andFilterWhere(['like', 'ua_tempat_lahir', $this->ua_tempat_lahir]);

        return $dataProvider;
    }

    public function search2($params)
    {

        $subquery = User::find()->select('pkey');
        $query = Admin::find()->where(['not in','ua_id',$subquery]);

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
            'ua_tgl_lahir' => $this->ua_tgl_lahir,
        ]);

        $query->andFilterWhere(['like', 'ua_id', $this->ua_id])
            ->andFilterWhere(['like', 'ua_nama', $this->ua_nama])
            ->andFilterWhere(['like', 'ua_alamat', $this->ua_alamat])
            ->andFilterWhere(['like', 'ua_telp', $this->ua_telp])
            ->andFilterWhere(['like', 'ua_jk', $this->ua_jk])
            ->andFilterWhere(['like', 'ua_tempat_lahir', $this->ua_tempat_lahir]);

        return $dataProvider;
    }
}

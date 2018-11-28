<?php
namespace common\models;

use Yii;
use yii\base\Model;

/**
 * Login form
 */
class GantiPwd extends Model
{
    public $username;
    public $oldpassword;
	public $newpassword;
	public $newpassword_repeat;
    public $rememberMe = true;

    private $_user;


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            // username and password are both required
            [['username', 'oldpassword', 'newpassword', 'newpassword_repeat'], 'required'],
            // rememberMe must be a boolean value
            ['rememberMe', 'boolean'],
            // password is validated by validatePassword()
			['oldpassword', 'string', 'min' => 6],
            ['oldpassword', 'validatePassword'],
			//validate min newpassword and newpassword_repeat
			[['newpassword','newpassword_repeat'], 'string', 'min' => 6],
			// validates if the value of "password" attribute equals to that of "password_repeat"
			['newpassword_repeat', 'compare', 'compareAttribute' => 'newpassword'],

        ];
    }
	
	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'username' => 'Username',
            'oldpassword' => 'Old password',
            'newpassword' => 'New Password',
            'newpassword_repeat' => 'Repeat New Password',
        ];
    }

    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     */
    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
            if (!$user || !$user->validatePassword($this->oldpassword)) {
                $this->addError($attribute, 'Incorrect old password.');
            }
        }
    }

    /**
     * Logs in a user using the provided username and password.
     *
     * @return bool whether the user is logged in successfully
     */
    public function ganti()
    {
        if ($this->validate()) {
            $user = $this->getUser();
			$user->setPassword($this->newpassword);
			$user->save();
			
			return true;
        }

        return false;
    }

    /**
     * Finds user by [[username]]
     *
     * @return User|null
     */
    protected function getUser()
    {
        if ($this->_user === null) {
            $this->_user = User::findByUsername($this->username);
        }

        return $this->_user;
    }
	
	 /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     */
    public function setPassword($password)
    {
        $this->password_hash = Yii::$app->security->generatePasswordHash($password);
    }
	
}

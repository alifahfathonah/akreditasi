<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

?>
<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box">
					<div class="left">
						<div class="content">
							<div class="header">
								<p class="lead"><?= Html::img(Yii::$app->params['backendUrl'].'/login_icon.png',['style'=>'height:40px; width:auto;']) ?> <b>Akreditasi Pengadilan Negeri</b></p>
							</div>
							<?php $form = ActiveForm::begin(['id' => 'login-form','class'=>'form-auth-small']); ?>

								<?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

								<?= $form->field($model, 'password')->passwordInput() ?>

								<!-- <?= $form->field($model, 'rememberMe')->checkbox() ?> -->

								<div class="form-group">
									<?= Html::submitButton('Login', ['class' => 'btn btn-primary btn-lg btn-block', 'name' => 'login-button']) ?>
								</div>

							<?php ActiveForm::end(); ?>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<!--<h1 class="heading">Lembaga Permasyarakatan Benoa</h1>-->
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>


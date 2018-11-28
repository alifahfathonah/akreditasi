<?php
use yii\helpers\Url;
use backend\components\SideBWidget;
use backend\assets\AppAsset;

AppAsset::register($this);
?>
<div id="sidebar-nav" class="sidebar">
		<div class="sidebar-scroll">
			<nav>
				<ul class="nav">
					<?= $view ?>
				</ul>
			</nav>
		</div>
	</div>

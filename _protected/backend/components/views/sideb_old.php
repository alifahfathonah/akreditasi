<?php
use yii\helpers\Url;
?>
<div id="sidebar-nav" class="sidebar">
		<div class="sidebar-scroll">
			<nav>
				<ul class="nav">
					<?php $i=1; ?>
					<?php foreach($model as $row): ?>
						<?php if($row['sub'] != NULL){ ?>
						<li>
							<a href="#subPages<?php echo $i; ?>" data-toggle="collapse" class="collapsed"><i class="<?php echo $row['icon']; ?>"></i> <span><?php echo $row['nama']; ?></span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages<?php echo $i; ?>" class="collapse ">
								<ul class="nav">
							<?php foreach($row['sub'] as $row2): ?>
									<li><a href="<?php echo Url::to([$row2['page']]); ?>" class=""><i class="<?php echo $row2['icon']; ?>"></i><?php echo $row2['nama']; ?></a></li>
							<?php endforeach; ?>
								</ul>
							</div>
						</li>
						<?php $i++; }else{ ?>
						<li><a href="<?php echo Url::to([$row['page']]); ?>" class=""><i class="<?php echo $row['icon']; ?>"></i> <span><?php echo $row['nama']; ?></span></a></li>
						<?php } ?>
					<?php endforeach; ?>
				</ul>
			</nav>
		</div>
	</div>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title><?php echo $site['title'];?></title>
    <meta name="keywords" content="<?php echo $site['keywords'];?>">
    <meta name="description" content="<?php echo $site['description'];?>">
	<!--[if lt IE 9]><script>window.location.href='http://www.ifeiwu.com/ie-browser-upgrade.html';</script><![endif]-->
	<link rel="apple-touch-icon" href="<?php echo $this->url('data/apple-touch-icon.png');?>">
    <link rel="icon" type="image/png" href="<?php echo $this->url('data/favicon.png');?>">
    	
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/reset.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/multiscroll.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/main.css');?>">
    <?php if($site['skin']):?>
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/skin/'.$site['skin'].'.css');?>">
    <?php endif;?>
    <?php if($site['style']):?>
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/'.$site['style'].'.css');?>">
	<?php endif;?>

	<script src="<?php echo $this->url('asset/js/jquery.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/easings.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/multiscroll.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/main.js');?>"></script>
</head>
<body>

	<?php if($site['logo']):?>
	<a class="logo"><img src="<?php echo $this->url('data/'.$site['logo']);?>"></a>
	<?php endif;?>
	
	<div id="container">
		<div class="ms-left">
			<?php foreach ($items as $item):?>
			<div class="ms-section">
				<article style="background:<?php echo $item['bgcolor'];?>;">
					<div>
						<?php if($item['title']):?>
	                    <h1 style="<?php echo $item['title_color']?'color:'.$item['title_color']:'';?>"><?php echo $item['title'];?></h1>
	                    <?php endif;?>
	                    <?php if ($item['summary']):?>
	                    <p style="<?php echo $item['summary_color']?'color:'.$item['summary_color']:'';?>"><?php echo $item['summary'];?></p>
	                    <?php endif;?>
						<?php
	                    if ($item['url']):
	                    	$style = $item['url_title_color'] ? 'color:'.$item['url_title_color'].';' : '';
							$style .= $item['url_title_bgcolor'] ? 'background-color:'.$item['url_title_bgcolor'].';' : '';
	                    ?>
						<a href="<?php echo $item['url'];?>" target="<?php echo $item['url_target'];?>" style="<?php echo $style;?>"><?php echo $item['url_title'];?></a>
						<?php endif;?>
					</div>
				</article>
			</div>
			<?php endforeach;?>
		</div>
		
		<div class="ms-right">
			<?php foreach ($items as $item):?>
			<div class="ms-section">
				<div class="bg-image" style="background-image:url(<?php echo $this->url($item['image_path'].'/'.$item['image'], $item['utime']);?>);">&nbsp;</div>
			</div>
			<?php endforeach;?>
		</div>	
	</div>
	
	<div class="pager">
		<span class="active">1</span>&nbsp;/&nbsp;<?php echo count($items);?>
		<div class="line"></div>		
	</div>
	
	<?php
	if ($site['stats_open'] == 1)
	{
		$squery = http_build_query(array(
				'r'=>$this->request->root(),
				'm'=>$site['stats_much'],
				'u'=>$site['stats_unit'],
				'd'=>$site['stats_date']
			)
		);
		
		echo '<script src="' . $this->url('asset/js/stats.js?' . $squery) . '"></script>';
	}
	
	if ($site['stats3_open'] == 1) { echo $this->decode($site['stats3_code']); }
	?>
	
</body>
</html>

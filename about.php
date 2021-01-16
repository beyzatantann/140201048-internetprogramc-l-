<?php
$k=mysql_fetch_assoc(mysql_query("select * from sayfalar where id='1'"));
?>
   <article class="col2 pad_left1">
				<h2><?=$k['baslik']?></h2>
				<div class="wrapper">
					<?=$k['aciklama']?>
				</div>
				
       		</article>

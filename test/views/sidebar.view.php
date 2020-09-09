<div class="sidebar-wrapper scrollbar scrollbar-inner">
	<div class="sidebar-content">
		<div class="user">
			<div class="avatar-sm float-left mr-2">
				<img src="resources/assets/images/administrator.jpg" alt="..." class="avatar-img rounded-circle" style="border: 1px solid #555;">
			</div>
			<div class="info">
				<a><span>
					<?= $data["login"]->nama ?>
					<span class="user-level"><?= $data["login"]->role ?></span>
				</span></a>
			</div>
		</div>
		<ul class="nav nav-primary">
			<li class="nav-item <?php if($page=='' || $page=='home') echo 'active'?>">
				<a href="<?php echo PATH; ?>">
					<i class="fas fa-home"></i>
					<p>Beranda</p>
				</a>
			</li>
			<li class="nav-section">
				<span class="sidebar-mini-icon">
					<i class="fa fa-ellipsis-h"></i>
				</span>
				<h4 class="text-section">Menu</h4>
			</li>
			<li class="nav-item">
				<a data-toggle="collapse" href="#base">
					<i class="fas fa-layer-group"></i>
					<p>Base</p>
					<span class="caret"></span>
				</a>
				<div class="collapse" id="base">
					<ul class="nav nav-collapse">
						<li>
							<a href="components/avatars.html">
								<span class="sub-item">Avatars</span>
							</a>
						</li>
						<li>
							<a href="components/buttons.html">
								<span class="sub-item">Buttons</span>
							</a>
						</li>
						<li>
							<a href="components/gridsystem.html">
								<span class="sub-item">Grid System</span>
							</a>
						</li>
						<li>
							<a href="components/panels.html">
								<span class="sub-item">Panels</span>
							</a>
						</li>
						<li>
							<a href="components/notifications.html">
								<span class="sub-item">Notifications</span>
							</a>
						</li>
						<li>
							<a href="components/sweetalert.html">
								<span class="sub-item">Sweet Alert</span>
							</a>
						</li>
						<li>
							<a href="components/font-awesome-icons.html">
								<span class="sub-item">Font Awesome Icons</span>
							</a>
						</li>
						<li>
							<a href="components/simple-line-icons.html">
								<span class="sub-item">Simple Line Icons</span>
							</a>
						</li>
						<li>
							<a href="components/flaticons.html">
								<span class="sub-item">Flaticons</span>
							</a>
						</li>
						<li>
							<a href="components/typography.html">
								<span class="sub-item">Typography</span>
							</a>
						</li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
</div>
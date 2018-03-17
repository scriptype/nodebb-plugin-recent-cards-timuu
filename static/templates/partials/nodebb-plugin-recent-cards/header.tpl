<!-- Recent Cards plugin -->
<!-- IF topics.length -->
<div class="recent-cards-plugin row preventSlideOut">
	<ul class="categories">
		<p>{recentCards.title}</p>
	</ul>

	<ul class="row recent-cards carousel-mode" itemscope itemtype="http://www.schema.org/ItemList">
		<!-- BEGIN topics -->
		<li class="recent-cards-item <!-- IF topics.category.class -->{topics.category.class}<!-- ELSE -->col-md-3 col-sm-6 col-xs-12<!-- ENDIF topics.category.class --> category-item" data-cid="{topics.category.cid}" data-numRecentReplies="{topics.category.numRecentReplies}" style="text-shadow:{recentCards.textShadow};">
			<meta itemprop="name" content="{topics.category.name}">

				<div class="recent-card">
					<div class="bg"></div>
          <a
            href="{config.relative_path}/topic/{topics.slug}"
            itemprop="url"
            class="recent-card-link"
          ></a>
					<div class="topic-info">
						<h2 class="description">
              <span style="background-image: url(/assets/uploads/category/category-{topics.category.cid}.jpg), url(/assets/uploads/system/site-logo.png)" class="category-icon"></span>
              {topics.category.name}
            </h2>
						<h4 class="h4 topic-info-title" itemprop="description">{topics.title}</h4>
					</div>
          <div class="topic-card-author">
            <a href={config.relative_path}/user/{topics.user.userslug}"">
              <!-- IF ../user.picture -->
              <span
                class="user-img topic-card-author-avatar"
                title="{topics.user.username}"
                style="background-image: url({topics.user.picture});"></span>
              <!-- ELSE -->
              <span
                class="user-icon topic-card-author-avatar"
                title="{topics.user.username}"
                style="background-color: {topics.user.icon:bgColor};">{topics.user.icon:text}</span>
              <!-- ENDIF ../user.picture -->
              <span class="topic-card-author-text">by <strong>{topics.user.username}</strong></span>
            </a>
          </div>
				</div>
		</li>
		<!-- END topics -->
	</ul>
	<br />
</div>
<!-- ENDIF topics.length -->

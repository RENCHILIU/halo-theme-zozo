<#include "layouts/partials/head.ftl">
<@head title="tag：${tag.name} · ${blog_title!}" canonical="${tag.fullPath!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="list_with_title">
            <div class="listing_title">tag：${tag.name}</div>
            <div class="listing">
                <#list posts.content as post>
                <div class="listing_item">
                    <div class="listing_post">
                        <a href="${post.fullPath!}">${post.title!}</a>
                        <div class="post_time"><span class="date">${post.createTime?string('yyyy-MM-dd')}</span></div>
                    </div>
                </div>
                </#list>
            </div>
        </div>
        <div class="pagination">
            <#if posts.totalPages gt 1>
                <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
                    <#if pagination.hasPrev>
                        <a href="${pagination.prevPageFullPath!}" class="pre">
                            Last Page
                        </a>
                    </#if>
                    <#if pagination.hasNext>
                        <a href="${pagination.nextPageFullPath!}" class="next">
                            More
                        </a>
                    </#if>
                </@paginationTag>
            </#if>
        </div>
    </div>
    <a id="back_to_top" href="#" class="back_to_top"><span>△</span></a>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>

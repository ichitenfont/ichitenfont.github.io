---
# 不要使用這個文件複製新的標籤頁！
# 不要使用這個文件複製新的標籤頁！
# 不要使用這個文件複製新的標籤頁！
title: 標籤：草稿

draft: true
hidden: true
custom_css:
- char
- search
---

<h1 class="theme-underline">標籤：草稿</h1>

<p style="color:red; font-size: 2em;">
    本頁面列出的文章屬於草稿性質，可能仍未完成，或是 I.字坊仍未公開之，切勿引用參考這些文章。
    <br>
    請返回<a href=".">所有標籤</a>。
</p>

<div id="results">
    {% for post in site.posts %}
        {% if post.hidden or post.draft %}
            <div class="search-record">
                <h2 style="margin-block: 0.2em;"><a href="{{ post.url }}">{{ post.title }}</a></h2>
                <span class="date">{{ post.date | date: "%Y 年 %-m 月 %-d 日" }}</span>
                <div class="search-details">
                    {{ post.excerpt }}
                </div>
            </div>
        {% endif %}
    {% endfor %}
</div>

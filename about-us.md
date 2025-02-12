---
title: 關於我們
permalink: /about-us
---

{% comment %} 下面的 .theme-underline 使用 CSS 添加點橫的下劃綫 {% endcomment %}
{: .theme-underline}
# 關於我們

I.字坊（中文：一點字坊；英文：I.Font Project；帳號名：@ichitenfont；[微軟字型廠商ID](https://learn.microsoft.com/en-us/typography/vendors/)：`1dot`）成立於 2018 年，屬學術研究和字體設計組織。目前本坊注重於以漢字字理繩準字形，同時兼顧美觀和約定俗成。

本坊整理之「傳承字形推薦形體」可用於各種印刷字型，由《傳承字形標準化文件》系列文檔制定。

## 引用

若需在學術文檔內引用 I.字坊所編撰之《傳承字形標準化文件》，可參考以下 [MLA 格式引用](https://www.ilc.cuhk.edu.hk/Chinese/APAMLA/MLA/MLAliterature.aspx)：

> I.字坊編輯部：《傳承字形{{ site.data.documents.recommended-glyphs.name }}》（{{ site.data.documents.recommended-glyphs.latest-version }} 版），《傳承字形標準化文件》網站，I.字坊，{{ site.data.documents.recommended-glyphs.latest-release-date | date: "%Y 年 %-m 月 %-d 日"}}， {{ site.data.documents.recommended-glyphs.url }}，{{ site.time | date: "%Y 年 %-m 月 %-d 日"}}讀取。

或 [APA 格式引用](https://www.ilc.cuhk.edu.hk/Chinese/APAMLA/APA/APAliterature.aspx)：

> I.字坊編輯部（{{ site.data.documents.recommended-glyphs.latest-release-date | date: "%Y"}}）。《傳承字形{{ site.data.documents.recommended-glyphs.name }}》（{{ site.data.documents.recommended-glyphs.latest-version }} 版），《傳承字形標準化文件》網站。I.字坊。取自 {{ site.data.documents.recommended-glyphs.url }}

## 恢復網頁字型

本網站使用之[「一點明體」](https://github.com/ichitenfont/I.Ming)字體系列遵從「[IPA開放字型授權協議 1.0版](https://github.com/ichitenfont/I.Ming/blob/master/LICENSE_CHI.md)（[IPA Open Font License v1.0](https://github.com/ichitenfont/I.Ming/blob/master/LICENSE.md#ipa-font-license-agreement-v10)，[IPAフォントライセンスv1.0](https://github.com/ichitenfont/I.Ming/blob/master/LICENSE.md)）」之規定。

根據「IPA開放字型授權協議 1.0版」對衍生字型的限制條款，本頁面在此提供恢復 IPA 原始授權字型以符合授權協議條款。關於「IPA開放字型授權協議 1.0版」之條款及疑難解答，請參閱 [https://moji.or.jp/ipafont/license](https://moji.or.jp/ipafont/license) 或 [https://moji.or.jp/ipafont/faq](https://moji.or.jp/ipafont/faq)。

點擊以下「恢復原始授權字型」後，本網頁將會優先調用使用者本地的 IPA 字型文件；使用者應從 [http://moji.or.jp/ipafont/ipafontdownload](http://moji.or.jp/ipafont/ipafontdownload) 下載安裝原始的 IPAmj Mincho 字型。使用者也可通過瀏覽器設置或插件讓本站使用 IPA 原始授權字型。

<a style="cursor: pointer;color: var(--secondary-colour);border: 2px solid var(--secondary-colour);padding: 0.3em 0.5em;" onclick="useOriginalIPA('N')">繼續使用「一點明體」</a>&nbsp;&nbsp;
<a style="cursor: pointer;color: var(--secondary-colour);padding: 0.3em 0.5em;" onclick="useOriginalIPA('Y')">恢復原始授權字型</a>

請注意，選擇「恢復原始授權字型」後，本站將不再使用本坊所匯整的[「傳承字形推薦形體」](/recommended-glyphs)，部分頁面將會顯示錯誤字形。該設置將在瀏覽器重啓後重設回使用本坊推薦之「一點明體」；您也可以點擊「繼續使用『一點明體』」恢復使用原先字型。

<script>
const useOriginalIPA = (opt) => {
    sessionStorage.setItem("useOriginalIPA", opt);
    location.reload();
}
</script>
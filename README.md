# 🏀《第二十一號的黎明》
## Dawn of the 21st: From Bench Warmer to Starting Five

[![Pipeline](https://img.shields.io/badge/Pipeline-Short--Video--AI-ffb703?style=for-the-badge&logo=fastapi)](https://github.com/)
[![Generator](https://img.shields.io/badge/Video%20Model-MiniMax--H3%20(ref2va)-06d6a0?style=for-the-badge)](https://huggingface.co/Comfy-Org/MiniMax-H3)
[![Resolution](https://img.shields.io/badge/Format-9%3A16%20(1080%C3%971920)-118ab2?style=for-the-badge)](https://github.com/)
[![Audio](https://img.shields.io/badge/Audio-Native%20Stereo%20%2B%20SFX-e63946?style=for-the-badge)](https://github.com/)

> **「那一年的全場歡呼……我連一滴汗，都沒有資格流。但我不是來這裡當一輩子觀眾的！」**  
> 一部專為直式短影音（9:16 Vertical Video）打造的電影級熱血運動動畫短片生產管線。本專案包含完整的**角色一致性視覺錨點庫**、**7 鏡頭原畫分鏡表**、**ComfyUI MiniMax H3 多模態生成 SOP** 與**互動式預覽總控台**。

---

## 📑 目錄 (Table of Contents)
- [🌟 互動式網頁展示入口 (Web Portals)](#-互動式網頁展示入口-web-portals)
- [👥 核心角色視覺錨點庫 (Character Anchors)](#-核心角色視覺錨點庫-character-anchors)
- [🎬 7 鏡頭電影級分鏡時間軸 (Storyboard Timeline)](#-7-鏡頭電影級分鏡時間軸-storyboard-timeline)
- [⚡ ComfyUI MiniMax H3 視訊生成 SOP (方案一標準)](#-comfyui-minimax-h3-視訊生成-sop-方案一標準)
- [📂 專案檔案結構 (Project Structure)](#-專案檔案結構-project-structure)
- [🚀 快速上手與部署 (Quick Start)](#-快速上手與部署-quick-start)

---

## 🌟 互動式網頁展示入口 (Web Portals)

專案內建三個專用獨立 HTML 交互介面，開箱即用支援 GitHub Pages 部署：

| 入口頁面 | 檔案路徑 | 核心功能介紹 |
| :--- | :--- | :--- |
| 🎛️ **專案主總控台** | [`index.html`](index.html) | 全鏡頭分鏡展示、中英文 Prompt 即時複製、角色庫導覽、管線規格參數總覽。 |
| 🎬 **分鏡聯絡總覽表** | [`storyboard_images/contact_sheet.html`](storyboard_images/contact_sheet.html) | 7 鏡頭高畫質原畫聯絡表、時碼分配、一鍵打包複製全部分鏡提示詞。 |
| 👥 **全角色設定圖鑑** | [`character_gallery.html`](character_gallery.html) | 先發五人組與宿敵選手卡、外觀特徵定義、防崩生成 Prompt Anchor。 |
| 🌅 **Shot 07 獨立大圖** | [`shot_07_preview.html`](shot_07_preview.html) | 榮耀終幕「破曉晨光踏入中圈跳球區」高畫質視覺展示。 |

---

## 👥 核心角色視覺錨點庫 (Character Anchors)

為保證跨鏡頭生圖生片**不換臉、不跑色、球衣裝備 100% 一致**，本專案建立嚴格的 Visual Anchor 提示詞體系：

### 1. 陸子軒 (Lu Zi-xuan) · #21 SF (小前鋒 / 主角)
* **定位**：球隊飲水機守護神 ➔ 逆襲為先發防守大鎖。
* **外觀規格**：20 歲東亞男性，碎蓋微亂黑髮，精實肌肉線條；黑底金邊紅線條 **21 號** 戰袍，左前臂黑色護腕，雙腿黑色高彈性加壓膝褲，經典紅白黑高筒球鞋。
* **AI 提示詞錨點**：
  ```text
  20yo handsome athletic East Asian male basketball player Lu Zi-xuan, messy black layered hair, muscular build, wearing black basketball jersey #21 with red and gold trim, black compression knee tights, black left wristband, red-black-white high-top sneakers
  ```

### 2. 高振峰 (Coach Gao Zhen-feng) · 總教練
* **定位**：前國手鐵血控衛，眼神如鷹隼般銳利，信奉極限防守哲學。
* **外觀規格**：40 歲成熟東亞男性，俐落寸頭短鬍茬；黑底紅金撞色運動夾克，胸前掛金屬銀色裁判口哨，手持白色戰術白板。
* **AI 提示詞錨點**：
  ```text
  40yo mature East Asian male basketball coach Gao Zhen-feng, neat short black hair, clean facial stubble, sharp observant falcon eyes, wearing black track jacket with bold red and gold shoulder panels, silver whistle on chest, holding tactical whiteboard
  ```

### 3. 先發隊友與宿敵
* **陳浩天 (#4 PG 隊長)**：乾淨短寸頭帶斷眉，黑底紅金 4 號球衣，白色球鞋，球隊冷酷大腦。
* **林敬 (#7 SG 神射手)**：偏瘦身形單眼皮，黑底紅金 7 號球衣，雙臂套黑色射手袖。
* **趙磊 (#15 C 中鋒)**：203cm 魁梧巨漢，粗眉寸頭，黑底紅金 15 號球衣，厚重加壓護膝。
* **雷震 (#0 SG 烈風隊宿敵王牌)**：暗銀灰挑染刺蝟頭，白紫金 0 號球衣，螢光黃護臂。

---

## 🎬 7 鏡頭電影級分鏡時間軸 (Storyboard Timeline)

全片時長 60 秒，採黃金短影音起承轉合節奏：

```mermaid
graph LR
    S1[Shot 01<br/>冷板凳無汗戰袍] --> S2[Shot 02<br/>凌晨五點半晨霧] --> S3[Shot 03<br/>教練棒喝血痕] 
    --> S4[Shot 04<br/>死亡纏繞切球] --> S5[Shot 05<br/>魚躍撞翻技術台] --> S6[Shot 06<br/>先發白板名單] --> S7[Shot 07<br/>晨光中圈跳球]
    style S1 fill:#1e293b,stroke:#ffb703,stroke-width:2px,color:#fff
    style S5 fill:#991b1b,stroke:#f43f5e,stroke-width:3px,color:#fff
    style S7 fill:#b45309,stroke:#fbbf24,stroke-width:3px,color:#fff
```

### 分鏡清單一覽：
1. **Shot 01【開場 Hook】冷板凳最邊緣的無汗戰袍 (00:00 - 00:05)**
   * *台詞*：「那一年的全場歡呼……我連一滴汗，都沒有資格流。」
   * *運鏡*：特寫微距緩慢拉遠，冷板凳陰影中的乾淨球衣對比遠處金色彩帶狂歡。
2. **Shot 02【孤獨淬煉】凌晨五點半的晨霧滑步 (00:05 - 00:12)**
   * *台詞*：「但我不是來這裡……當一輩子觀眾的！」
   * *運鏡*：貼地低角度快速橫向跟鏡，木地板劇烈滑步摩擦，口中吐出白霧喘息。
3. **Shot 03【鐵血棒喝】高教練的鷹隼凝視與血痕 (00:12 - 00:22)**
   * *台詞*：「如果你不能為這顆球把命拼在地板上，就永遠滾回板凳席！」
   * *運鏡*：中景推鏡，高教練手持戰術板嚴厲指向球員滲血的膝蓋繃帶。
4. **Shot 04【防守覺醒】瘋狗式死亡纏繞與精準切球 (00:22 - 00:36)**
   * *台詞*：「投籃會失手，但把對手咬死的防守，永遠不會背叛！」
   * *運鏡*：高速甩鏡動作特寫，壓低重心封堵突破，迅猛伸手精準切球動態殘影。
5. **Shot 05【生死撲救・全劇最高潮】魚躍平飛出界撞翻技術台 (00:36 - 00:48)**
   * *台詞*：「橫身救球！不可思議！壓哨絕殺——！！」
   * *運鏡*：120 幀慢動作俯衝，橫身與地面平行飛出界外，右手將球撈回，撞翻鐵椅、筆電與水瓶飛散。
6. **Shot 06【先發加冕】白板上黑筆寫下的「#21 陸子軒」 (00:48 - 00:54)**
   * *台詞*：「陸子軒，明天開場跳球，去把你的球場拿下來！」
   * *運鏡*：微距上搖，白板黑筆書寫 SF #21，鏡頭轉向後排眼眶泛紅握拳的子軒與隊友拍桌歡呼。
7. **Shot 07【榮耀終幕】破曉晨光傾瀉踏入中圈跳球區 (00:54 - 01:00)**
   * *台詞*：「從板凳席到球場中央只有十公尺……這條路，我走了整整三百六十五個黎明。」
   * *運鏡*：過肩緩慢推進，汗濕 21 號球衣背影，金色晨曦光柱傾瀉，邁步踏入跳球圈。

---

## ⚡ ComfyUI MiniMax H3 視訊生成 SOP (方案一標準)

本專案提供專為 **MiniMax H3 Reference-to-Video (`MiniMaxH3ReferenceToVideo`)** 工作流打造的生成標準，徹底解決 AI 視訊生成中常見的「外星語 / 模擬市民語 / 倒放亂碼」問題：

### 💡 核心原因與防崩策略
* **為什麼台詞會變外星語？** MiniMax H3 是**擴散音訊模型**而非傳統 TTS，若中英文混雜或台詞過長，音訊解碼器無法在 4～5 秒內咬字，會將音素壓扁黏糊退化為亂碼。
* **方案一黃金規範**：

```text
1. 圖片標籤精確綁定：
   - Node 137 (ref_image_0) ➔ <Picture 1>：綁定該鏡頭的分鏡構圖/首幀圖
   - Node 139 (ref_image_1) ➔ <Picture 2>：綁定角色視覺錨點圖 (如陸子軒 21 號)
   - Node 147 (ref_image_2) ➔ <Picture 3>：綁定配角/對手圖 (若無則留空)

2. 純中文撰寫：畫面動態與音訊完全使用中文，杜絕英文鏡頭術語混雜干擾語音音素。

3. 台詞字數限制 (4～8 字)：嚴格精簡台詞為短爆發句 (如：「球在哪命就在哪！」)，保證咬字清晰。

4. 標準音訊句型語法：
   聲音：一名[性別/角色]用中文[情緒]大喊："[4~8字台詞]！" 伴隨[物理撞擊音效]與[球館氛圍音]。

5. 工作流參數安全區：
   - Node 132 (Float Duration)：設定為 4 或 5 秒 (切勿設為 60 秒以防顯存 OOM)
   - Node 146 (Enable Lightning LoRA)：設為 False (使用標準 20 步採樣，避免 4 步 Turbo 破音)
```

### 📝 全 7 鏡頭 MiniMax H3 專用提詞全集（直貼工作流 Node 138）

每一個分鏡均完整包含**【畫面動態與 Picture 標籤綁定】**與**【短爆發台詞與音效】**：

#### 【Shot 01】冷板凳最邊緣的無汗戰袍 (00:00 - 00:05)
* **節點綁定**：Node 137 (`<Picture 1>`) = Shot 01 分鏡圖 ｜ Node 139 (`<Picture 2>`) = 陸子軒 21 號角色圖
```text
電影級熱血運動動漫，9:16直式構圖。
參考 <Picture 1> 的構圖與光影，<Picture 2> 的 21 號球員陸子軒孤獨坐在替補席最深處的冷藍陰影中，雙手捏緊壓扁的寶特瓶塞入網袋，身上球衣一塵不染，背後是遠處隊友在金色彩帶下的慶祝虛焦。

聲音：一名年輕男子用中文低沉自語："連一滴汗，都沒流。" 伴隨塑膠寶特瓶被捏扁的脆裂聲與遠處微弱的球館歡呼迴音。
```

#### 【Shot 02】凌晨五點半的晨霧滑步 (00:05 - 00:12)
* **節點綁定**：Node 137 (`<Picture 1>`) = Shot 02 分鏡圖 ｜ Node 139 (`<Picture 2>`) = 陸子軒 21 號角色圖
```text
電影級熱血運動動漫，9:16直式構圖。
參考 <Picture 1> 的構圖，<Picture 2> 的 21 號球員陸子軒在清晨五點半冷藍晨霧瀰漫的球館中，以極低重心在反光木地板上進行極限防守滑步，汗水滴落地板，口中吐出白霧。

聲音：一名年輕男子用中文咬牙狂吼："絕不當一輩子觀眾！" 伴隨球鞋橡膠在木地板上的尖銳抓地摩擦聲與劇烈喘息聲。
```

#### 【Shot 03】高教練的鷹隼凝視與血痕 (00:12 - 00:22)
* **節點綁定**：Node 137 (`<Picture 1>`) = Shot 03 分鏡圖 ｜ Node 139 (`<Picture 2>`) = 高振峰教練 ｜ Node 147 (`<Picture 3>`) = 陸子軒 21 號
```text
電影級熱血運動動漫，9:16直式構圖。
參考 <Picture 1> 的構圖，<Picture 2> 的高教練身穿黑底紅金夾克、胸前掛銀哨手持戰術板，眼神如獵鷹般銳利嚴苛，手指嚴厲指向摔坐在木地板上的 <Picture 3> 膝蓋滲血繃帶，籃球在旁滾動。

聲音：一名成熟教練用中文威嚴怒斥："把命拼在地板上！" 伴隨戰術板重重敲擊的脆響與金屬口哨晃動聲。
```

#### 【Shot 04】瘋狗防守與閃電切球 (00:22 - 00:36)
* **節點綁定**：Node 137 (`<Picture 1>`) = Shot 04 分鏡圖 ｜ Node 139 (`<Picture 2>`) = 陸子軒 21 號 ｜ Node 147 (`<Picture 3>`) = 隊長陳浩天 4 號
```text
電影級熱血運動動漫，9:16直式構圖。
參考 <Picture 1> 的構圖，<Picture 2> 的 21 號球員陸子軒壓低重心死亡纏繞防守 <Picture 3> 的隊長陳浩天，閃電預判前撲，長臂以極限速度精準切球挑飛籃球，動態殘影與汗珠炸開。

聲音：一名年輕男子用中文野性大喊："球給我留下！" 伴隨手掌乾脆拍擊籃球的清脆切球聲與球鞋急停煞車摩擦聲。
```

#### 【Shot 05】魚躍平飛出界撞翻技術台 (00:36 - 00:48)
* **節點綁定**：Node 137 (`<Picture 1>`) = Shot 05 分鏡圖 ｜ Node 139 (`<Picture 2>`) = 陸子軒 21 號
```text
電影級熱血運動動漫，9:16直式構圖。
參考 <Picture 1> 的構圖與動作，<Picture 2> 的 21 號球員陸子軒在邊線整個人橫身平飛出界撲救，右手將籃球死死撈回場內，隨後身體猛烈撞翻技術台與折疊鐵椅，水瓶與紙張飛散。

聲音：一名年輕男子用中文憤怒大喊："球在哪裡，命就在哪裡！" 伴隨金屬折疊椅被撞翻的劇烈金屬砸地巨響與球場球鞋抓地摩擦聲。
```

#### 【Shot 06】白板寫下 SF #21 陸子軒 (00:48 - 00:54)
* **節點綁定**：Node 137 (`<Picture 1>`) = Shot 06 分鏡圖 ｜ Node 139 (`<Picture 2>`) = 高振峰教練 ｜ Node 147 (`<Picture 3>`) = 陸子軒 21 號
```text
電影級熱血運動動漫，9:16直式構圖。
參考 <Picture 1> 的構圖，晨光透過更衣室百葉窗，<Picture 2> 的高教練用黑筆在白板重重寫下「#21 陸子軒 (SF)」，鏡頭轉向後排坐在長凳上的 <Picture 3> 陸子軒眼眶含淚泛紅、雙手握拳，隊友圍繞激動拍肩。

聲音：一名教練用中文沉穩宣布："先發，第二十一號！" 伴隨麥克筆劃在白板上的摩擦聲與隊友熱烈的拍桌歡呼聲。
```

#### 【Shot 07】踏向中圈跳球區的黎明 (00:54 - 01:00)
* **節點綁定**：Node 137 (`<Picture 1>`) = Shot 07 分鏡圖 ｜ Node 139 (`<Picture 2>`) = 陸子軒 21 號
```text
電影級熱血運動動漫，9:16直式構圖。
參考 <Picture 1> 的構圖，體育館天窗射入萬道破曉金色晨光，神聖光柱籠罩 <Picture 2> 陸子軒汗濕的 21 號球衣背影，他繫緊左手黑色護腕，昂首闊步邁向球場中央跳球區。

聲音：一名年輕男子用中文堅定低語："走向破曉！" 伴隨沉穩有力的球鞋踏地聲與球館空靈震撼的黎明迴響。
```

---

## 📂 專案檔案結構 (Project Structure)

```
basketball-starter-21/
├── README.md                      # 專案主說明文件 (本文件)
├── AGENTS.md                      # 專案 Agent 專用規範與知識庫索引
├── characters.md                  # 固定角色陣容與視覺錨點庫
├── manifest.json                  # 短片時間軸、音訊軌道、字幕元數據
├── subtitles.srt                  # 完整 60 秒旁白中文字幕軌
├── index.html                     # 🎛️ 專案主總控台 (Master Web Dashboard)
├── character_gallery.html         # 👥 全角色設定圖鑑網頁
├── shot_07_preview.html           # 🌅 Shot 07 獨立預覽頁面
├── .agents/                       # Agent 專用規則目錄
│   └── rules/
│       └── storyboard_and_minimax_workflow.md # 分鏡圖與 MiniMax H3 專用 SOP
├── images/                        # 高畫質原畫圖庫
│   ├── char_*.jpg                 # 各角色 Model Sheet
│   └── story_shot_01~07_*.jpg     # 7 大分鏡高畫質原畫實體圖
├── storyboard_images/             # 分鏡專區
│   ├── contact_sheet.html         # 🎬 互動式分鏡聯絡總覽表
│   └── storyboard_manifest.json   # 分鏡詳細提示詞元數據
└── runninghub_minimax_pack/       # MiniMax-H3 任務配置包
    ├── index.html                 # 任務生成狀態展示頁
    └── minimax_h3_tasks.json      # 批次任務配置檔
```

---

## 🚀 快速上手與部署 (Quick Start)

### 1. 本地檢視互動網頁
直接使用任何瀏覽器開啟 [`index.html`](index.html) 或 [`storyboard_images/contact_sheet.html`](storyboard_images/contact_sheet.html)，即可使用所有互動式總控功能（包含一鍵複製分鏡 Prompt）。

### 2. 部署到 GitHub Pages
1. 將專案推送到 GitHub 倉庫。
2. 進入倉庫 **Settings ➔ Pages**。
3. 在 **Source** 選擇 `Deploy from a branch`，Branch 選擇 `main` / `root`。
4. 儲存後即可獲得線上展示網址（專案已內建 `.nojekyll` 防靜態資源攔截）。

---

## 📄 版權與授權 (License)

本專案為短動態 AI 影音生產實驗管線，視覺圖像與分鏡由 AI 生成製作。歡迎自由參考提示詞架構與工作流 SOP。  
🏀 **Ball is Life. 球在哪裡，命就在哪裡！**

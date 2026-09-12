---
name: minimax-storyboard-pipeline
description: Generate 9:16 anime storyboard image prompts and standardized MiniMax H3 (ref2va) video prompts with node mapping and native audio dialogue. Activate whenever the user asks to generate storyboard images or prompts for MiniMax.
---

# MiniMax H3 & Storyboard Generation Skill

This skill defines the mandatory standard for producing visual storyboard prompts and ComfyUI MiniMax H3 Reference-to-Video prompts for the project.

## When to Activate
Whenever the user asks:
- 「幫我產出分鏡圖及 minimax 用的提詞」
- 「產出分鏡」/ 「生成提詞」
- Any task requesting storyboard keyframe prompts or MiniMax video generation prompts.

## Mandatory 3-Element Output Standard

Every shot output MUST contain the following three elements:

### 1. 🖼️ 分鏡首幀生圖 Prompt (Midjourney / SD / 影像生成專用)
- **Format**: Vertical 9:16 (`--ar 9:16`).
- **Aesthetic**: Cinematic sports anime aesthetic, 35mm film dynamic lighting, high-contrast rim lighting, 8k.
- **Character Consistency**: Must embed fixed visual anchors from `characters.md` (e.g. Lu Zi-xuan #21 black jersey with red-gold trim, knee tights, wristband, Bred sneakers).

### 2. 🔌 ComfyUI 節點連接引導 (Node Connection Guide)
Explicitly declare picture slot mapping:
- **Node 137 (`<Picture 1>`)** ➔ Current Shot's storyboard keyframe / composition reference image (`story_shot_XX.jpg`).
- **Node 139 (`<Picture 2>`)** ➔ Core Character visual anchor image (e.g., Lu Zi-xuan #21 or Coach Gao).
- **Node 147 (`<Picture 3>`)** ➔ Secondary Character / Opponent image (e.g., Captain Chen Hao-tian #4 or Lei Zhen #0; if none, specify "留空").

### 3. 🎬 MiniMax H3 專用完整提詞 (方案一標準 · 直貼 Node 138)
Strict adherence to Option 1 guidelines:
- **Visual description**: Pure Chinese description incorporating `<Picture 1>`, `<Picture 2>`, `<Picture 3>` tags. Zero English mixed in visual action to avoid phoneme contamination.
- **Audio instruction**:
  - Concise dialogue strictly limited to **4 to 8 Chinese characters** (prevents compressed/mumbled "alien language" / Simlish in 4-5s duration).
  - Format: `聲音：一名[角色/性別]用中文[情緒]大喊："[4~8字短台詞]" 伴隨[具體物理撞擊/球鞋摩擦音效]與[球館氛圍音]。`
- **Workflow Safety Parameters**:
  - Duration (Node 132): **4 to 5 seconds** (prevents VRAM OOM).
  - Sampling: 20 steps, Lightning LoRA disabled (Node 146 = False, scheduler beta or normal) to preserve audio fidelity.

## Standard Output Template

```markdown
### 【Cut XX】[分鏡名稱] (建議時長：4~5 秒)

#### 1. 🖼️ 分鏡首幀生圖 Prompt（Midjourney / SD / 生圖用）
`Cinematic sports anime, 9:16 vertical frame, [運鏡景別], [角色英文錨點], [動作動態姿態], dramatic stadium lighting, 8k --ar 9:16`

#### 2. 🔌 ComfyUI 節點連接配置
* Node 137 (<Picture 1>) ➔ [分鏡首幀圖 / 動作構圖]
* Node 139 (<Picture 2>) ➔ [核心主角圖，如：陸子軒 21 號]
* Node 147 (<Picture 3>) ➔ [對手或副角圖，若無則填「留空」]

#### 3. 🎬 MiniMax H3 專用完整提詞（方案一標準 · 直貼 Node 138）
```text
電影級熱血運動動漫，9:16直式構圖。
參考 <Picture 1> 的構圖與動作，<Picture 2> 的 [角色名與特徵] [完整畫面動態與細節]...

聲音：一名[角色]用中文[情緒]大喊："[4~8字短爆發台詞]！" 伴隨[物理撞擊/球鞋摩擦音效]與[球館氛圍音]。
\```
```

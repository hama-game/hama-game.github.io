<!DOCTYPE html>
<html lang="ku" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>جیهانی یارییەکانی حەمە</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Naskh+Arabic:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        /* ── STYLES FOR MAIN MENU ── */
        :root {
            --red: #e63946;
            --red-light: #ff6b6b;
            --red-dark: #9b1a25;
            --blue: #1d6fa4;
            --blue-light: #4da6d8;
            --blue-dark: #0d3f63;
            --gold: #f5c842;
            --cream: #fdf6ec;
            --dark: #12121e;
        }

        body {
            font-family: 'Noto Naskh Arabic', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: var(--dark);
            color: #fff;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            box-sizing: border-box;
        }

        .menu-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
            background: radial-gradient(circle, #1a1a3a 0%, #0d0d1a 100%);
            text-align: center;
        }

        .menu-title {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 10px;
            background: linear-gradient(135deg, #ff416c, #f5c842, #00fff0);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            filter: drop-shadow(0 2px 8px rgba(255,255,255,0.1));
        }

        .menu-subtitle {
            color: rgba(255, 255, 255, 0.6);
            margin-bottom: 40px;
            font-size: 16px;
        }

        .menu-buttons {
            display: flex;
            gap: 25px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .menu-btn {
            background: linear-gradient(145deg, #1f1f3a, #2a2a52);
            border: 2px solid rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 30px;
            width: 240px;
            cursor: pointer;
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            box-shadow: 0 10px 20px rgba(0,0,0,0.3);
            text-align: center;
            font-family: inherit;
            color: inherit;
            user-select: none;
            -webkit-user-select: none;
        }

        .menu-btn:hover {
            transform: translateY(-10px);
            border-color: #00fff0;
            box-shadow: 0 15px 30px rgba(0, 255, 240, 0.2);
        }

        .menu-btn .icon {
            font-size: 50px;
            margin-bottom: 15px;
            display: block;
        }

        .menu-btn h3 {
            margin: 0 0 8px 0;
            font-size: 20px;
            color: #fff;
        }

        .menu-btn p {
            margin: 0;
            font-size: 13px;
            color: rgba(255,255,255,0.5);
        }

        .home-btn {
            position: absolute;
            top: 15px;
            right: 15px;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255,255,255,0.2);
            color: white;
            padding: 8px 16px;
            border-radius: 50px;
            cursor: pointer;
            font-size: 14px;
            z-index: 9999;
            font-family: 'Noto Naskh Arabic', serif;
            transition: 0.2s;
        }
        .home-btn:hover {
            background: white;
            color: black;
        }

        /* ── SECTIONS TOGGLE ── */
        .game-section {
            display: none;
            position: relative;
            min-height: 100vh;
            box-sizing: border-box;
            width: 100%;
        }

        /* ── STYLE COPIES FOR GAME 1 ── */
        #game1-root {
            background: linear-gradient(135deg, #1a1a2e, #16213e);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            overflow-x: hidden;
        }
        #game1-root h1 {
            color: #e94560;
            text-shadow: 0 0 10px rgba(233, 69, 96, 0.5);
            margin-bottom: 10px;
            font-size: 28px;
            text-align: center;
        }
        .timer-container1 {
            font-size: 24px;
            font-weight: bold;
            color: #00fff0;
            background: rgba(0, 255, 240, 0.1);
            padding: 8px 25px;
            border-radius: 20px;
            border: 2px solid #00fff0;
            margin-bottom: 20px;
            box-shadow: 0 0 15px rgba(0, 255, 240, 0.3);
            min-width: 80px;
            text-align: center;
        }
        .timer-container1.danger {
            color: #ff416c;
            border-color: #ff416c;
            background: rgba(255, 65, 108, 0.1);
            animation: pulse 1s infinite;
        }
        @keyframes pulse { 0% { opacity: 1; } 50% { opacity: 0.5; } 100% { opacity: 1; } }
        .btn-random {
            background: linear-gradient(45deg, #ff416c, #ff4b2b);
            color: white;
            border: none;
            padding: 12px 35px;
            font-size: 20px;
            font-weight: bold;
            border-radius: 50px;
            cursor: pointer;
            box-shadow: 0 5px 15px rgba(255, 75, 43, 0.4);
            transition: transform 0.2s, box-shadow 0.2s;
            margin-bottom: 30px;
            z-index: 10;
        }
        .btn-random:hover { transform: scale(1.05); box-shadow: 0 8px 25px rgba(255, 75, 43, 0.6); }
        .btn-random:active { transform: scale(0.95); }
        .card-container { perspective: 1000px; width: 280px; height: 400px; max-width: 90vw; }
        .card1 { width: 100%; height: 100%; position: relative; transform-style: preserve-3d; transition: transform 0.6s cubic-bezier(0.175, 0.885, 0.32, 1.275); cursor: pointer; }
        .card1.reveal { transform: rotateY(180deg); }
        .card1.shuffle { animation: shake 0.4s ease-in-out; }
        @keyframes shake {
            0% { transform: translate(0, 0) rotate(0deg); }
            25% { transform: translate(-10px, 5px) rotate(-5deg); }
            50% { transform: translate(10px, -5px) rotate(5deg); }
            75% { transform: translate(-5px, -5px) rotate(-2deg); }
            100% { transform: translate(0, 0) rotate(0deg); }
        }
        .card-face { position: absolute; width: 100%; height: 100%; backface-visibility: hidden; -webkit-backface-visibility: hidden; border-radius: 20px; border: 4px solid #e94560; box-shadow: 0 10px 30px rgba(0,0,0,0.5); display: flex; flex-direction: column; align-items: center; justify-content: center; padding: 20px; box-sizing: border-box; }
        .card-back1 { background: #0f3460 url('https://i.pinimg.com/564x/57/21/cf/5721cf4b3cb1e8556209a8eb7b46ffb0.jpg') center/cover; box-shadow: inset 0 0 100px rgba(0,0,0,0.8); }
        .card-back1::after { content: "؟"; font-size: 80px; color: #e94560; font-weight: bold; text-shadow: 0 0 20px rgba(233, 69, 96, 0.8); }
        .card-front1 { background: linear-gradient(180deg, rgba(15, 52, 96, 0.95), rgba(26, 26, 46, 0.95)), url('https://i.pinimg.com/564x/47/90/a6/4790a6f443b749d688c2f0d9a6cbf3bd.jpg') center/cover; background-blend-mode: multiply; transform: rotateY(180deg); text-align: center; justify-content: space-between; padding: 30px 20px; }
        .card-front-content { display: flex; flex-direction: column; align-items: center; justify-content: center; flex-grow: 1; width: 100%; }
        .card-type { font-size: 14px; text-transform: uppercase; letter-spacing: 1px; color: #00fff0; margin-bottom: 15px; background: rgba(0, 255, 240, 0.1); padding: 6px 16px; border-radius: 20px; border: 1px solid rgba(0, 255, 240, 0.3); }
        .card-value { font-size: 24px; font-weight: bold; color: #fff; text-shadow: 0 2px 8px rgba(0,0,0,0.7); word-wrap: break-word; max-width: 100%; line-height: 1.4; }
        .anime-decor { width: 55px; height: 55px; border: 2px dashed #e94560; border-radius: 50%; display: flex; align-items: center; justify-content: center; color: #e94560; font-size: 24px; margin-bottom: 10px; }
        .hidden-data { display: none; }

        /* ── STYLE COPIES FOR GAME 3 ── */
        #game3-root {
            background: radial-gradient(circle, #1a0b2e 0%, #05010d 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        #game3-root::before {
            content: ''; position: absolute; width: 100%; height: 100%; top: 0; left: 0;
            background-image: linear-gradient(rgba(0, 255, 204, 0.05) 1px, transparent 1px), linear-gradient(90deg, rgba(0, 255, 204, 0.05) 1px, transparent 1px);
            background-size: 40px 40px; z-index: 0; pointer-events: none;
        }
        .game3-container {
            background: rgba(20, 10, 35, 0.85); border: 2px solid #00ffcc; padding: 40px; border-radius: 20px;
            box-shadow: 0 0 30px rgba(0, 255, 204, 0.3), inset 0 0 15px rgba(255, 0, 127, 0.2);
            text-align: center; max-width: 600px; width: 90%; z-index: 1; backdrop-filter: blur(10px);
        }
        #game3-root h1 { font-size: 2.5rem; color: #fff; text-shadow: 0 0 10px #ff007f, 0 0 20px #ff007f; margin-bottom: 25px; }
        .timer-container3 { font-size: 1.4rem; margin-bottom: 20px; color: #00ffcc; font-weight: bold; text-shadow: 0 0 8px rgba(0, 255, 204, 0.6); }
        #time-left3 { font-size: 2rem; color: #ff007f; text-shadow: 0 0 10px #ff007f; }
        .display-panel3 {
            background: linear-gradient(145deg, #150624, #2a0845); border-left: 5px solid #ff007f; border-right: 5px solid #00ffcc;
            padding: 40px 20px; border-radius: 12px; margin-bottom: 30px; min-height: 160px; display: flex; justify-content: center; align-items: center; box-shadow: inset 0 0 20px rgba(0,0,0,0.6);
        }
        .question-text3 { font-size: 1.5rem; font-weight: bold; line-height: 1.6; color: #ffffff; text-shadow: 0 2px 4px rgba(0,0,0,0.8); }
        .wrong-mark3 { font-size: 4rem; color: #ff3333; text-shadow: 0 0 20px #ff3333; display: none; }
        .btn-zanim {
            background: linear-gradient(90deg, #00ffcc, #00b3ff); color: #05010d; border: none; padding: 15px 45px;
            font-size: 1.4rem; font-weight: bold; border-radius: 50px; cursor: pointer; box-shadow: 0 0 15px rgba(0, 255, 204, 0.4); transition: all 0.3s ease; font-family: inherit;
        }
        .btn-zanim:hover:not(:disabled) { transform: scale(1.05); box-shadow: 0 0 25px #00ffcc; }
        .btn-zanim:disabled { background: #444; color: #888; box-shadow: none; cursor: not-allowed; }
        .restart-btn3 { background: linear-gradient(90deg, #ff007f, #7928ca); color: white; border: none; padding: 12px 30px; font-size: 1.1rem; border-radius: 8px; cursor: pointer; margin-top: 15px; display: none; font-family: inherit; }
        .score-board3 { margin-top: 25px; font-size: 1.2rem; color: #a0aec0; border-top: 1px solid rgba(255,255,255,0.1); padding-top: 15px; }
        #score3 { color: #00ffcc; font-weight: bold; }
        .q-count3 { font-size: 1rem; color: rgba(255, 255, 255, 0.5); margin-bottom: 10px; }

        /* ── STYLE FOR NEW GAME 4 (CARTOON WORD GAME) ── */
        #game4-root {
            background: linear-gradient(135deg, #ff9a9e 0%, #fecfef 99%, #fecfef 100%);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 40px 20px;
            color: #2c3e50;
        }
        .game4-container {
            background-color: #ffffff;
            border: 4px solid #2c3e50;
            border-radius: 25px;
            box-shadow: 8px 8px 0px #2c3e50;
            padding: 30px;
            width: 100%;
            max-width: 600px;
            text-align: center;
            position: relative;
            overflow: hidden;
            box-sizing: border-box;
        }
        #game4-root h1 {
            color: #ff4757;
            font-size: 2.2rem;
            text-shadow: 3px 3px 0px #f1c40f;
            margin-bottom: 25px;
            -webkit-text-stroke: 1px #2c3e50;
            margin-top: 10px;
        }
        .info-section4 {
            background-color: #ffeaa7;
            border: 3px solid #2c3e50;
            border-radius: 18px;
            padding: 15px;
            margin-bottom: 20px;
            box-shadow: 4px 4px 0px #2c3e50;
        }
        .category-title4 {
            font-size: 1.3rem;
            font-weight: bold;
            color: #2c3e50;
        }
        .category-name4 {
            font-size: 2.3rem;
            font-weight: 900;
            color: #6c5ce7;
            margin-top: 5px;
            text-shadow: 2px 2px 0px #fff;
        }
        .timer-box4 {
            font-size: 1.7rem;
            font-weight: bold;
            color: #10ac84;
            background-color: white;
            margin: 15px auto;
            padding: 5px 15px;
            border-radius: 50px;
            display: inline-block;
            border: 1px solid #ccc;
        }
        .timer-box4.danger {
            color: #ff4757;
            background-color: #ffccd5;
            animation: bounce4 0.5s infinite alternate;
        }
        @keyframes bounce4 {
            from { transform: scale(1); }
            to { transform: scale(1.1); }
        }
        .action-btn4 {
            font-family: 'Noto Naskh Arabic', sans-serif;
            background-color: #ff4757;
            color: white;
            border: 3px solid #2c3e50;
            padding: 15px 40px;
            font-size: 1.5rem;
            font-weight: bold;
            border-radius: 50px;
            cursor: pointer;
            box-shadow: 0px 5px 0px #2c3e50;
            transition: all 0.1s ease;
            margin-bottom: 20px;
            display: inline-block;
        }
        .action-btn4:active {
            transform: translateY(5px);
            box-shadow: 0px 0px 0px #2c3e50;
        }
        #knowBtn4 {
            background-color: #2ed573;
        }
        .action-btn4:disabled {
            background-color: #95a5a6;
            box-shadow: 0px 5px 0px #7f8c8d;
            cursor: not-allowed;
        }
        .alphabet-grid4 {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(55px, 1fr));
            gap: 12px;
            margin-top: 25px;
            background-color: #f1f2f6;
            padding: 15px;
            border-radius: 20px;
            border: 3px solid #2c3e50;
        }
        .letter-btn4 {
            background-color: #ffffff;
            border: 3px solid #2c3e50;
            color: #2c3e50;
            font-size: 1.4rem;
            font-weight: bold;
            padding: 8px 0;
            border-radius: 12px;
            cursor: pointer;
            box-shadow: 0px 4px 0px #2c3e50;
            transition: all 0.1s ease;
        }
        .letter-btn4:active:not(:disabled) {
            transform: translateY(4px);
            box-shadow: 0px 0px 0px #2c3e50;
        }
        .letter-btn4:disabled {
            background-color: #bdc3c7;
            color: #7f8c8d;
            border-color: #7f8c8d;
            box-shadow: none;
            cursor: not-allowed;
            transform: translateY(4px);
            text-decoration: line-through;
            opacity: 0.6;
        }
        .restart-btn4 {
            background-color: #ffa502;
            margin-top: 25px;
        }
        .game-over-msg4 {
            font-size: 1.6rem;
            font-weight: bold;
            color: #ff4757;
            margin-top: 15px;
            background-color: #ffeaa7;
            padding: 10px;
            border-radius: 15px;
            border: 2px dashed #ff4757;
            display: none;
        }
    </style>
</head>
<body>

    <div id="main-menu" class="menu-container">
        <h1 class="menu-title">🎮 جیهانی یارییەکانی حەمە</h1>
        <p class="menu-subtitle">یەکێک لە یارییەکان هەڵبژێرە بۆ دەستپێکردن</p>
        
        <div class="menu-buttons">
            <button class="menu-btn" onclick="switchSection('game1-root')">
                <span class="icon">🃏</span>
                <h3>کارتە نهێنییەکان</h3>
                <p>کارتێکی هەڕەمەکی ڕابکێشە و کاتەکەت بپارێزە</p>
            </button>

            <button class="menu-btn" onclick="switchSection('game3-root')">
                <span class="icon">🔤</span>
                <h3>یاری پیتەکان</h3>
                <p>خێرا وەڵام بدەرەوە پێش ئەوەی کاتەکەت تەواو بێت</p>
            </button>

            <button class="menu-btn" onclick="switchSection('game4-root')">
                <span class="icon">👾</span>
                <h3>وشەکاری خێرا</h3>
                <p>یاری پیت و بواری جیاواز بە شێوازی کارتۆنی</p>
            </button>
        </div>
    </div>


    <div id="game1-root" class="game-section">
        <button class="home-btn" onclick="goHome()">🏠 سەرەتایی</button>
        
        <h1>یاری کارتە نهێنییەکان</h1>
        <div class="timer-container1" id="timerDisplay">01:00</div>
        <button class="btn-random" onclick="pickRandomCard()">کارتێکی هەڕەمەکی</button>

        <div class="card-container">
            <div class="card1" id="gameCard" onclick="toggleCard()">
                <div class="card-face card-back1"></div>
                <div class="card-face card-front1">
                    <div class="anime-decor" id="cardIcon">⚔️</div>
                    <div class="card-front-content">
                        <div class="card-type" id="cardType">جۆری کارت</div>
                        <div class="card-value" id="cardValue">لێرە کلیل بکە</div>
                    </div>
                    <div style="color: #e94560; font-size: 12px; opacity: 0.5;">★ ★ ★</div>
                </div>
            </div>
        </div>

        <div class="hidden-data" id="typeLabels" data-char="کەسایەتی" data-animal="ئاژەڵ" data-item="کەلوپەل" data-action="کردار" data-job="پیشە" data-food="خواردەمەنی" data-place="شوێن" data-timeout="❌ کاتت تەواو بوو! ❌" data-end="تەواو بوو!"></div>
        <div id="source-characters" class="hidden-data">کریستیانۆ ڕۆناڵدۆ,لیۆنێل مێسی,کیلیان ئێمباپێ,ڤینیسیۆس جۆنیۆر,جود بێلینگهام,نالی (شاعیر),شێرکۆ بێکەس,حەسەن زیرەک,مەزهەری خالقی,ئەحمەد ڕەئوف,ماھیر حەسەن,بەیان بۆمبا,گۆکو,لوفی,ناروتۆ ئۆزوماکی,سۆنیک,سایداما,ئێریک تێن هاگ,پێپ گواردیۆلا</div>
        <div id="source-animals" class="hidden-data">شێر,پڵنگ,ورچ,گورگ,ڕێوی,فیل,زەڕافە,ئەسپ,کۆتر,هۆمەرپیرە,داڵ,مار,پشیلە,سەگ,مەیموون,کەروێشک,دۆلفین,کێچ</div>
        <div id="source-items" class="hidden-data">شمشێری سامورای,مۆبایلی ئایفۆن,کتێبی جادوویی,ئۆتۆمبێلی فێراری,پێنووس,کڵاوی جادوویی,کاتژمێری زیرەک,کۆمپیوتەری هاککردن,چەتر,خەنجەری کوردی,کۆڵەپشتی گەشتیاری,تەشقەڵە</div>
        <div id="source-actions" class="hidden-data">قاوە دەخواتەوە,پێدەکەنێت,ڕادەکات,گۆرانی دەڵێت,سەیری فیلم دەکات,خەوتووە,شەڕ دەکات,سەمای کوردی دەکات,پۆست لە ئینستاگرام دەکات,کۆد دەنووسێت,بۆکس لێدەدات,شۆفێری دەکات</div>
        <div id="source-jobs" class="hidden-data">پۆلیس,فیتەر,هاکەر,دکتۆر,ئەندازیار,مامۆستا,فڕۆکەوان,شێف,ئاگرکوژێنەوە,سەرباز,دادوەر,ئایتی,بێژەر</div>
        <div id="source-foods" class="hidden-data">یاپراخ,برنج و شلە,کباب,مریشکی برژاو,یاپراخی گەڵامێو,کوتڵە,شیو کباب,سەروپێ,بریانی,قوزی,شۆربای نیسک,پیتزا,بەرگر,فینگەر,کەنتاکی,گەنمەشامی,فەلافل,شاورما,هێلکەوڕۆن,تەماتەوڕۆن,ماسی مەسگوف,کاهو و سەرکێڵ,ترخێنە,شفتە,پەنیر و شوتی,کفتەی سلێمانی,ماست و کەرە,برنجی کوردی,شەکەرۆکە,کێک,دۆندرمە,باڵەکێو,کەرەوز,نانی گەرم,کونجی و دۆشاو,کەتەلۆنی,تۆست,فستق و بادەم,سێو و مۆز,چپس</div>
        <div id="source-places" class="hidden-data">قوتابخانە,نەخۆشخانە,زانکۆ,بازاڕ,پارک,چێشتخانە,مزگەوت,بانک,فڕۆکەخانە,کتێبخانە,سینەما,هۆڵی وەرزش,مۆزەخانە,کۆمپانیا,قاوەخانە,بەنزینخانە,مەلەوانگە,هوتێل,دادگا,قەڵا</div>
    </div>


    <div id="game3-root" class="game-section">
        <button class="home-btn" onclick="goHome()">🏠 سەرەتایی</button>

        <div class="game3-container">
            <h1>یاری پیتەکان 🎮</h1>
            <div class="q-count3">پرسیار: <span id="q-num3">1</span> / 10</div>
            <div class="timer-container3">کات: <span id="time-left3">10</span> چرکە</div>

            <div class="display-panel3" id="display-panel3">
                <div class="question-text3" id="question-box3">باردەکرێت...</div>
                <div class="wrong-mark3" id="wrong-mark3">❌ کات تەواو بوو!</div>
            </div>

            <button class="btn-zanim" id="zanim-btn3" onclick="nextQuestion3(true)">زانیم</button>
            <button class="restart-btn3" id="restart-btn3" onclick="startGame3()">دووبارە دەستپێکردنەوە</button>

            <div class="score-board3">
                سکۆر: <span id="score3">0</span>
            </div>
        </div>
    </div>


    <div id="game4-root" class="game-section">
        <button class="home-btn" onclick="goHome()">🏠 سەرەتایی</button>

        <div class="game4-container">
            <h1>👾 یاری وشەکاری خێرا 🎮</h1>
            
            <div class="info-section4">
                <div class="category-title4">🎯 بواری دیاریکراو:</div>
                <div id="category4" class="category-name4">باردەکرێت...</div>
                <div id="timer4" class="timer-box4">⏱️ 01:00</div>
            </div>

            <button id="knowBtn4" class="action-btn4" onclick="clickKnow4()">🌟 زانیم! 🌟</button>
            
            <div id="gameOverMessage4" class="game-over-msg4"></div>

            <div class="alphabet-grid4" id="lettersContainer4"></div>

            <button class="action-btn4 restart-btn4" onclick="initGame4()">🔄 دووبارە کردنەوە</button>
        </div>
    </div>


    <script>
        // NAVIGATION SYSTEM
        let countdownInterval; 
        let timer3 = null;     
        let timerId4 = null; 

        function switchSection(sectionId) {
            clearInterval(countdownInterval);
            if (timer3) clearInterval(timer3);
            if (timerId4) clearInterval(timerId4);

            document.getElementById('main-menu').style.display = 'none';
            document.getElementById('game1-root').style.display = 'none';
            document.getElementById('game3-root').style.display = 'none';
            document.getElementById('game4-root').style.display = 'none';
            
            const target = document.getElementById(sectionId);
            target.style.display = 'flex';
            if (sectionId === 'game3-root') {
                startGame3();
            } else if (sectionId === 'game4-root') {
                initGame4();
            }
        }

        function goHome() {
            clearInterval(countdownInterval);
            if (timer3) clearInterval(timer3);
            if (timerId4) clearInterval(timerId4);
            
            document.getElementById('game1-root').style.display = 'none';
            document.getElementById('game3-root').style.display = 'none';
            document.getElementById('game4-root').style.display = 'none';
            document.getElementById('main-menu').style.display = 'flex';
        }

        // ==========================================
        // GAME 1: SECRET CARDS LOGIC
        // ==========================================
        const labels = document.getElementById('typeLabels').dataset;
        const loadData = (id) => document.getElementById(id).textContent.split(',');

        const characters1 = loadData('source-characters');
        const animals = loadData('source-animals');
        const items = loadData('source-items');
        const actions = loadData('source-actions');
        const jobs = loadData('source-jobs');
        const foods = loadData('source-foods');
        const places = loadData('source-places');

        const allCards = [
            ...characters1.map(c => ({ type: labels.char, value: c, icon: "👤" })),
            ...animals.map(a => ({ type: labels.animal, value: a, icon: "🦁" })),
            ...items.map(i => ({ type: labels.item, value: i, icon: "🎒" })),
            ...actions.map(a => ({ type: labels.action, value: a, icon: "🎬" })),
            ...jobs.map(j => ({ type: labels.job, value: j, icon: "💼" })),
            ...foods.map(f => ({ type: labels.food, value: f, icon: "🍕" })),
            ...places.map(p => ({ type: labels.place, value: p, icon: "📍" }))
        ];

        const cardElement = document.getElementById('gameCard');
        const cardTypeElement = document.getElementById('cardType');
        const cardValueElement = document.getElementById('cardValue');
        const cardIconElement = document.getElementById('cardIcon');
        const timerDisplay = document.getElementById('timerDisplay');
        
        let isShuffling = false;
        let totalSeconds = 60;

        function startTimer() {
            clearInterval(countdownInterval);
            totalSeconds = 60;
            timerDisplay.classList.remove('danger');
            updateTimerDisplay();

            countdownInterval = setInterval(() => {
                totalSeconds--;
                updateTimerDisplay();

                if (totalSeconds <= 10) {
                    timerDisplay.classList.add('danger');
                }

                if (totalSeconds <= 0) {
                    clearInterval(countdownInterval);
                    timerDisplay.innerText = labels.end;
                    if(cardElement.classList.contains('reveal')) {
                        cardValueElement.innerText = labels.timeout;
                    }
                }
            }, 1000);
        }

        function updateTimerDisplay() {
            const minutes = Math.floor(totalSeconds / 60);
            const seconds = totalSeconds % 60;
            timerDisplay.innerText = `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
        }

        function pickRandomCard() {
            if (isShuffling) return; 
            isShuffling = true;

            cardElement.classList.remove('reveal');
            cardElement.classList.add('shuffle');
            
            setTimeout(() => {
                const randomIndex = Math.floor(Math.random() * allCards.length);
                const selectedCard = allCards[randomIndex];
                
                cardTypeElement.innerText = selectedCard.type;
                cardValueElement.innerText = selectedCard.value;
                cardIconElement.innerText = selectedCard.icon;
                
                cardElement.classList.remove('shuffle');
                isShuffling = false;
                
                startTimer();
            }, 400); 
        }

        function toggleCard() {
            if (isShuffling) return;
            cardElement.classList.toggle('reveal');
        }

        // ==========================================
        // GAME 3: LETTERS GAME LOGIC
        // ==========================================
        const lettersList = ["ئ", "ب", "پ", "ت", "ج", "چ", "خ", "د", "ر", "ز", "ژ", "س", "ش", "ع", "غ", "ف", "ڤ", "ق", "ک", "گ", "ل", "م", "ن", "ه", "ی"];
        const game3Categories = ["خواردنێک یان میوەیەک", "یاریزانێکی بەناوبانگ", "ئاژەڵێک", "کەسایەتی یان مرۆڤێک", "کەلوپەلێک", "کردارێک", "پیشەیەک", "شوێن یان شارێک"];

        let currentQuestionIndex = 0;
        let score3 = 0;
        let timeLeft3 = 10; 

        const questionBox3 = document.getElementById('question-box3');
        const timeLeftDoc3 = document.getElementById('time-left3');
        const scoreDoc3 = document.getElementById('score3');
        const zanimBtn3 = document.getElementById('zanim-btn3');
        const wrongMark3 = document.getElementById('wrong-mark3');
        const restartBtn3 = document.getElementById('restart-btn3');
        const qNumDoc3 = document.getElementById('q-num3');

        function startGame3() {
            currentQuestionIndex = 0;
            score3 = 0;
            
            scoreDoc3.innerText = score3;
            zanimBtn3.style.display = "inline-block";
            restartBtn3.style.display = "none";
            wrongMark3.style.display = "none";
            questionBox3.style.display = "block";

            showQuestion3();
        }

        function showQuestion3() {
            if (timer3) clearInterval(timer3);

            if (currentQuestionIndex < 10) {
                qNumDoc3.innerText = currentQuestionIndex + 1;
                
                const randomCategory = game3Categories[Math.floor(Math.random() * game3Categories.length)];
                const randomLetter = lettersList[Math.floor(Math.random() * lettersList.length)];
                
                questionBox3.innerText = `ناوی ${randomCategory} بە پیتی (${randomLetter}) دەست پێ دەکات؟`;
                
                wrongMark3.style.display = "none";
                questionBox3.style.display = "block";
                zanimBtn3.disabled = false;
                
                timeLeft3 = 10; 
                timeLeftDoc3.innerText = timeLeft3;
                
                timer3 = setInterval(countdown3, 1000);
            } else {
                questionBox3.innerText = `یارییەکە کۆتایی هات! کۆی سکۆرت: ${score3}`;
                zanimBtn3.style.display = "none";
                restartBtn3.style.display = "inline-block";
            }
        }

        function countdown3() {
            timeLeft3--; 
            timeLeftDoc3.innerText = timeLeft3;

            if (timeLeft3 <= 0) {
                clearInterval(timer3);
                timeOut3();
            }
        }

        function timeOut3() {
            questionBox3.style.display = "none";
            wrongMark3.style.display = "block";
            zanimBtn3.disabled = true;

            setTimeout(() => {
                currentQuestionIndex++;
                showQuestion3();
            }, 1500);
        }

        function nextQuestion3(isCorrect) {
            if (timer3) clearInterval(timer3);
            
            if (isCorrect && timeLeft3 > 0) {
                score3 += 10;
                scoreDoc3.innerText = score3;
            }
            
            currentQuestionIndex++;
            showQuestion3();
        }

        // ==========================================
        // GAME 4: CARTOON WORD GAME LOGIC
        // ==========================================
        const categories4 = [
            "پیشە", "کردار", "شوێن", "شار", "وڵات", "قارە (کیشوەر)", 
            "ناوی مرۆڤ", "ناوی فیلم", "ناوی کچ", "ناوی کوڕ", 
            "کەناڵی تەلەفزیۆن", "کەلوپەل", "کۆمپانیاکان", 
            "ئامێری کارەبایی", "ئامێری ئەلیکترۆنی", "ئاژەڵان",
            "میوە یان سەوزە", "یانەی وەرزشی", "ئۆتۆمبێل", "خواردن"
        ];

        const kurdishLetters4 = [
            "ا", "ب", "پ", "ت", "ج", "چ", "ح", "خ", "د", "ر", "ڕ", "ز", "ژ", "س", "ش",
            "ع", "غ", "ف", "ڤ", "ق", "ک", "گ", "ل", "ڵ", "م", "ن", "و", "ۆ", "ھ", "ی", "ێ"
        ];

        let timeLeft4 = 60;
        let gameActive4 = true;
        let lastSelectedButton4 = null;

        const categoryElement4 = document.getElementById('category4');
        const timerElement4 = document.getElementById('timer4');
        const lettersContainer4 = document.getElementById('lettersContainer4');
        const knowBtn4 = document.getElementById('knowBtn4');
        const gameOverMessage4 = document.getElementById('gameOverMessage4');

        function initGame4() {
            timeLeft4 = 60;
            gameActive4 = true;
            lastSelectedButton4 = null;
            clearInterval(timerId4);
            gameOverMessage4.style.display = "none";
            gameOverMessage4.innerText = "";
            timerElement4.classList.remove('danger');
            timerElement4.innerText = "⏱️ 01:00";
            knowBtn4.disabled = false;

            const randomCategory = categories4[Math.floor(Math.random() * categories4.length)];
            categoryElement4.innerText = randomCategory;

            lettersContainer4.innerHTML = "";
            kurdishLetters4.forEach(letter => {
                const button = document.createElement('button');
                button.innerText = letter;
                button.className = 'letter-btn4';
                button.onclick = () => selectLetter4(button);
                lettersContainer4.appendChild(button);
            });

            startTimer4();
        }

        function startTimer4() {
            timerId4 = setInterval(() => {
                timeLeft4--;
                
                let minutes = Math.floor(timeLeft4 / 60);
                let seconds = timeLeft4 % 60;
                
                minutes = minutes < 10 ? '0' + minutes : minutes;
                seconds = seconds < 10 ? '0' + seconds : seconds;
                
                timerElement4.innerText = `⏱️ ${minutes}:${seconds}`;

                if (timeLeft4 <= 10 && timeLeft4 > 0) {
                    timerElement4.classList.add('danger');
                }

                if (timeLeft4 <= 0) {
                    endGame4("💥 گەیم ئۆڤەر! کاتی ١ خولەکەکە تەواو بوو! دواجار نۆرەی کێ بوو ئەو دۆڕا!");
                }
            }, 1000);
        }

        function selectLetter4(button) {
            if (!gameActive4) return;
            
            if(lastSelectedButton4) {
                lastSelectedButton4.style.backgroundColor = "#ffffff";
                lastSelectedButton4.style.color = "#2c3e50";
                lastSelectedButton4.style.boxShadow = "0px 4px 0px #2c3e50";
                lastSelectedButton4.style.transform = "none";
            }
            
            button.style.backgroundColor = "#ff4757";
            button.style.color = "white";
            button.style.boxShadow = "0px 0px 0px #2c3e50";
            button.style.transform = "translateY(4px)";
            lastSelectedButton4 = button;
        }

        function clickKnow4() {
            if (!gameActive4) return;
            
            if (lastSelectedButton4) {
                lastSelectedButton4.disabled = true;
                lastSelectedButton4 = null; 
            } else {
                alert("⚠️ ئۆپسی! سەرەتا پیتێک هەڵبژێره، پاشان زانیم دابگرە!");
            }
        }

        function endGame4(message) {
            gameActive4 = false;
            clearInterval(timerId4);
            gameOverMessage4.innerText = message;
            gameOverMessage4.style.display = "block";
            knowBtn4.disabled = true;
            
            const buttons = lettersContainer4.getElementsByTagName('button');
            for (let btn of buttons) {
                btn.disabled = true;
            }
        }
    </script>
</body>
</html>

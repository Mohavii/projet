<!doctype html><html><head><meta charset=utf8><meta name=viewport content="width=device-width,initial-scale=1,viewport-fit=cover"><style>:root{color-scheme:light;box-sizing:border-box;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}html{scroll-padding-top:env(safe-area-inset-top,0px)}body{margin:0;padding:0;font:14px -apple-system,BlinkMacSystemFont,sans-serif;background:#fff;color:#000}img{max-width:100%}[hidden]:not([hidden=until-found i]){display:none!important}</style></head><body>
<title>Une vie en sept scènes</title>
<meta name="claude:viewport-fit-sides" content="cover">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Young+Serif&family=Figtree:wght@400;500;600&family=IBM+Plex+Mono:wght@400;500&display=swap">
<style>
/* Layout: kicker + title, one animated stage, then narration beats beside a mood curve; fixed Précédent/Suivant bar */
:root{
  --bg:#edf2f0; --panel:#ffffff; --fg:#14232b; --muted:#52636b; --line:#cdd9d6;
  --accent:#b3323b; --on-accent:#ffffff; --sea:#3f7387; --leaf:#4f8a5b;
  --font-display:'Young Serif',Georgia,serif;
  --font-body:'Figtree',system-ui,-apple-system,'Segoe UI',sans-serif;
  --font-mono:'IBM Plex Mono',ui-monospace,Menlo,monospace;
}
@media (prefers-color-scheme: dark){:root:not([data-theme="light"]){
  --bg:#0e181d; --panel:#16252c; --fg:#e8efec; --muted:#9db0b6; --line:#2a3c44;
  --accent:#ee7078; --on-accent:#1a0a0c; --sea:#7fb6c9; --leaf:#86c295; color-scheme:dark}}
:root[data-theme="dark"]{
  --bg:#0e181d; --panel:#16252c; --fg:#e8efec; --muted:#9db0b6; --line:#2a3c44;
  --accent:#ee7078; --on-accent:#1a0a0c; --sea:#7fb6c9; --leaf:#86c295; color-scheme:dark}

*{box-sizing:border-box}
body{background:var(--bg);color:var(--fg);font-family:var(--font-body);font-size:16px;line-height:1.55;
  padding-block:0 92px;padding-left:max(16px,env(safe-area-inset-left,0px));padding-right:max(16px,env(safe-area-inset-right,0px))}
.wrap{max-width:1040px;margin:0 auto}
h1,h2,h3{font-family:var(--font-display);font-weight:400;text-wrap:balance;margin:0}
p{margin:0}
button{font:inherit;color:inherit}
:focus-visible{outline:3px solid var(--accent);outline-offset:2px}

.top{display:flex;align-items:center;justify-content:space-between;gap:12px 20px;flex-wrap:wrap;padding-block:16px 12px}
.brand{font-family:var(--font-display);font-size:1.2rem}
.brand small{font-family:var(--font-mono);font-size:.7rem;letter-spacing:.08em;text-transform:uppercase;color:var(--muted);margin-left:10px}
.dots{display:flex;gap:2px}
.dots button{width:30px;height:24px;background:none;border:0;padding:0;position:relative;cursor:pointer}
.dots button::before{content:"";position:absolute;left:2px;right:2px;top:8px;height:8px;border-radius:4px;background:var(--line)}
.dots button.done::before{background:var(--sea)}
.dots button.on::before{background:var(--accent)}

.kick{display:flex;flex-wrap:wrap;gap:4px 14px;font-family:var(--font-mono);font-size:.74rem;letter-spacing:.06em;text-transform:uppercase;color:var(--muted);margin-bottom:6px}
.kick .time{color:var(--accent)}
.head{padding-block:8px 14px}
.head h2{font-size:clamp(1.9rem,5vw,2.9rem);line-height:1.1}

/* ---------- stage ---------- */
.stage{position:relative;aspect-ratio:2/1;border-radius:14px;overflow:hidden;isolation:isolate;--fw:10%;background:#bcdcea;user-select:none}
.stage>svg.bg{position:absolute;inset:0;width:100%;height:100%;display:block}
.actor{position:absolute;bottom:var(--b,13%);width:var(--fw);z-index:2}
.actor svg{display:block;width:100%;height:auto;overflow:visible}
.actor.l>svg{transform:scaleX(-1)}
.fx,.over{position:absolute;inset:0;pointer-events:none}
.over{z-index:4}
@media (max-width:640px){.stage{aspect-ratio:16/10;--fw:13%}}

/* figure parts */
.bob{animation:bob 2.4s ease-in-out infinite}
.legL,.legR,.armL,.armR{transform-box:fill-box}
.legL,.legR{transform-origin:50% 0}
.armL,.armR{transform-origin:50% 8%}
.headg{transform-origin:30px 32px}
.mv{left:var(--a0);animation:mvA var(--ad,4s) linear var(--ade,0s) both,mvB var(--bd,1s) linear var(--bde,999s) forwards}
.mv .legL{animation:stepL .5s ease-in-out var(--ade,0s) var(--an,0) alternate,stepL .5s ease-in-out var(--bde,999s) var(--bn,0) alternate}
.mv .legR{animation:stepR .5s ease-in-out var(--ade,0s) var(--an,0) alternate,stepR .5s ease-in-out var(--bde,999s) var(--bn,0) alternate}
.wave .armR{animation:wave .6s ease-in-out infinite alternate}
.loop,.loop .legL,.loop .legR{animation-iteration-count:infinite}
.turn>svg{animation:turn .01s steps(1,end) var(--td,0s) forwards}
.turnR>svg{animation:turnR .01s steps(1,end) var(--td,0s) forwards}
.fin>svg{animation:fade .5s var(--fd,0s) backwards}
.grows>svg{transform-origin:50% 100%;animation:grow 2.5s .2s both}
.vanish .bob{animation:bob 2.4s ease-in-out infinite,fadeOut .4s var(--vd,9.2s) forwards}
.mourn .dress,.mourn .armL,.mourn .armR{animation:mourn 1.5s 9s forwards}
.droop .headg{animation:droop 1s 7s forwards}
.fx{z-index:3}
svg.over{width:100%;height:100%}

@keyframes mvA{from{left:var(--a0)}to{left:var(--a1)}}
@keyframes mvB{from{left:var(--b0,var(--a1))}to{left:var(--b1,var(--a1))}}
@keyframes stepL{from{transform:rotate(-24deg)}to{transform:rotate(24deg)}}
@keyframes stepR{from{transform:rotate(24deg)}to{transform:rotate(-24deg)}}
@keyframes bob{50%{transform:translateY(-1.6px)}}
@keyframes wave{from{transform:rotate(-140deg)}to{transform:rotate(-108deg)}}
@keyframes turn{to{transform:scaleX(-1)}}
@keyframes turnR{to{transform:scaleX(1)}}
@keyframes pop{0%{transform:scale(0);opacity:0}70%{transform:scale(1.15);opacity:1}100%{transform:scale(1);opacity:1}}
@keyframes fade{from{opacity:0}to{opacity:1}}
@keyframes fadeOut{to{opacity:var(--to,0)}}
@keyframes rise{from{opacity:0;transform:translateY(8px)}}
@keyframes floatUp{0%{transform:translateY(0) scale(.6);opacity:0}15%{opacity:1}100%{transform:translateY(-110px) scale(1.1);opacity:0}}
@keyframes cfall{from{top:-8%;transform:rotate(0)}to{top:104%;transform:rotate(540deg)}}
@keyframes snow{from{top:-4%;transform:translateX(0)}50%{transform:translateX(14px)}to{top:104%;transform:translateX(-6px)}}
@keyframes shake{0%,100%{transform:translateX(0)}25%{transform:translateX(-4px)}75%{transform:translateX(4px)}}
@keyframes grow{from{transform:scale(.5)}to{transform:scale(1)}}
@keyframes mourn{to{fill:#3a4352}}
@keyframes droop{to{transform:rotate(16deg)}}
@keyframes draw{from{stroke-dashoffset:var(--len,200)}to{stroke-dashoffset:0}}
@keyframes drop{0%{transform:translateY(-120%) rotate(-8deg)}60%{transform:translateY(0) rotate(5deg)}80%{transform:rotate(-3deg)}100%{transform:rotate(0)}}
@keyframes caravan{0%{left:62%;bottom:30%;transform:rotate(0)}30%{left:70%;bottom:30%;transform:rotate(0)}55%{left:82%;bottom:29%;transform:rotate(22deg)}100%{left:93%;bottom:-24%;transform:rotate(100deg)}}
@keyframes ring{from{transform:scale(.2);opacity:.9}to{transform:scale(2.4);opacity:0}}
@keyframes coin{0%{left:15%;bottom:46%;opacity:0}12%{opacity:1}50%{bottom:66%}100%{left:60%;bottom:32%;opacity:0}}
@keyframes sail{to{left:112%}}
@keyframes sun{from{bottom:6%}to{bottom:52%}}
@keyframes spin{to{transform:rotate(360deg)}}
@keyframes smoke{from{transform:translateY(0) scale(.5);opacity:.8}to{transform:translateY(-70px) scale(1.6);opacity:0}}
@keyframes pulse{50%{transform:scale(1.18)}}
@keyframes shrink{from{width:100%}to{width:10%}}
@keyframes loopWalk{from{left:-14%}to{left:106%}}

/* props */
.bubble{position:absolute;z-index:3;width:11%;aspect-ratio:1;background:#fff;border-radius:50%;display:grid;place-items:center;color:#d6455a;animation:pop .6s var(--d,5s) backwards}
.bubble svg{width:56%;fill:currentColor}
.bubble::after{content:"";position:absolute;left:14%;bottom:-10%;width:13%;aspect-ratio:1;border-radius:50%;background:#fff;box-shadow:-9px 13px 0 -3px #fff}
.heart{fill:currentColor}
.fl{position:absolute;width:3.4%;color:#e0566b;animation:floatUp 3.2s var(--d) infinite backwards}
.cf{position:absolute;top:-8%;width:1.3%;aspect-ratio:1/1.7;animation:cfall 3.8s var(--d) linear backwards}
.sn{position:absolute;top:-4%;width:.9%;aspect-ratio:1;border-radius:50%;background:#fff;opacity:.9;animation:snow var(--t) linear var(--d) infinite backwards}
.shock{position:absolute;left:50%;bottom:104%;translate:-50% 0;width:60%;aspect-ratio:1;border-radius:50%;background:#fff;color:#b3323b;display:grid;place-items:center;font:700 1.2rem/1 var(--font-body);animation:pop .4s var(--d) backwards}
.coinprop{position:absolute;width:2.6%;aspect-ratio:1;border-radius:50%;background:#e6b84a;border:2px solid #b78a1c;z-index:3;animation:coin 1.7s var(--d) ease-in-out backwards}
.purse{position:absolute;left:62%;bottom:78%;width:44%;aspect-ratio:1;border-radius:50%;background:#e6b84a;border:2px solid #b78a1c;display:grid;place-items:center;font:700 .8rem var(--font-mono);color:#6a4a08;animation:pop .4s var(--d) backwards}
.baby{position:absolute;width:46%;left:27%;bottom:36%;z-index:3}
.baby svg{width:100%;display:block}
.sign{position:absolute;z-index:3;left:45%;bottom:13%;width:13%;transform-origin:50% 0;animation:drop 1.6s var(--d,1.5s) backwards}
.chip{position:absolute;z-index:5;left:14px;top:12px;background:rgba(255,255,255,.92);color:#1b2b33;border-radius:8px;padding:6px 10px;font:500 .72rem var(--font-mono);width:min(210px,52%)}
.chip i{display:block;height:7px;border-radius:4px;background:#d6dfdc;margin-top:5px;overflow:hidden}
.chip b{display:block;height:100%;background:#4f8a5b;animation:shrink 10s linear 2s forwards}
.quote{position:absolute;z-index:5;left:50%;top:6%;translate:-50% 0;width:min(84%,560px);text-align:center;background:rgba(15,28,34,.78);color:#fff;border-radius:10px;padding:10px 16px;font:400 clamp(.82rem,2.2vw,1.12rem)/1.35 var(--font-display);animation:fade 1.4s 9s backwards}
.smoke{position:absolute;width:2.2%;aspect-ratio:1;border-radius:50%;background:#e9eef0;animation:smoke 3s var(--d) ease-out infinite backwards}

/* ---------- text ---------- */
.below{display:grid;grid-template-columns:minmax(0,1.4fr) minmax(0,1fr);gap:20px 36px;margin-top:20px;align-items:start}
@media (max-width:820px){.below{grid-template-columns:minmax(0,1fr)}}
.beats{counter-reset:b;display:grid;gap:14px}
.beat{counter-increment:b;display:grid;grid-template-columns:28px minmax(0,1fr);max-width:62ch;animation:rise .7s var(--d,0s) backwards}
.beat::before{content:counter(b);font-family:var(--font-mono);font-size:.85rem;color:var(--accent);padding-top:3px}
.side{display:grid;gap:14px;background:var(--panel);border:1px solid var(--line);border-radius:12px;padding:16px}
.retain{font-size:.95rem}
.retain b{display:block;font-family:var(--font-mono);font-size:.7rem;font-weight:500;letter-spacing:.08em;text-transform:uppercase;color:var(--muted);margin-bottom:2px}
.mood svg{display:block;width:100%;height:auto;overflow:visible}
.mood small{display:block;font-family:var(--font-mono);font-size:.68rem;color:var(--muted);letter-spacing:.04em;margin-bottom:4px}
.mood text{font-family:var(--font-mono);font-size:8px;fill:var(--muted)}
.replay{justify-self:start;background:none;border:1px solid var(--line);border-radius:8px;padding:6px 12px;cursor:pointer;font-size:.88rem;color:var(--muted)}
.replay:hover{border-color:var(--sea);color:var(--fg)}
.pull{font-family:var(--font-display);font-size:clamp(1.05rem,2.6vw,1.35rem);line-height:1.35;max-width:40ch;margin-top:4px;animation:rise .8s 9.5s backwards}
.pull small{display:block;font-family:var(--font-mono);font-size:.72rem;color:var(--muted);margin-top:6px}

/* intro */
.intro h1{font-size:clamp(3rem,11vw,6.2rem);line-height:.95;margin-block:6px 10px}
.intro .by{font-family:var(--font-mono);font-size:.78rem;letter-spacing:.08em;text-transform:uppercase;color:var(--muted)}
.intro .lead{max-width:56ch;margin-top:14px}
.cast{display:grid;grid-template-columns:repeat(auto-fit,minmax(138px,1fr));gap:12px;margin-top:22px}
.card{background:var(--panel);border:1px solid var(--line);border-radius:12px;padding:10px 12px 12px;min-width:0}
.card .fg{width:34%;min-width:44px;margin-bottom:6px}
.card .fg svg{display:block;width:100%;height:auto;overflow:visible}
.card h3{font-size:1.02rem}
.card p{font-size:.84rem;color:var(--muted);line-height:1.4;margin-top:2px}

.nav{position:fixed;left:0;right:0;bottom:0;z-index:20;background:var(--panel);border-top:1px solid var(--line);
  padding:10px max(16px,env(safe-area-inset-right,0px)) calc(10px + env(safe-area-inset-bottom,0px)) max(16px,env(safe-area-inset-left,0px))}
.nav .in{max-width:1040px;margin:0 auto;display:flex;align-items:center;justify-content:space-between;gap:12px}
.nav .pos{font-family:var(--font-mono);font-size:.8rem;color:var(--muted);text-align:center}
.btn{border-radius:10px;border:1px solid var(--line);background:none;padding:10px 20px;font-weight:600;cursor:pointer;min-height:44px}
.btn.main{background:var(--accent);border-color:var(--accent);color:var(--on-accent)}
.btn[disabled]{opacity:.4;cursor:default}


/* ===== plein écran ===== */
body{padding:0}
body.playing{overflow:hidden}
.top{position:fixed;left:0;right:0;top:0;z-index:15;padding:12px max(16px,3vw)}
.playing .top{color:#fff;background:linear-gradient(rgba(8,16,22,.6),transparent)}
.intro{padding-top:60px}
.scene{position:fixed;inset:0;z-index:10;overflow:hidden;background:linear-gradient(var(--sk,#a9d3e8) 50%,var(--gr,#62a06c) 50%)}
.scene .stage{position:absolute;left:50%;top:50%;translate:-50% -50%;width:min(100vw,200vh);aspect-ratio:2/1;border-radius:0;--fw:9%}
@media (min-aspect-ratio:17/10){.scene .stage{width:max(100vw,200vh)}}
.scene .head{position:absolute;z-index:12;top:62px;left:max(20px,3vw);padding:0;color:#fff;text-shadow:0 2px 14px rgba(0,0,0,.55);pointer-events:none}
.scene .head h2{font-size:clamp(2rem,5vw,3.8rem)}
.scene .kick{color:rgba(255,255,255,.88)}.scene .kick .time{color:#ffd0d3}
.below{position:absolute;inset:0;margin:0;z-index:12;pointer-events:none;display:block}
.beats{position:absolute;left:50%;bottom:86px;translate:-50% 0;width:min(920px,92vw);display:grid;gap:0}
.beat{grid-area:1/1;max-width:none;display:block;opacity:0;background:rgba(10,20,27,.8);backdrop-filter:blur(8px);color:#fff;border-radius:16px;padding:14px 24px;font-size:clamp(1rem,1.9vw,1.4rem);line-height:1.45;box-shadow:0 8px 30px rgba(0,0,0,.35)}
.beat::before{display:none}
.side{position:absolute;right:max(16px,2vw);top:62px;width:270px;pointer-events:auto;opacity:0;animation:fade 1.2s 26s forwards;box-shadow:0 8px 30px rgba(0,0,0,.3)}
.side .replay{display:none}
@media (max-width:760px){.side{display:none}}
.vig{position:absolute;inset:0;z-index:4;pointer-events:none;background:radial-gradient(ellipse at 50% 45%,transparent 55%,rgba(8,16,30,.4)),linear-gradient(transparent 70%,rgba(8,16,30,.25))}
.deco{z-index:1;pointer-events:none}
.cloud{animation:drift var(--t,90s) linear infinite;opacity:.85}
.tw{animation:twk 2.4s ease-in-out infinite alternate}
.bird{animation:fly 22s linear infinite}
.sh{animation:twk 3s ease-in-out infinite alternate}
@keyframes drift{from{transform:translateX(-260px)}to{transform:translateX(1100px)}}
@keyframes fly{from{transform:translate(-80px,0)}to{transform:translate(900px,-60px)}}
@keyframes twk{from{opacity:.15}to{opacity:1}}
@keyframes cap{0%{opacity:0;transform:translateY(10px)}5%,93%{opacity:1;transform:none}100%{opacity:0}}
@keyframes capL{0%{opacity:0;transform:translateY(10px)}5%,100%{opacity:1;transform:none}}
.playing .nav{background:rgba(10,20,27,.74);backdrop-filter:blur(10px);color:#fff;border-top:0}
.playing .btn{border-color:rgba(255,255,255,.3)}.playing .nav .pos{color:#cfe0e5}
.bar{position:absolute;left:0;top:0;height:3px;width:0;background:var(--accent)}
.nav .in{position:relative}
.lid{transform-box:fill-box;transform-origin:50% 0;transform:scaleY(0);animation:blink 4.6s infinite}
.gr{transform-box:fill-box;transform-origin:50% 100%;animation:sway 3s ease-in-out infinite alternate}
.wv{animation:wave2 5s linear infinite}
.mote{animation:mote 9s ease-in-out infinite alternate}
.glow{position:absolute;inset:0;z-index:4;pointer-events:none;mix-blend-mode:screen;opacity:.85}
.fgs{z-index:3;pointer-events:none}
@keyframes blink{0%,93%,100%{transform:scaleY(0)}96%{transform:scaleY(1)}}
@keyframes sway{from{transform:rotate(-6deg)}to{transform:rotate(6deg)}}
@keyframes wave2{to{transform:translateX(-100px)}}
@keyframes mote{from{transform:translate(0,0);opacity:.1}50%{opacity:.9}to{transform:translate(34px,-30px);opacity:.1}}
@media (prefers-reduced-motion:reduce){
  *,*::before,*::after{animation-duration:.01ms!important;animation-delay:0s!important;animation-iteration-count:1!important}
}
</style>
<svg width="0" height="0" style="position:absolute" aria-hidden="true"><defs><linearGradient id="shade" x1="0" x2="1"><stop offset="0" stop-color="#fff" stop-opacity=".2"/><stop offset=".5" stop-color="#fff" stop-opacity="0"/><stop offset="1" stop-color="#000" stop-opacity=".26"/></linearGradient></defs><symbol id="heart" viewBox="0 0 24 24"><path d="M12 21s-7-4.6-9.3-9C1 8.6 3 5 6.5 5c2 0 3.5 1.1 5.5 3 2-1.9 3.5-3 5.5-3C21 5 23 8.6 21.3 12 19 16.4 12 21 12 21z"/></symbol></svg>

<div class="wrap">
<header class="top">
  <div class="brand">Une vie<small>Maupassant, 1883</small></div>
  <nav class="dots" id="dots" aria-label="Scènes"></nav>
</header>

<!-- ============ INTRO ============ -->
<section class="intro" id="intro">
  <p class="by">Guy de Maupassant · roman réaliste</p>
  <h1>Une vie</h1>
  <p class="lead">Jeanne a dix-sept ans et rêve d'amour. Sept scènes suivent ce qu'il en reste, du couvent à la petite maison de Batteville. Chaque scène dure environ trente secondes, soit quatre minutes en tout. La lecture est automatique, avec pause et navigation libre.</p>
  <div class="stage" style="margin-top:20px">
    <svg class="bg" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs><linearGradient id="sk0" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stop-color="#a9d3e8"/><stop offset="1" stop-color="#eef7f1"/></linearGradient></defs>
      <rect width="800" height="400" fill="url(#sk0)"/>
      <circle cx="120" cy="80" r="30" fill="#fff2b8"/>
      <rect y="196" width="800" height="34" fill="#86b4c6"/>
      <path d="M0 232Q180 190 400 228T800 214V400H0Z" fill="#92c597"/>
      <path d="M0 300Q260 268 520 302T800 292V400H0Z" fill="#62a06c"/>
    </svg>
    <div class="actor mv loop" data-fig="jeanne" style="--a0:-14%;--a1:104%;--ad:16s;--an:32"></div>
  </div>
  <div class="cast">
    <div class="card"><div class="fg" data-fig="jeanne"></div><h3>Jeanne</h3><p>Jeune aristocrate normande, rêveuse et confiante.</p></div>
    <div class="card"><div class="fg" data-fig="julien"></div><h3>Julien</h3><p>Son mari. Avare, froid et infidèle.</p></div>
    <div class="card"><div class="fg" data-fig="rosalie"></div><h3>Rosalie</h3><p>Servante et sœur de lait de Jeanne. Elle revient la soutenir.</p></div>
    <div class="card"><div class="fg" data-fig="paul"></div><h3>Paul</h3><p>Son fils adoré, devenu un adulte irresponsable.</p></div>
    <div class="card"><div class="fg" data-fig="comte"></div><h3>Le comte de Fourville</h3><p>Mari jaloux de Gilberte.</p></div>
  </div>
</section>

<!-- ============ SCENE 1 ============ -->
<section class="scene" id="s1" data-end="7" hidden>
  <div class="head"><p class="kick"><span>Scène 1 / 7</span><span>1819 · château des Peuples, près d'Yport</span><span class="time">repère 0:00 – 0:34</span></p><h2>Le rêve</h2></div>
  <div class="stage">
    <svg class="bg" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs><linearGradient id="sk1" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stop-color="#a9d3e8"/><stop offset="1" stop-color="#eef7f1"/></linearGradient></defs>
      <rect width="800" height="400" fill="url(#sk1)"/>
      <circle cx="690" cy="70" r="32" fill="#fff2b8"/>
      <rect y="196" width="800" height="34" fill="#86b4c6"/>
      <path d="M0 232Q180 190 400 228T800 214V400H0Z" fill="#92c597"/>
      <g transform="translate(520 130)"><rect y="22" width="150" height="62" fill="#dcd6c8"/><rect x="-14" y="2" width="34" height="82" fill="#cfc8b8"/><rect x="130" y="2" width="34" height="82" fill="#cfc8b8"/><path d="M-18 2L3-26L24 2ZM126 2L147-26L168 2Z" fill="#69798a"/><rect x="40" y="38" width="14" height="20" fill="#7b8ea0"/><rect x="68" y="38" width="14" height="20" fill="#7b8ea0"/><rect x="96" y="38" width="14" height="20" fill="#7b8ea0"/><rect x="64" y="60" width="22" height="24" fill="#8a6a4a"/></g>
      <path d="M0 300Q260 268 520 302T800 292V400H0Z" fill="#62a06c"/>
    </svg>
    <div class="actor mv" data-fig="jeanne" style="--a0:-12%;--a1:36%;--ad:4s;--ade:.4s;--an:8"></div>
    <div class="actor l wave" data-fig="baron" style="left:68%"></div>
    <div class="actor l wave" data-fig="baronne" style="left:78%"></div>
    <div class="bubble" style="left:40%;bottom:58%;--d:5s"><svg viewBox="0 0 24 24"><use href="#heart"/></svg></div>
    <div class="fx" data-fx="hearts" data-x="41" data-d="5.6"></div>
  </div>
  <div class="below">
    <div class="beats">
      <p class="beat" style="--d:.8s">À 17 ans, Jeanne quitte le couvent et retrouve ses parents, le baron et la baronne Le Perthuis des Vauds.</p>
      <p class="beat" style="--d:3.5s">Elle découvre la liberté et la campagne normande, au château des Peuples.</p>
      <p class="beat" style="--d:6s">Innocente et rêveuse, elle imagine une vie pleine d'amour et attend l'homme qui la partagera.</p>
    </div>
    <aside class="side"><p class="retain"><b>À retenir</b>Le roman commence par l'espoir. Tout ce qui suit sera mesuré à ce rêve.</p><div class="mood"></div><button class="replay" type="button">Rejouer la scène</button></aside>
  </div>
</section>

<!-- ============ SCENE 2 ============ -->
<section class="scene" id="s2" data-end="10" hidden>
  <div class="head"><p class="kick"><span>Scène 2 / 7</span><span>Le mariage · voyage de noces en Corse</span><span class="time">repère 0:34 – 1:08</span></p><h2>Le mariage</h2></div>
  <div class="stage">
    <svg class="bg" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs><linearGradient id="sk2" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stop-color="#f3cfe0"/><stop offset="1" stop-color="#fff1e4"/></linearGradient></defs>
      <rect width="800" height="400" fill="url(#sk2)"/>
      <g transform="translate(560 120)"><rect y="60" width="130" height="110" fill="#e4dccd"/><rect x="40" y="10" width="50" height="60" fill="#d8cfbd"/><path d="M34 10L65-30L96 10Z" fill="#7a6b78"/><path d="M65-52v24M55-42h20" stroke="#7a6b78" stroke-width="3"/><path d="M52 170v-50a13 13 0 0 1 26 0v50Z" fill="#8a6a4a"/></g>
      <path d="M0 250Q220 220 420 252T800 240V400H0Z" fill="#a4cf9c"/>
      <path d="M0 310Q260 285 520 312T800 304V400H0Z" fill="#7bb485"/>
    </svg>
    <div class="actor mv droop" data-fig="jeannewed" style="--a0:-14%;--a1:34%;--ad:4s;--ade:.3s;--an:8"></div>
    <div class="actor mv" data-fig="julien" style="--a0:-4%;--a1:44%;--ad:4s;--ade:.3s;--an:8;--b1:112%;--bd:3.6s;--bde:6.5s;--bn:7"><div class="purse" style="--d:5s">F</div></div>
    <div class="fx" data-fx="confetti" data-d=".3"></div>
    <div class="over" style="background:#2a3844;opacity:0;--to:.5;animation:fadeOut 3s 6.2s forwards"></div>
  </div>
  <div class="below">
    <div class="beats">
      <p class="beat" style="--d:.8s">Jeanne rencontre le vicomte Julien de Lamare. Elle tombe amoureuse et l'épouse.</p>
      <p class="beat" style="--d:4s">Dès la nuit de noces, il se montre brutal et froid. En Corse, la beauté des paysages lui offre pourtant quelques moments de bonheur.</p>
      <p class="beat" style="--d:6.5s">Au retour, Julien se révèle avare et égoïste. Il pense à l'argent et au domaine, Jeanne s'ennuie et s'attriste.</p>
    </div>
    <aside class="side"><p class="retain"><b>À retenir</b>Première désillusion : l'homme qu'elle avait rêvé n'existe pas.</p><div class="mood"></div><button class="replay" type="button">Rejouer la scène</button></aside>
  </div>
</section>

<!-- ============ SCENE 3 ============ -->
<section class="scene" id="s3" data-end="8.5" hidden>
  <div class="head"><p class="kick"><span>Scène 3 / 7</span><span>Au château des Peuples</span><span class="time">repère 1:08 – 1:42</span></p><h2>La trahison</h2></div>
  <div class="stage">
    <svg class="bg" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs><linearGradient id="sk3" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stop-color="#3b4166"/><stop offset="1" stop-color="#1f2338"/></linearGradient></defs>
      <rect width="800" height="400" fill="url(#sk3)"/>
      <g transform="translate(90 50)"><rect width="130" height="170" rx="6" fill="#161a2c"/><rect x="8" y="8" width="114" height="154" fill="#2b3a66"/><circle cx="88" cy="48" r="16" fill="#f3efc9"/><path d="M65 8V162M8 85H122" stroke="#161a2c" stroke-width="5"/></g>
      <rect y="318" width="800" height="82" fill="#2a2030"/>
      <rect x="560" y="150" width="150" height="110" rx="4" fill="#4a3a5a"/><rect x="568" y="158" width="134" height="94" fill="#5b4a6e"/>
    </svg>
    <div class="actor mv turn" data-fig="jeanne" style="--a0:-14%;--a1:26%;--ad:3.2s;--ade:.5s;--an:6;--b1:-18%;--bd:2.4s;--bde:5.2s;--bn:5;--td:5.2s;--b:13%">
      <div class="shock" style="--d:4s;--to:0;animation:pop .4s 4s backwards,fadeOut .3s 5.2s forwards">!</div>
    </div>
    <div class="actor" data-fig="rosaliepreg" style="left:52%"></div>
    <div class="actor l" data-fig="julien" style="left:63%"></div>
    <svg class="over" viewBox="0 0 800 400" preserveAspectRatio="none" aria-hidden="true"><path d="M452 232Q500 170 548 232" fill="none" stroke="#e0566b" stroke-width="3" stroke-dasharray="6 6" vector-effect="non-scaling-stroke" style="animation:fade 1s 1s backwards"/></svg>
    <div class="bubble" style="left:54.5%;bottom:60%;width:6%;--d:1.6s"><svg viewBox="0 0 24 24"><use href="#heart"/></svg></div>
    <div class="over" style="background:#6f8fd0;opacity:0;--to:.35;animation:fadeOut 2s 5s forwards"></div>
    <div class="fx" data-fx="snow" style="animation:fade 1.5s 5s backwards"></div>
  </div>
  <div class="below">
    <div class="beats">
      <p class="beat" style="--d:.8s">Rosalie, servante et sœur de lait de Jeanne, est enceinte. Julien veut la renvoyer, Jeanne refuse.</p>
      <p class="beat" style="--d:3.6s">Elle comprend alors que Julien est le père de l'enfant. Il la trompe depuis le début du mariage.</p>
      <p class="beat" style="--d:6.2s">Bouleversée, elle court dans le froid et survit. Elle apprend qu'elle est enceinte, et reste auprès de Julien.</p>
    </div>
    <aside class="side"><p class="retain"><b>À retenir</b>Les conventions sociales de l'époque retiennent Jeanne auprès d'un mari infidèle.</p><div class="mood"></div><button class="replay" type="button">Rejouer la scène</button></aside>
  </div>
</section>

<!-- ============ SCENE 4 ============ -->
<section class="scene" id="s4" data-end="11" hidden>
  <div class="head"><p class="kick"><span>Scène 4 / 7</span><span>Naissance de Paul · la falaise</span><span class="time">repère 1:42 – 2:16</span></p><h2>Paul et la falaise</h2></div>
  <div class="stage">
    <svg class="bg" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs><linearGradient id="sk4" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stop-color="#b6dbea"/><stop offset="1" stop-color="#f1f7f2"/></linearGradient></defs>
      <rect width="800" height="400" fill="url(#sk4)"/>
      <rect y="232" width="800" height="168" fill="#6fa6b8"/>
      <path d="M0 292H660L674 400H0Z" fill="#ece9df"/>
      <path d="M0 330H665M0 366H670" stroke="#d3cfc2" stroke-width="3"/>
      <path d="M0 280H660V294H0Z" fill="#5f9a62"/>
    </svg>
    <div class="actor mourn" data-fig="jeanne" style="left:15%;--b:30%"><div class="baby"><svg viewBox="0 0 30 30"><ellipse cx="15" cy="20" rx="12" ry="8" fill="#fff"/><circle cx="15" cy="10" r="6.5" fill="#f3cfae"/><path d="M9 8Q15 1 21 8" fill="#c9953b"/></svg></div></div>
    <div class="fx" data-fx="hearts" data-x="15" data-d=".6" data-n="3"></div>
    <div class="actor mv fin wave" data-fig="comte" style="--a0:36%;--a1:52%;--ad:2.2s;--ade:3.2s;--an:4;--b:30%;--fd:3.2s"><div class="shock" style="--d:5s;--to:0;animation:pop .4s 5s backwards,fadeOut .3s 7.5s forwards">!</div></div>
    <div style="position:absolute;z-index:2;width:13%;left:62%;bottom:30%;transform-origin:100% 100%;animation:caravan 2.6s ease-in 5.7s both"><svg viewBox="0 0 100 70" style="display:block;width:100%" aria-hidden="true"><rect x="4" y="12" width="92" height="40" rx="10" fill="#c9863a"/><path d="M4 24Q50-8 96 24Z" fill="#a8652a"/><rect x="36" y="24" width="24" height="15" rx="2" fill="#fff4cf"/><circle cx="26" cy="56" r="11" fill="#3a2a22"/><circle cx="74" cy="56" r="11" fill="#3a2a22"/><circle cx="26" cy="56" r="4" fill="#c9b99a"/><circle cx="74" cy="56" r="4" fill="#c9b99a"/></svg></div>
    <div style="position:absolute;z-index:1;left:89%;bottom:8%;width:6%;aspect-ratio:1;border:3px solid #fff;border-radius:50%;animation:ring 1.4s 8.2s backwards"></div>
    <div class="over" style="background:#1d2733;opacity:0;--to:.32;animation:fadeOut 2s 8.6s forwards"></div>
  </div>
  <div class="below">
    <div class="beats">
      <p class="beat" style="--d:.8s">Jeanne met au monde Paul, son « Poulet », et lui donne tout son amour.</p>
      <p class="beat" style="--d:3.4s">Julien a une nouvelle liaison, avec Gilberte de Fourville. Jeanne perd aussi sa mère et découvre qu'elle avait eu un amant.</p>
      <p class="beat" style="--d:6s">Le comte de Fourville surprend les amants dans une roulotte et la précipite du haut d'une falaise. Julien et Gilberte meurent. Le même jour, le deuxième enfant de Jeanne naît mort-né.</p>
    </div>
    <aside class="side"><p class="retain"><b>À retenir</b>Veuve, Jeanne reporte tout son amour sur son fils. C'est son dernier espoir.</p><div class="mood"></div><button class="replay" type="button">Rejouer la scène</button></aside>
  </div>
</section>

<!-- ============ SCENE 5 ============ -->
<section class="scene" id="s5" data-end="14" hidden>
  <div class="head"><p class="kick"><span>Scène 5 / 7</span><span>Paul devient adulte</span><span class="time">repère 2:16 – 2:50</span></p><h2>Paul, l'enfant gâté</h2></div>
  <div class="stage">
    <svg class="bg" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs><linearGradient id="sk5" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stop-color="#aecfdd"/><stop offset="1" stop-color="#e6eef0"/></linearGradient></defs>
      <rect width="800" height="400" fill="url(#sk5)"/>
      <rect y="190" width="800" height="210" fill="#7fb0c4"/>
      <path d="M0 250Q220 215 430 250T520 262L520 400H0Z" fill="#8fc392"/>
      <path d="M0 305Q200 280 440 306L470 400H0Z" fill="#62a06c"/>
      <rect x="430" y="346" width="370" height="14" fill="#9a7a56"/>
      <path d="M470 360V400M560 360V400M650 360V400M740 360V400" stroke="#6b5238" stroke-width="8"/>
    </svg>
    <div class="chip">Fortune de Jeanne<i><b></b></i></div>
    <div class="chip" style="left:auto;right:14px;width:auto">Angleterre →</div>
    <div class="actor" data-fig="jeannedark" style="left:8%"></div>
    <div class="actor mv grows vanish" data-fig="paul" style="--a0:20%;--a1:70%;--ad:7s;--ade:2s;--an:14"></div>
    <div class="coinprop" style="--d:3s"></div><div class="coinprop" style="--d:4.4s"></div><div class="coinprop" style="--d:5.8s"></div><div class="coinprop" style="--d:7.2s"></div><div class="coinprop" style="--d:8.6s"></div>
    <div style="position:absolute;z-index:1;left:76%;bottom:15%;width:20%;animation:sail 4s ease-in 10s forwards"><svg viewBox="0 0 120 90" style="display:block;width:100%" aria-hidden="true"><path d="M4 60H116L100 82H20Z" fill="#6b4a32"/><rect x="58" y="6" width="3" height="56" fill="#4a3624"/><path d="M63 10V56H104Z" fill="#f4f1ea"/><path d="M57 14V56H22Z" fill="#e8e2d4"/><path d="M61 6L80 11L61 16Z" fill="#c4373f"/></svg></div>
  </div>
  <div class="below">
    <div class="beats">
      <p class="beat" style="--d:.8s">Jeanne protège Paul à l'excès et lui accorde tout. Il grandit sans discipline.</p>
      <p class="beat" style="--d:3.6s">Adulte, il abandonne ses études et part en Angleterre avec une jeune femme. Il n'écrit que pour demander de l'argent.</p>
      <p class="beat" style="--d:6.4s">Jeanne l'aide sans cesse, jusqu'à hypothéquer son domaine. Le baron et tante Lison meurent : elle est presque seule.</p>
    </div>
    <aside class="side"><p class="retain"><b>À retenir</b>L'amour sans limites de Jeanne ne sauve pas Paul. Il la ruine.</p><div class="mood"></div><button class="replay" type="button">Rejouer la scène</button></aside>
  </div>
</section>

<!-- ============ SCENE 6 ============ -->
<section class="scene" id="s6" data-end="10.5" hidden>
  <div class="head"><p class="kick"><span>Scène 6 / 7</span><span>Retour de Rosalie · vente du château</span><span class="time">repère 2:50 – 3:24</span></p><h2>Le départ du château</h2></div>
  <div class="stage">
    <svg class="bg" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs><linearGradient id="sk6" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stop-color="#7f8fb8"/><stop offset="1" stop-color="#f0cdb8"/></linearGradient></defs>
      <rect width="800" height="400" fill="url(#sk6)"/>
      <path d="M0 262Q220 232 430 262T800 250V400H0Z" fill="#7da57f"/>
      <g class="castle" style="animation:fadeOut 3s 7s forwards;--to:.3"><g transform="translate(40 120)"><rect y="30" width="250" height="130" fill="#d9d2c4"/><rect x="-18" y="0" width="50" height="160" fill="#cbc3b3"/><rect x="218" y="0" width="50" height="160" fill="#cbc3b3"/><path d="M-24 0L7-40L38 0ZM212 0L243-40L274 0Z" fill="#5f6f82"/><g fill="#7b8ea0"><rect x="50" y="56" width="22" height="32"/><rect x="95" y="56" width="22" height="32"/><rect x="140" y="56" width="22" height="32"/><rect x="185" y="56" width="22" height="32"/></g><rect x="108" y="108" width="34" height="52" fill="#8a6a4a"/></g></g>
      <path d="M0 312Q260 288 520 314T800 306V400H0Z" fill="#5f9667"/>
      <g transform="translate(655 250)"><rect y="40" width="100" height="62" fill="#e4dccd"/><path d="M-8 42L50-4L108 42Z" fill="#8b5a4a"/><rect x="72" y="4" width="12" height="28" fill="#a89a88"/><rect x="38" y="64" width="24" height="38" fill="#7a5a3e"/><rect x="10" y="56" width="18" height="18" fill="#f5d98b"/></g>
    </svg>
    <i class="smoke" style="left:90.8%;bottom:62%;--d:0s"></i><i class="smoke" style="left:91.2%;bottom:62%;--d:1s"></i><i class="smoke" style="left:90.6%;bottom:62%;--d:2s"></i>
    <div class="sign" style="--d:1.5s"><svg viewBox="0 0 80 70" style="display:block;width:100%" aria-hidden="true"><rect x="38" y="0" width="4" height="70" fill="#6b4a32"/><rect x="2" y="14" width="76" height="30" rx="3" fill="#f4f1ea" stroke="#b3323b" stroke-width="3"/><text x="40" y="34" text-anchor="middle" font-size="12" font-weight="700" fill="#b3323b" font-family="IBM Plex Mono,monospace">À VENDRE</text></svg></div>
    <div class="actor mv" data-fig="jeannedark" style="--a0:33%;--a1:33%;--ad:.1s;--b1:68%;--bd:3.5s;--bde:7s;--bn:7"></div>
    <div class="actor mv l turnR" data-fig="rosalie" style="--a0:112%;--a1:56%;--ad:4.4s;--ade:.5s;--an:9;--b1:78%;--bd:3.5s;--bde:7s;--bn:7;--td:7s"></div>
    <div class="fx" data-fx="hearts" data-x="42" data-d="5.4" data-n="4"></div>
  </div>
  <div class="below">
    <div class="beats">
      <p class="beat" style="--d:.8s">Après de longues années, Rosalie revient auprès de Jeanne et décide de s'occuper d'elle.</p>
      <p class="beat" style="--d:3.8s">Plus pratique que sa maîtresse, elle comprend que la situation financière est devenue impossible.</p>
      <p class="beat" style="--d:6.6s">Elle la convainc de vendre le château. Les deux femmes s'installent dans une petite maison à Batteville.</p>
    </div>
    <aside class="side"><p class="retain"><b>À retenir</b>Rosalie, la servante trahie autrefois, devient le seul vrai soutien de Jeanne.</p><div class="mood"></div><button class="replay" type="button">Rejouer la scène</button></aside>
  </div>
</section>

<!-- ============ SCENE 7 ============ -->
<section class="scene" id="s7" data-end="8" hidden>
  <div class="head"><p class="kick"><span>Scène 7 / 7</span><span>Batteville</span><span class="time">repère 3:24 – 4:00</span></p><h2>Un nouvel espoir</h2></div>
  <div class="stage">
    <svg class="bg" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <defs><linearGradient id="sk7" x1="0" y1="0" x2="0" y2="1"><stop offset="0" stop-color="#8db6dc"/><stop offset="1" stop-color="#ffe9bf"/></linearGradient></defs>
      <rect width="800" height="400" fill="url(#sk7)"/>
    </svg>
    <div style="position:absolute;left:72%;bottom:6%;width:12%;aspect-ratio:1;animation:sun 8s ease-out forwards"><svg viewBox="0 0 100 100" style="display:block;width:100%;animation:spin 30s linear infinite" aria-hidden="true"><g stroke="#ffd36b" stroke-width="4" stroke-linecap="round"><path d="M50 4V16M50 84V96M4 50H16M84 50H96M17 17L25 25M75 75L83 83M83 17L75 25M25 75L17 83"/></g><circle cx="50" cy="50" r="24" fill="#ffe08a"/></svg></div>
    <svg class="bg" style="z-index:1" viewBox="0 0 800 400" preserveAspectRatio="xMidYMid slice" aria-hidden="true">
      <path d="M0 270Q220 236 440 268T800 252V400H0Z" fill="#7fb083"/>
      <path d="M0 314Q260 290 520 316T800 308V400H0Z" fill="#5f9667"/>
      <g transform="translate(40 250)"><rect y="40" width="100" height="62" fill="#e4dccd"/><path d="M-8 42L50-4L108 42Z" fill="#8b5a4a"/><rect x="72" y="4" width="12" height="28" fill="#a89a88"/><rect x="38" y="64" width="24" height="38" fill="#7a5a3e"/><rect x="10" y="56" width="18" height="18" fill="#f5d98b"/></g>
    </svg>
    <div class="actor" data-fig="jeannedark" style="left:34%"><div class="baby" style="animation:fade .5s 5.6s backwards"><svg viewBox="0 0 30 30"><ellipse cx="15" cy="20" rx="12" ry="8" fill="#fff"/><circle cx="15" cy="10" r="6.5" fill="#f3cfae"/><path d="M9 8Q15 1 21 8" fill="#c9953b"/></svg></div></div>
    <div class="actor mv l" data-fig="rosalie" style="--a0:112%;--a1:50%;--ad:4.4s;--ade:.5s;--an:9"><div class="baby" style="left:-16%;animation:fadeOut .3s 5.4s forwards"><svg viewBox="0 0 30 30"><ellipse cx="15" cy="20" rx="12" ry="8" fill="#fff"/><circle cx="15" cy="10" r="6.5" fill="#f3cfae"/><path d="M9 8Q15 1 21 8" fill="#c9953b"/></svg></div></div>
    <div class="fx" data-fx="hearts" data-x="34" data-d="5.8" data-n="5"></div>
    <div class="over" style="background:#16213a;opacity:.7;--to:0;animation:fadeOut 7s 0s forwards"></div>
    <div class="quote">« La vie, voyez-vous, ça n'est jamais si bon ni si mauvais qu'on croit. »<br><small style="font:400 .7rem var(--font-mono);opacity:.8">Rosalie, dernière phrase du roman</small></div>
  </div>
  <div class="below">
    <div class="beats">
      <p class="beat" style="--d:.8s">Jeanne vit dans ses souvenirs. À Paris, elle n'a pas retrouvé Paul : il est toujours endetté.</p>
      <p class="beat" style="--d:3.4s">Une lettre arrive. La compagne de Paul est morte en donnant naissance à une petite fille, et il demande l'aide de sa mère.</p>
      <p class="beat" style="--d:6s">Rosalie ramène l'enfant. Après tant de souffrances, Jeanne retrouve une raison d'espérer.</p>
    </div>
    <aside class="side"><p class="retain"><b>À retenir</b>La vie n'est ni tout à fait heureuse ni tout à fait malheureuse. Elle continue.</p><div class="mood"></div><button class="replay" type="button">Rejouer la scène</button></aside>
  </div>
</section>
</div>

<div class="nav"><div class="bar" id="bar"></div><div class="in">
  <button class="btn" id="prev" type="button">Précédent</button>
  <span class="pos" id="pos"></span><button class="btn" id="pause" type="button">Pause</button><button class="btn" id="rep" type="button" aria-label="Rejouer">↻</button>
  <button class="btn main" id="next" type="button">Commencer</button>
</div></div>
<script>
(function(){
var P={
  jeanne:{dress:1,body:'#4a6fa5',hair:'#5a3a2a',bun:1},
  jeannewed:{dress:1,body:'#f6f2ea',hair:'#5a3a2a',bun:1,veil:1,leg:'#d8d2c4'},
  jeannedark:{dress:1,body:'#3a4352',hair:'#6a5a52',bun:1},
  julien:{body:'#2c2a33',hair:'#2a2020',cravat:1},
  rosalie:{dress:1,body:'#8b6a4e',hair:'#3b2a22',apron:1,cap:1},
  rosaliepreg:{dress:1,body:'#8b6a4e',hair:'#3b2a22',apron:1,cap:1,belly:1},
  paul:{body:'#4c7a58',hair:'#c9953b'},
  comte:{body:'#5a2d2d',hair:'#3a3a3a',hat:1},
  baron:{body:'#6b5a46',hair:'#d9d9d9'},
  baronne:{dress:1,body:'#7b5a8a',hair:'#bdbdbd',bun:1}
};
function fig(o){
  var s=o.skin||'#f0c8a4',h=o.hair||'#4a2f22',b=o.body,l=o.leg||'#2a2a33',F=o.dress;
  function leg(c,x,sx){return '<g class="'+c+'"><rect x="'+x+'" y="88" width="6" height="28" rx="3" fill="'+l+'"/><ellipse cx="'+sx+'" cy="117" rx="5.6" ry="2.7" fill="#1c1a1f"/></g>'}
  function arm(c,x,hx){return '<g class="'+c+'"><rect x="'+x+'" y="36" width="7" height="30" rx="3.5" fill="'+b+'"/><rect x="'+x+'" y="60" width="7" height="3" fill="#000" opacity=".15"/><circle cx="'+hx+'" cy="68" r="3.7" fill="'+s+'"/></g>'}
  return '<svg viewBox="0 0 60 120" aria-hidden="true"><ellipse cx="30" cy="118.6" rx="19" ry="3.2" fill="#000" opacity=".2"/><g class="bob">'
  +((o.bun||F)?'<path d="M18 22Q15 5 30 4Q45 5 42 22L45 52Q30 47 15 52Z" fill="'+h+'"/>':'')
  +leg('legL',23,26)+leg('legR',31,34)+arm('armL',12,15.5)+arm('armR',41,44.5)
  +'<path class="dress" d="'+(F?'M20 34Q30 28 40 34L54 102Q30 108 6 102Z':'M19 34Q30 28 41 34L43 94H17Z')+'" fill="'+b+'"/>'
  +'<path d="'+(F?'M40 34L54 102Q45 105 37 105Z':'M33 34H41L43 94H33Z')+'" fill="#000" opacity=".15"/>'
  +'<path d="'+(F?'M20 34Q24 70 8 102L6 102Z':'M19 34L17 94H22Z')+'" fill="#fff" opacity=".12"/>'
  +(F?'<path d="M21 52Q30 56 39 52L40 57Q30 61 20 57Z" fill="#000" opacity=".16"/><path d="M24 33Q30 40 36 33" fill="none" stroke="#fff" stroke-width="2" opacity=".55"/>'
     :'<path d="M24 32L30 58L36 32L30 37Z" fill="#000" opacity=".22"/><circle cx="30" cy="62" r="1.1" fill="#d8c27a"/><circle cx="30" cy="72" r="1.1" fill="#d8c27a"/><circle cx="30" cy="82" r="1.1" fill="#d8c27a"/>')
  +(o.apron?'<path d="M22 56H38L42 102Q30 105 18 102Z" fill="#f4f1ea"/><path d="M22 56H38" stroke="#d8d2c4" stroke-width="2"/>':'')
  +'<path d="'+(F?'M20 34Q30 28 40 34L54 102Q30 108 6 102Z':'M19 34Q30 28 41 34L43 94H17Z')+'" fill="url(#shade)"/>'+(o.belly?'<ellipse cx="30" cy="70" rx="9" ry="8" fill="#f4f1ea"/>':'')
  +(o.cravat?'<path d="M26 32L30 44L34 32Z" fill="#f4f1ea"/>':'')
  +'<rect x="27" y="28" width="6" height="8" rx="2" fill="'+s+'"/><rect x="27" y="28" width="6" height="3" fill="#000" opacity=".12"/>'
  +'<g class="headg"><ellipse cx="19.2" cy="21.5" rx="1.8" ry="2.6" fill="'+s+'"/><ellipse cx="40.8" cy="21.5" rx="1.8" ry="2.6" fill="'+s+'"/><circle cx="30" cy="20" r="11" fill="'+s+'"/>'
  +'<path d="M30 31Q40 30 41 20Q39 28 30 29Z" fill="#000" opacity=".08"/>'
  +'<path d="M19 21Q18 6 30 6Q42 6 41 21Q37 12 30 13Q23 12 19 21Z" fill="'+h+'"/><path d="M24 8Q30 5 36 8" stroke="#fff" opacity=".25" stroke-width="1.4" fill="none"/>'
  +(o.bun?'<circle cx="30" cy="5" r="5" fill="'+h+'"/><circle cx="28.5" cy="3.6" r="1.8" fill="#fff" opacity=".2"/>':'')
  +(o.cap?'<path d="M19 15Q30 3 41 15Z" fill="#f4f1ea"/>':'')
  +(o.veil?'<path d="M17 18Q30 2 43 18L47 70Q30 60 13 70Z" fill="#fff" opacity=".55"/><circle cx="30" cy="8" r="2" fill="#f2d98b"/>':'')
  +(o.hat?'<rect x="20" y="-6" width="20" height="14" rx="2" fill="#1d1c22"/><rect x="15" y="6" width="30" height="4" rx="2" fill="#1d1c22"/><rect x="20" y="2" width="20" height="2.5" fill="#b3323b"/>':'')
  +'<circle cx="24.4" cy="25" r="2.3" fill="#e4776f" opacity=".3"/><circle cx="35.6" cy="25" r="2.3" fill="#e4776f" opacity=".3"/>'
  +'<path d="M23 17.6Q26 16.4 28.2 17.6M31.8 17.6Q34 16.4 37 17.6" stroke="'+h+'" stroke-width="1" fill="none" stroke-linecap="round"/>'
  +'<ellipse cx="26" cy="21" rx="2" ry="2.2" fill="#fff"/><ellipse cx="34" cy="21" rx="2" ry="2.2" fill="#fff"/><circle cx="26.2" cy="21.2" r="1.3" fill="#2a1d18"/><circle cx="34.2" cy="21.2" r="1.3" fill="#2a1d18"/><circle cx="26.6" cy="20.6" r=".45" fill="#fff"/><circle cx="34.6" cy="20.6" r=".45" fill="#fff"/>'
  +'<g class="lid" style="animation-delay:-'+(Math.random()*4).toFixed(1)+'s"><ellipse cx="26" cy="21" rx="2.5" ry="2.7" fill="'+s+'"/><ellipse cx="34" cy="21" rx="2.5" ry="2.7" fill="'+s+'"/></g>'+'<path d="M30 22Q31.6 25 29.6 26" stroke="#b98a68" stroke-width=".8" fill="none" stroke-linecap="round"/>'
  +'<path d="M27 29Q30 31.6 33 29" stroke="#a5524a" stroke-width="1.1" fill="none" stroke-linecap="round"/></g></g></svg>';
}
document.querySelectorAll('[data-fig]').forEach(function(el){
  el.insertAdjacentHTML('afterbegin',fig(P[el.dataset.fig]));
});

var HEART='<svg viewBox="0 0 24 24" class="heart" style="width:100%;display:block"><use href="#heart"/></svg>';
var COL=['#e0566b','#f2b84a','#6fb3d2','#8bc58f','#ffffff'];
document.querySelectorAll('[data-fx]').forEach(function(el){
  var t=el.dataset.fx,d=parseFloat(el.dataset.d||0),n,k,e;
  if(t==='hearts'){
    var x=parseFloat(el.dataset.x||40);n=+el.dataset.n||5;
    for(k=0;k<n;k++){e=document.createElement('div');e.className='fl';
      e.style.left=(x+k*2.4)+'%';e.style.bottom=(48+(k%3)*3)+'%';
      e.style.setProperty('--d',(d+k*.55).toFixed(2)+'s');e.innerHTML=HEART;el.appendChild(e)}
  }else if(t==='confetti'){
    for(k=0;k<30;k++){e=document.createElement('i');e.className='cf';
      e.style.left=((k*37)%100)+'%';e.style.background=COL[k%COL.length];
      e.style.setProperty('--d',(d+(k%10)*.28).toFixed(2)+'s');el.appendChild(e)}
  }else if(t==='snow'){
    for(k=0;k<40;k++){e=document.createElement('i');e.className='sn';
      e.style.left=((k*29)%100)+'%';
      e.style.setProperty('--t',(5+k%5)+'s');e.style.setProperty('--d','-'+((k%9)*.7).toFixed(1)+'s');el.appendChild(e)}
  }
});

var V=[88,52,14,38,12,22,64];
function mood(k){
  var w=280,h=96,px=18;
  function X(i){return px+i*(w-2*px)/6}
  function Y(v){return h-18-(v/100)*(h-34)}
  var pts=V.map(function(v,i){return X(i).toFixed(1)+','+Y(v).toFixed(1)});
  var s='<small>Les illusions de Jeanne, lecture personnelle</small>'
   +'<svg viewBox="0 0 '+w+' '+h+'" role="img" aria-label="Courbe des illusions de Jeanne, scène '+(k+1)+' sur 7">'
   +'<text x="0" y="8">espoir</text>'
   +'<polyline points="'+pts.join(' ')+'" fill="none" stroke="var(--line)" stroke-width="2"/>'
   +'<polyline points="'+pts.slice(0,k+1).join(' ')+'" fill="none" stroke="var(--accent)" stroke-width="2.5" stroke-linejoin="round"/>';
  V.forEach(function(v,i){
    var on=i<=k;
    s+='<circle cx="'+X(i)+'" cy="'+Y(v)+'" r="'+(i===k?5.5:3.2)+'" fill="'+(on?'var(--accent)':'var(--panel)')+'" stroke="'+(on?'var(--accent)':'var(--line)')+'" stroke-width="2"/>'
      +'<text x="'+X(i)+'" y="'+(h-4)+'" text-anchor="middle">'+(i+1)+'</text>';
  });
  return s+'</svg>';
}

var scenes=[].slice.call(document.querySelectorAll('.scene'));
var intro=document.getElementById('intro'),prev=document.getElementById('prev'),next=document.getElementById('next'),pos=document.getElementById('pos'),dots=document.getElementById('dots');
var cur=-1;
scenes.forEach(function(s,k){
  s.querySelector('.mood').innerHTML=mood(k);
  s.querySelector('.replay').addEventListener('click',function(){replay()});
  var b=document.createElement('button');b.type='button';b.setAttribute('aria-label','Scène '+(k+1));
  b.addEventListener('click',function(){go(k)});dots.appendChild(b);
});

var SK=[['#a9d3e8','#62a06c'],['#f3cfe0','#7bb485'],['#3b4166','#2a2030'],['#b6dbea','#6fa6b8'],['#aecfdd','#62a06c'],['#7f8fb8','#5f9667'],['#8db6dc','#5f9667']];
function tree(x,y,z,c){return '<g transform="translate('+x+' '+y+') scale('+z+')"><ellipse cx="0" cy="36" rx="22" ry="4" fill="#000" opacity=".15"/><rect x="-3" y="4" width="6" height="32" fill="#6b4a32"/><circle cx="0" cy="-6" r="22" fill="'+c+'"/><circle cx="-14" cy="8" r="16" fill="'+c+'"/><circle cx="14" cy="8" r="16" fill="'+c+'"/><circle cx="-6" cy="-12" r="11" fill="#fff" opacity=".12"/><circle cx="12" cy="10" r="12" fill="#000" opacity=".1"/></g>'}
function cloud(x,y,z,t,d){return '<g class="cloud" style="--t:'+t+'s;animation-delay:-'+d+'s"><g transform="translate('+x+' '+y+') scale('+z+')" fill="#fff"><ellipse cx="0" cy="0" rx="40" ry="11"/><ellipse cx="-16" cy="-8" rx="20" ry="12"/><ellipse cx="12" cy="-11" rx="24" ry="14"/></g></g>'}
function flowers(y,n,cols){var s='',i;for(i=0;i<n;i++)s+='<circle cx="'+((i*97)%790+5)+'" cy="'+(y+(i*53)%60)+'" r="2.2" fill="'+cols[i%cols.length]+'"/>';return s}
var DK=[
 function(){return cloud(60,50,1,100,10)+cloud(380,34,1.4,130,60)+'<g class="bird" fill="none" stroke="#3a4a58" stroke-width="1.6"><path d="M0 70q5-6 10 0q5-6 10 0"/><path d="M26 82q4-5 8 0q4-5 8 0"/></g>'+tree(40,252,1.2,'#4f8a5b')+tree(230,262,.9,'#5b9a63')+tree(760,270,1.3,'#4f8a5b')+flowers(330,40,['#fff','#f2b84a','#e0566b'])},
 function(){return cloud(120,44,1.2,110,20)+cloud(520,60,1,90,50)+tree(30,262,1.2,'#7fb482')+tree(740,255,1.2,'#8cc08f')+flowers(320,44,['#fff','#e8a0bf','#f7d27a'])+'<g fill="#f6cadb">'+[5,17,29,41,53,64].map(function(i){return '<ellipse class="tw" style="animation-delay:-'+i/9+'s" cx="'+(i*12)+'" cy="'+(150+i*3)+'" rx="3" ry="1.6"/>'}).join('')+'</g>'},
 function(){var s='',i;for(i=0;i<34;i++)s+='<circle class="tw" style="animation-delay:-'+(i%7)*.4+'s" cx="'+((i*131)%800)+'" cy="'+((i*47)%190)+'" r="'+(1+(i%3)*.5)+'" fill="#fff"/>';return s+'<circle cx="153" cy="106" r="60" fill="#f3efc9" opacity=".12"/><circle cx="640" cy="205" r="90" fill="#ffd9a0" opacity=".1"/>'},
 function(){return cloud(100,60,1.2,100,30)+cloud(560,40,1,120,70)+'<g class="bird" fill="none" stroke="#fff" stroke-width="1.8"><path d="M0 110q5-6 10 0q5-6 10 0"/><path d="M30 124q4-5 8 0q4-5 8 0"/></g>'+'<g stroke="#fff" stroke-width="2" opacity=".6" stroke-linecap="round">'+[0,1,2,3,4,5,6,7,8,9].map(function(i){return '<path class="sh" style="animation-delay:-'+i*.3+'s" d="M'+(40+i*70)+' '+(250+(i%4)*14)+'h'+(20+i%3*8)+'"/>'}).join('')+'</g>'},
 function(){return cloud(140,56,1.2,110,10)+cloud(600,48,1,100,55)+'<g stroke="#fff" stroke-width="2" opacity=".55" stroke-linecap="round">'+[0,1,2,3,4,5,6,7,8].map(function(i){return '<path class="sh" style="animation-delay:-'+i*.35+'s" d="M'+(30+i*80)+' '+(215+(i%4)*14)+'h'+(18+i%3*8)+'"/>'}).join('')+'</g>'},
 function(){return cloud(80,50,1.1,120,40)+tree(20,268,1.3,'#5f9667')+tree(300,272,.8,'#6aa572')+flowers(335,30,['#fff','#f2b84a'])},
 function(){return cloud(250,52,1.2,110,30)+tree(300,278,1,'#5f9667')+tree(770,280,1.2,'#4f8a5b')+'<circle cx="500" cy="300" r="180" fill="#ffe3a0" opacity=".14"/>'+flowers(340,40,['#fff','#e8a0bf','#f7d27a'])}
];
var SUN=[[690,70],[620,-30],null,[150,-40],[100,-30],[500,-30],[600,60]];
var GL=['radial-gradient(circle at 86% 18%,rgba(255,236,170,.6),transparent 50%)','radial-gradient(circle at 75% 0,rgba(255,210,225,.5),transparent 55%)','radial-gradient(circle at 20% 28%,rgba(150,185,255,.45),transparent 45%)','radial-gradient(circle at 20% 0,rgba(255,240,210,.5),transparent 55%)','radial-gradient(circle at 20% 0,rgba(255,240,210,.5),transparent 55%)','radial-gradient(circle at 60% 100%,rgba(255,170,120,.55),transparent 55%)','radial-gradient(circle at 72% 30%,rgba(255,220,150,.55),transparent 55%)'];
function waves(rows){var s='';rows.forEach(function(y,r){var d='M-100 '+y,i;for(i=0;i<12;i++)d+='q25 -7 50 0t50 0';s+='<g class="wv" style="animation-delay:-'+r*1.3+'s;animation-duration:'+(5+r)+'s"><path d="'+d+'" fill="none" stroke="#fff" stroke-width="2" opacity="'+(.5-r*.1)+'"/></g>'});return s}
function RY(k){var s='',i,q=SUN[k];
 if(q)for(i=0;i<5;i++){var x=q[0]-300+i*130;s+='<polygon class="tw" style="animation-duration:'+(5+i)+'s;animation-delay:-'+i+'s" points="'+q[0]+','+q[1]+' '+x+',400 '+(x+70)+',400" fill="#fff" fill-opacity=".1"/>'}
 if(k===3)s+=waves([246,262,278]);if(k===4)s+=waves([196,204,212]);
 for(i=0;i<14;i++)s+='<circle class="mote" style="animation-delay:-'+(i*.7).toFixed(1)+'s" cx="'+((i*149)%780+10)+'" cy="'+(150+(i*61)%220)+'" r="'+(k===2?2.2:1.5)+'" fill="'+(k===2?'#ffe9a0':'#fff')+'"/>';
 return s}
function FG(k){if(k===2||k===3)return '';var s='<svg class="bg fgs" viewBox="0 0 800 400" aria-hidden="true">',i,c=['#3f7a4a','#4f8a5b','#356a40','#5b9a63'];
 for(i=0;i<52;i++){var x=(i*47)%810,h=14+(i*7)%20,d=(i%2?5:-5);s+='<g class="gr" style="animation-delay:-'+(i*.23).toFixed(2)+'s"><path d="M'+x+' 403Q'+(x+2)+' '+(403-h/2)+' '+(x+d)+' '+(403-h)+'L'+(x+5)+' 403Z" fill="'+c[i%4]+'"/></g>'}
 return s+'</svg>'}
function decorate(){scenes.forEach(function(s,k){var st=s.querySelector('.stage');
  s.style.setProperty('--sk',SK[k][0]);s.style.setProperty('--gr',SK[k][1]);
  st.insertAdjacentHTML('beforeend','<svg class="bg deco" viewBox="0 0 800 400" aria-hidden="true">'+DK[k]()+RY(k)+'</svg>'+FG(k)+'<div class="glow" style="background:'+GL[k]+'"></div><div class="vig"></div>');})}
decorate();
var bar=document.getElementById('bar'),pauseB=document.getElementById('pause'),repB=document.getElementById('rep'),ba=null,auto=true,DUR=34000;
function retime(){
  var s=scenes[cur];if(!s)return;
  var K=DUR/1000/(+s.dataset.end||10);
  s.querySelectorAll('.beat').forEach(function(b,i,all){b.style.animation=(i===all.length-1?'capL':'cap')+' 11.3s linear '+(i*11.3)+'s both'});
  document.getAnimations().forEach(function(a){
    var el=a.effect&&a.effect.target;if(!el||!s.contains(el)||el.closest('.beat,.side'))return;
    var t=a.effect.getTiming(),n=a.animationName,u={delay:t.delay*K};
    if(n==='stepL'||n==='stepR'){if(isFinite(t.iterations)){u.duration=800;u.iterations=t.iterations*500*K/800}}
    else if(isFinite(t.iterations)&&typeof t.duration==='number')u.duration=t.duration*K;
    a.effect.updateTiming(u);
  });
  if(ba)ba.cancel();
  ba=bar.animate([{width:'0%'},{width:'100%'}],{duration:DUR,fill:'forwards'});
  ba.onfinish=function(){if(auto&&cur>=0&&cur<scenes.length-1)go(cur+1)};
  if(!auto)setPlay(false);
}
function setPlay(on){auto=on;pauseB.textContent=on?'Pause':'Lecture';
  if(ba){on?ba.play():ba.pause()}
  if(cur>=0)document.getAnimations().forEach(function(a){var el=a.effect&&a.effect.target;if(el&&scenes[cur].contains(el)){on?a.play():a.pause()}});}
function replay(){var s=scenes[cur];if(!s)return;s.hidden=true;void s.offsetWidth;s.hidden=false;retime()}
pauseB.addEventListener('click',function(){setPlay(!auto)});
repB.addEventListener('click',replay);
function go(n){
  cur=Math.max(-1,Math.min(scenes.length-1,n));
  intro.hidden=cur!==-1;
  scenes.forEach(function(s,k){s.hidden=k!==cur});
  [].forEach.call(dots.children,function(b,k){b.className=k===cur?'on':(k<cur?'done':'')});
  prev.disabled=cur<0;
  next.textContent=cur<0?'Commencer':(cur===scenes.length-1?'Recommencer':'Suivant');
  pos.textContent=cur<0?'Présentation':(cur+1)+' / 7';
  try{location.hash=cur<0?'intro':'scene-'+(cur+1)}catch(e){}
  document.body.classList.toggle('playing',cur>=0);
  pauseB.hidden=repB.hidden=cur<0;
  if(cur>=0){auto=auto;retime()}else if(ba)ba.cancel();
  window.scrollTo(0,0);
}
prev.addEventListener('click',function(){go(cur-1)});
next.addEventListener('click',function(){if(cur===-1)auto=true;go(cur===scenes.length-1?-1:cur+1)});
document.addEventListener('keydown',function(e){
  if(e.key==='ArrowRight')go(cur+1);else if(e.key==='ArrowLeft')go(cur-1);
});
function fromHash(){
  var m=/^#scene-([1-7])$/.exec(location.hash),n=m?+m[1]-1:-1;
  if(n!==cur)go(n);
}
window.addEventListener('hashchange',fromHash);
fromHash();if(cur===-1)go(-1);
})();
</script>

</body></html>

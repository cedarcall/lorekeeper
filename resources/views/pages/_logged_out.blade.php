<style>
    .homepage-container {
        position: relative;
        min-height: 100vh;
        background: #0a0e1a;
        overflow: hidden;
    }

    .homepage-container::before {
        content: '';
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-image: 
            radial-gradient(circle at 15% 40%, rgba(0, 200, 180, 0.05) 0%, transparent 25%),
            radial-gradient(circle at 85% 70%, rgba(0, 120, 150, 0.04) 0%, transparent 30%),
            repeating-linear-gradient(
                0deg,
                rgba(0, 150, 180, 0.015) 0px,
                rgba(0, 150, 180, 0.015) 1px,
                transparent 1px,
                transparent 2px
            ),
            repeating-linear-gradient(
                90deg,
                rgba(0, 150, 180, 0.01) 0px,
                rgba(0, 150, 180, 0.01) 1px,
                transparent 1px,
                transparent 2px
            );
        pointer-events: none;
        z-index: 0;
    }

    .homepage-container::after {
        content: '';
        position: fixed;
        top: 0;
        left: 0;
        width: 400px;
        height: 400px;
        background: radial-gradient(circle, rgba(0, 255, 200, 0.15) 0%, transparent 70%);
        filter: blur(40px);
        z-index: 0;
        pointer-events: none;
    }

    .content-wrapper {
        position: relative;
        z-index: 2;
        padding: 80px 40px;
        max-width: 900px;
        margin: 0 auto;
    }

    .decorative-line-bottom {
        position: fixed;
        bottom: 150px;
        left: 0;
        right: 0;
        height: 2px;
        background: linear-gradient(90deg, 
            transparent, 
            #00ccff, 
            #00ccff, 
            #00ccff, 
            transparent);
        box-shadow: 0 0 30px rgba(0, 204, 255, 0.9);
        z-index: 1;
    }

    .circuit-element-left {
        position: fixed;
        left: -100px;
        top: 20%;
        width: 500px;
        height: 500px;
        background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 500"><defs><filter id="glow"><feGaussianBlur stdDeviation="2" result="coloredBlur"/><feMerge><feMergeNode in="coloredBlur"/><feMergeNode in="SourceGraphic"/></feMerge></filter></defs><circle cx="100" cy="150" r="80" stroke="%2300ffcc" stroke-width="2" fill="none" filter="url(%23glow)"/><path d="M 180 150 L 300 150 M 300 100 L 300 200" stroke="%2300ffcc" stroke-width="1.5" fill="none" opacity="0.8"/><circle cx="100" cy="280" r="40" stroke="%2300ccff" stroke-width="1" fill="none" opacity="0.6"/><path d="M 140 280 L 200 280 L 200 350" stroke="%2300ccff" stroke-width="1" fill="none" opacity="0.6"/><rect x="50" y="350" width="100" height="100" stroke="%2300ffcc" stroke-width="1" fill="none" opacity="0.5"/></svg>') no-repeat center;
        opacity: 0.25;
        z-index: 0;
    }

    .circuit-element-right {
        position: fixed;
        right: -150px;
        bottom: -50px;
        width: 600px;
        height: 600px;
        background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 500"><defs><filter id="glow"><feGaussianBlur stdDeviation="2" result="coloredBlur"/><feMerge><feMergeNode in="coloredBlur"/><feMergeNode in="SourceGraphic"/></feMerge></filter></defs><circle cx="100" cy="100" r="4" fill="%2300ffcc" filter="url(%23glow)"/><line x1="100" y1="100" x2="180" y2="150" stroke="%2300ffcc" stroke-width="1.5"/><circle cx="180" cy="150" r="4" fill="%2300ffcc" filter="url(%23glow)"/><line x1="180" y1="150" x2="100" y2="220" stroke="%2300ffcc" stroke-width="1.5"/><circle cx="100" cy="220" r="4" fill="%2300ffcc" filter="url(%23glow)"/><line x1="100" y1="220" x2="250" y2="200" stroke="%2300ccff" stroke-width="1"/><circle cx="250" cy="200" r="6" fill="none" stroke="%2300ccff" stroke-width="1.5" filter="url(%23glow)"/><line x1="250" y1="200" x2="350" y2="280" stroke="%2300ccff" stroke-width="1"/><circle cx="350" cy="280" r="3" fill="%2300ccff" filter="url(%23glow)"/><path d="M 150 350 L 150 450 L 250 450 L 250 350" stroke="%2300ffcc" stroke-width="1" fill="none" opacity="0.7"/></svg>') no-repeat center;
        opacity: 0.3;
        z-index: 0;
    }

    .glowing-box {
        position: relative;
        background: rgba(10, 20, 40, 0.7);
        border: 2px solid #00ccff;
        box-shadow: 0 0 25px rgba(0, 204, 255, 0.6), 
                    inset 0 0 25px rgba(0, 204, 255, 0.08);
        padding: 50px 60px;
        margin: 40px 0;
        animation: pulse-glow 4s ease-in-out infinite;
        backdrop-filter: blur(10px);
    }

    .wide-text-box {
        position: relative;
        background: rgba(10, 20, 40, 0.7);
        border: 2px solid #00ccff;
        box-shadow: 0 0 25px rgba(0, 204, 255, 0.6), 
                    inset 0 0 25px rgba(0, 204, 255, 0.08);
        padding: 40px 50px;
        margin: 40px 0;
        animation: pulse-glow 4s ease-in-out infinite;
        backdrop-filter: blur(10px);
    }

    @keyframes pulse-glow {
        0%, 100% {
            box-shadow: 0 0 25px rgba(0, 204, 255, 0.6), 
                        inset 0 0 25px rgba(0, 204, 255, 0.08);
        }
        50% {
            box-shadow: 0 0 40px rgba(0, 204, 255, 0.8), 
                        inset 0 0 40px rgba(0, 204, 255, 0.15);
        }
    }

    .homepage-container h1 {
        font-size: 3.2em;
        font-weight: 300;
        letter-spacing: 3px;
        color: #00ccff;
        text-shadow: 0 0 20px rgba(0, 204, 255, 0.9),
                     0 0 40px rgba(0, 180, 255, 0.5);
        margin-bottom: 30px;
        text-transform: uppercase;
        border-bottom: 2px solid #00ccff;
        padding-bottom: 25px;
    }

    .homepage-container h1::before {
        content: '> ';
        color: #00ccff;
        animation: blink 1s infinite;
        margin-right: 10px;
    }

    @keyframes blink {
        0%, 49%, 100% { opacity: 1; }
        50%, 99% { opacity: 0; }
    }

    .content-text {
        color: #c8d8e8;
        line-height: 1.9;
        font-size: 1.05em;
        letter-spacing: 0.4px;
    }

    .content-text p {
        margin-bottom: 18px;
        text-shadow: 0 0 10px rgba(0, 255, 200, 0.2);
    }

    .corner-accent {
        position: fixed;
        z-index: 0;
    }

    .corner-tl {
        top: 30px;
        left: 30px;
        width: 120px;
        height: 120px;
        border-top: 3px solid #00ccff;
        border-left: 3px solid #00ccff;
        box-shadow: 0 0 20px rgba(0, 204, 255, 0.8);
    }

    .corner-tr {
        top: 30px;
        right: 30px;
        width: 120px;
        height: 120px;
        border-top: 3px solid #00ccff;
        border-right: 3px solid #00ccff;
        box-shadow: 0 0 20px rgba(0, 204, 255, 0.8);
    }

    .corner-bl {
        bottom: 30px;
        left: 30px;
        width: 120px;
        height: 120px;
        border-bottom: 3px solid #00ccff;
        border-left: 3px solid #00ccff;
        box-shadow: 0 0 20px rgba(0, 204, 255, 0.8);
    }

    .corner-br {
        bottom: 30px;
        right: 30px;
        width: 120px;
        height: 120px;
        border-bottom: 3px solid #00ccff;
        border-right: 3px solid #00ccff;
        box-shadow: 0 0 20px rgba(0, 204, 255, 0.8);
    }
</style>

<div class="homepage-container">
    <div class="decorative-line-bottom"></div>
    <div class="circuit-element-left"></div>
    <div class="circuit-element-right"></div>
    
    <div class="corner-accent corner-tl"></div>
    <div class="corner-accent corner-tr"></div>
    <div class="corner-accent corner-bl"></div>
    <div class="corner-accent corner-br"></div>

    <div class="content-wrapper">
        <div class="glowing-box">
            <h1>Dreadfarer</h1>
            <div class="content-text">
                <p>Dreadfarer is a space-themed, semi-closed species ARPG set across countless worlds and fractured star systems.</p>
                <p>Through monthly events and open-ended creative prompts, players can chart their own paths, develop characters, and uncover the histories of distant planets scattered throughout the galaxies.</p>
                <p>There are no activity requirements here. Whether you want to dive headfirst into deep lore and long-form storytelling, or simply linger at the edge of the universe and observe, you're welcome among the stars.</p>
            </div>
        </div>

        <div class="wide-text-box">
            <div class="content-text">
                <p><strong>Welcome to the stars, traveler.</strong></p>
                <p>Looks like you were picked up drifting between jump lanes—cold, silent, and very far from home. Lucky for you, a Port Artemis recovery crew was passing through. Happens more often than you'd think.</p>
                <p>Take a breath. You're safe now.</p>
                <p>Port Artemis is a crossroads of the galaxy: a place to rest, rebuild, and decide where your story goes next. Follow the glowing terminal beacons and you'll find food, shelter, contracts, and answers— at least, the kind this place is willing to give.</p>
            </div>
        </div>
    </div>
</div>